
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct nubus_dev {struct nubus_dev* next; TYPE_1__* board; int dr_hw; int dr_sw; int type; int category; } ;
struct TYPE_2__ {int slot_addr; int slot; } ;


 struct nubus_dev* nubus_devices ;
 int seq_printf (struct seq_file*,char*,int ,...) ;

__attribute__((used)) static int
nubus_devices_proc_show(struct seq_file *m, void *v)
{
 struct nubus_dev *dev = nubus_devices;

 while (dev) {
  seq_printf(m, "%x\t%04x %04x %04x %04x",
         dev->board->slot,
         dev->category,
         dev->type,
         dev->dr_sw,
         dev->dr_hw);
  seq_printf(m, "\t%08lx\n", dev->board->slot_addr);
  dev = dev->next;
 }
 return 0;
}
