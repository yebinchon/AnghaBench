
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_3__ {int fops; int mode; scalar_t__ name; } ;
typedef TYPE_1__ i2o_proc_entry ;


 struct proc_dir_entry* proc_create_data (scalar_t__,int ,struct proc_dir_entry*,int ,void*) ;

__attribute__((used)) static int i2o_proc_create_entries(struct proc_dir_entry *dir,
       i2o_proc_entry * i2o_pe, void *data)
{
 struct proc_dir_entry *tmp;

 while (i2o_pe->name) {
  tmp = proc_create_data(i2o_pe->name, i2o_pe->mode, dir,
           i2o_pe->fops, data);
  if (!tmp)
   return -1;

  i2o_pe++;
 }

 return 0;
}
