
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ap_data* private; } ;
struct TYPE_2__ {int mac_list; } ;
struct ap_data {TYPE_1__ mac_restrictions; } ;
typedef int loff_t ;


 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *ap_control_proc_next(struct seq_file *m, void *v, loff_t *_pos)
{
 struct ap_data *ap = m->private;
 return seq_list_next(v, &ap->mac_restrictions.mac_list, _pos);
}
