
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* private; } ;
typedef int loff_t ;
struct TYPE_2__ {int hostap_interfaces; } ;
typedef TYPE_1__ local_info_t ;


 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *prism2_wds_proc_next(struct seq_file *m, void *v, loff_t *_pos)
{
 local_info_t *local = m->private;
 return seq_list_next(v, &local->hostap_interfaces, _pos);
}
