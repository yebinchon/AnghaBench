
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int bank; int status; int addr; } ;
struct cper_sec_mem_err {int physical_addr; } ;


 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_EN ;
 int MCI_STATUS_VAL ;
 int mce_log (struct mce*) ;
 int mce_notify_irq () ;
 int mce_setup (struct mce*) ;

void apei_mce_report_mem_error(int corrected, struct cper_sec_mem_err *mem_err)
{
 struct mce m;


 if (!corrected)
  return;

 mce_setup(&m);
 m.bank = 1;

 m.status = MCI_STATUS_VAL | MCI_STATUS_EN | MCI_STATUS_ADDRV | 0x9f;
 m.addr = mem_err->physical_addr;
 mce_log(&m);
 mce_notify_irq();
}
