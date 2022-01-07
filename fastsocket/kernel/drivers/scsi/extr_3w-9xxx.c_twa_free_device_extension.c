
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * event_queue; int * generic_buffer_phys; scalar_t__* generic_buffer_virt; int tw_pci_dev; int * command_packet_phys; scalar_t__* command_packet_virt; } ;
typedef TYPE_1__ TW_Device_Extension ;
typedef int TW_Command_Full ;


 int TW_Q_LENGTH ;
 int TW_SECTOR_SIZE ;
 int kfree (int ) ;
 int pci_free_consistent (int ,int,scalar_t__,int ) ;

__attribute__((used)) static void twa_free_device_extension(TW_Device_Extension *tw_dev)
{
 if (tw_dev->command_packet_virt[0])
  pci_free_consistent(tw_dev->tw_pci_dev,
        sizeof(TW_Command_Full)*TW_Q_LENGTH,
        tw_dev->command_packet_virt[0],
        tw_dev->command_packet_phys[0]);

 if (tw_dev->generic_buffer_virt[0])
  pci_free_consistent(tw_dev->tw_pci_dev,
        TW_SECTOR_SIZE*TW_Q_LENGTH,
        tw_dev->generic_buffer_virt[0],
        tw_dev->generic_buffer_phys[0]);

 kfree(tw_dev->event_queue[0]);
}
