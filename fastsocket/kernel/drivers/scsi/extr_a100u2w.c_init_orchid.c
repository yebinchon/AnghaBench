
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct orc_host {int* target_flag; scalar_t__ base; int flags; int * max_tags; int max_targets; int BIOScfg; int scsi_id; } ;
struct TYPE_2__ {int revision; int SCSI0Config; int Target00Config; int BIOSConfig1; int scsi_id; } ;


 int DEVRST ;
 int HCF_SCSI_RESET ;
 int HDO ;
 int MAX_TARGETS ;
 int NCC_BUSRESET ;
 scalar_t__ ORC_GIMSK ;
 scalar_t__ ORC_HCTRL ;
 scalar_t__ ORC_HSTUS ;
 int ORC_MAXTAGS ;
 int RREADY ;
 int inb (scalar_t__) ;
 int init_alloc_map (struct orc_host*) ;
 TYPE_1__* nvramp ;
 int orc_load_firmware (struct orc_host*) ;
 int orc_read_fwrev (struct orc_host*) ;
 int outb (int,scalar_t__) ;
 int read_eeprom (struct orc_host*) ;
 int setup_SCBs (struct orc_host*) ;
 scalar_t__ wait_chip_ready (struct orc_host*) ;
 scalar_t__ wait_firmware_ready (struct orc_host*) ;

__attribute__((used)) static int init_orchid(struct orc_host * host)
{
 u8 *ptr;
 u16 revision;
 u8 i;

 init_alloc_map(host);
 outb(0xFF, host->base + ORC_GIMSK);

 if (inb(host->base + ORC_HSTUS) & RREADY) {
  revision = orc_read_fwrev(host);
  if (revision == 0xFFFF) {
   outb(DEVRST, host->base + ORC_HCTRL);
   if (wait_chip_ready(host) == 0)
    return -1;
   orc_load_firmware(host);
   setup_SCBs(host);
   outb(0x00, host->base + ORC_HCTRL);
   if (wait_firmware_ready(host) == 0)
    return -1;

  } else {
   setup_SCBs(host);
  }
 } else {
  outb(DEVRST, host->base + ORC_HCTRL);
  if (wait_chip_ready(host) == 0)
   return -1;
  orc_load_firmware(host);
  setup_SCBs(host);
  outb(HDO, host->base + ORC_HCTRL);


  if (wait_firmware_ready(host) == 0)
   return -1;
 }



 read_eeprom(host);

 if (nvramp->revision != 1)
  return -1;

 host->scsi_id = nvramp->scsi_id;
 host->BIOScfg = nvramp->BIOSConfig1;
 host->max_targets = MAX_TARGETS;
 ptr = (u8 *) & (nvramp->Target00Config);
 for (i = 0; i < 16; ptr++, i++) {
  host->target_flag[i] = *ptr;
  host->max_tags[i] = ORC_MAXTAGS;
 }

 if (nvramp->SCSI0Config & NCC_BUSRESET)
  host->flags |= HCF_SCSI_RESET;
 outb(0xFB, host->base + ORC_GIMSK);
 return 0;
}
