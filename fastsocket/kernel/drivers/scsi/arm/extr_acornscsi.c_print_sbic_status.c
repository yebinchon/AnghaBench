
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASR_BSY ;
 int ASR_CIP ;
 int ASR_DBR ;
 int ASR_INT ;
 int ASR_LCI ;
 int ASR_PE ;
 int print_scsi_status (int) ;
 int printk (char*,...) ;

__attribute__((used)) static
void print_sbic_status(int asr, int ssr, int cmdphase)
{
    printk("sbic: %02X scsi: %X:%X ph: %02X\n",
     asr, (ssr & 0xf0)>>4, ssr & 0x0f, cmdphase);

}
