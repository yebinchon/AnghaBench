
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct fw_ohci {int node_id; int* self_id_buffer; int generation; int request_generation; TYPE_1__ card; int lock; int next_header; int * config_rom; int * next_config_rom; int next_config_rom_bus; int config_rom_bus; scalar_t__ bus_reset_packet_quirk; int at_response_ctx; int at_request_ctx; int * self_id_cpu; } ;
typedef int dma_addr_t ;


 int CONFIG_ROM_SIZE ;
 int OHCI1394_BusOptions ;
 int OHCI1394_ConfigROMhdr ;
 int OHCI1394_IntEventClear ;
 int OHCI1394_NodeID ;
 int OHCI1394_NodeID_busNumber ;
 int OHCI1394_NodeID_idValid ;
 int OHCI1394_NodeID_nodeNumber ;
 int OHCI1394_PhyReqFilterHiSet ;
 int OHCI1394_PhyReqFilterLoSet ;
 int OHCI1394_SelfIDCount ;
 int OHCI1394_SelfIDCount_selfIDError ;
 int OHCI1394_busReset ;
 int be32_to_cpu (int ) ;
 int cond_le32_to_cpu (int ) ;
 int context_stop (int *) ;
 int cpu_to_be32 (int ) ;
 int dma_free_coherent (int ,int ,void*,int ) ;
 int fw_core_handle_bus_reset (TYPE_1__*,int,int,int,int*) ;
 int fw_notify (char*) ;
 int log_selfids (int,int,int,int*) ;
 int reg_read (struct fw_ohci*,int ) ;
 int reg_write (struct fw_ohci*,int ,int ) ;
 int rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bus_reset_tasklet(unsigned long data)
{
 struct fw_ohci *ohci = (struct fw_ohci *)data;
 int self_id_count, i, j, reg;
 int generation, new_generation;
 unsigned long flags;
 void *free_rom = ((void*)0);
 dma_addr_t free_rom_bus = 0;

 reg = reg_read(ohci, OHCI1394_NodeID);
 if (!(reg & OHCI1394_NodeID_idValid)) {
  fw_notify("node ID not valid, new bus reset in progress\n");
  return;
 }
 if ((reg & OHCI1394_NodeID_nodeNumber) == 63) {
  fw_notify("malconfigured bus\n");
  return;
 }
 ohci->node_id = reg & (OHCI1394_NodeID_busNumber |
          OHCI1394_NodeID_nodeNumber);

 reg = reg_read(ohci, OHCI1394_SelfIDCount);
 if (reg & OHCI1394_SelfIDCount_selfIDError) {
  fw_notify("inconsistent self IDs\n");
  return;
 }






 self_id_count = (reg >> 3) & 0xff;
 if (self_id_count == 0 || self_id_count > 252) {
  fw_notify("inconsistent self IDs\n");
  return;
 }
 generation = (cond_le32_to_cpu(ohci->self_id_cpu[0]) >> 16) & 0xff;
 rmb();

 for (i = 1, j = 0; j < self_id_count; i += 2, j++) {
  if (ohci->self_id_cpu[i] != ~ohci->self_id_cpu[i + 1]) {
   fw_notify("inconsistent self IDs\n");
   return;
  }
  ohci->self_id_buffer[j] =
    cond_le32_to_cpu(ohci->self_id_cpu[i]);
 }
 rmb();
 new_generation = (reg_read(ohci, OHCI1394_SelfIDCount) >> 16) & 0xff;
 if (new_generation != generation) {
  fw_notify("recursive bus reset detected, "
     "discarding self ids\n");
  return;
 }


 spin_lock_irqsave(&ohci->lock, flags);

 ohci->generation = generation;
 context_stop(&ohci->at_request_ctx);
 context_stop(&ohci->at_response_ctx);
 reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);

 if (ohci->bus_reset_packet_quirk)
  ohci->request_generation = generation;
 if (ohci->next_config_rom != ((void*)0)) {
  if (ohci->next_config_rom != ohci->config_rom) {
   free_rom = ohci->config_rom;
   free_rom_bus = ohci->config_rom_bus;
  }
  ohci->config_rom = ohci->next_config_rom;
  ohci->config_rom_bus = ohci->next_config_rom_bus;
  ohci->next_config_rom = ((void*)0);







  reg_write(ohci, OHCI1394_BusOptions,
     be32_to_cpu(ohci->config_rom[2]));
  ohci->config_rom[0] = cpu_to_be32(ohci->next_header);
  reg_write(ohci, OHCI1394_ConfigROMhdr, ohci->next_header);
 }






 spin_unlock_irqrestore(&ohci->lock, flags);

 if (free_rom)
  dma_free_coherent(ohci->card.device, CONFIG_ROM_SIZE,
      free_rom, free_rom_bus);

 log_selfids(ohci->node_id, generation,
      self_id_count, ohci->self_id_buffer);

 fw_core_handle_bus_reset(&ohci->card, ohci->node_id, generation,
     self_id_count, ohci->self_id_buffer);
}
