
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int DEBUG2 (int ) ;
 int FA_FLASH_LAYOUT_ADDR_82 ;
 int KERN_INFO ;
 int QLA_SUCCESS ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,char const*,int ) ;

__attribute__((used)) static int
qla4_8xxx_find_flt_start(struct scsi_qla_host *ha, uint32_t *start)
{
 const char *loc, *locations[] = { "DEF", "PCI" };






 loc = locations[0];
 *start = FA_FLASH_LAYOUT_ADDR_82;

 DEBUG2(ql4_printk(KERN_INFO, ha, "FLTL[%s] = 0x%x.\n", loc, *start));
 return QLA_SUCCESS;
}
