
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ ecard_t ;


 TYPE_1__* cards ;
 int ecard_prints (struct seq_file*,TYPE_1__*) ;

__attribute__((used)) static int ecard_devices_proc_show(struct seq_file *m, void *v)
{
 ecard_t *ec = cards;

 while (ec) {
  ecard_prints(m, ec);
  ec = ec->next;
 }
 return 0;
}
