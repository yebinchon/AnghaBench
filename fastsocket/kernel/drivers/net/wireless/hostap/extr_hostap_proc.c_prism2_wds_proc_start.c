
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* private; } ;
typedef int loff_t ;
struct TYPE_2__ {int hostap_interfaces; int iface_lock; } ;
typedef TYPE_1__ local_info_t ;


 int read_lock_bh (int *) ;
 void* seq_list_start (int *,int ) ;

__attribute__((used)) static void *prism2_wds_proc_start(struct seq_file *m, loff_t *_pos)
{
 local_info_t *local = m->private;
 read_lock_bh(&local->iface_lock);
 return seq_list_start(&local->hostap_interfaces, *_pos);
}
