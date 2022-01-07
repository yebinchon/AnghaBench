
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int init_error; int device_name; int irq_level; int phys_reg_addr; } ;


 int DBGINFO (char*) ;
 scalar_t__ irq_test (struct slgt_info*) ;
 scalar_t__ loopback_test (struct slgt_info*) ;
 int printk (char*,int ,...) ;
 scalar_t__ register_test (struct slgt_info*) ;

__attribute__((used)) static int adapter_test(struct slgt_info *info)
{
 DBGINFO(("testing %s\n", info->device_name));
 if (register_test(info) < 0) {
  printk("register test failure %s addr=%08X\n",
   info->device_name, info->phys_reg_addr);
 } else if (irq_test(info) < 0) {
  printk("IRQ test failure %s IRQ=%d\n",
   info->device_name, info->irq_level);
 } else if (loopback_test(info) < 0) {
  printk("loopback test failure %s\n", info->device_name);
 }
 return info->init_error;
}
