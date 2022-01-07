
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtas_error_log {int dummy; } ;
struct pt_regs {unsigned long* gpr; } ;
struct TYPE_2__ {unsigned long base; int size; } ;


 int RTAS_ERROR_LOG_MAX ;
 unsigned long* __va (unsigned long) ;
 scalar_t__ mce_data_buf ;
 int memcpy (scalar_t__,char*,int ) ;
 int memset (scalar_t__,int ,int ) ;
 int printk (char*) ;
 TYPE_1__ rtas ;

__attribute__((used)) static struct rtas_error_log *fwnmi_get_errinfo(struct pt_regs *regs)
{
 unsigned long errdata = regs->gpr[3];
 struct rtas_error_log *errhdr = ((void*)0);
 unsigned long *savep;

 if ((errdata >= 0x7000 && errdata < 0x7fff0) ||
     (errdata >= rtas.base && errdata < rtas.base + rtas.size - 16)) {
  savep = __va(errdata);
  regs->gpr[3] = savep[0];
  memset(mce_data_buf, 0, RTAS_ERROR_LOG_MAX);
  memcpy(mce_data_buf, (char *)(savep + 1), RTAS_ERROR_LOG_MAX);
  errhdr = (struct rtas_error_log *)mce_data_buf;
 } else {
  printk("FWNMI: corrupt r3\n");
 }
 return errhdr;
}
