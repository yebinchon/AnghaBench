
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* private; } ;
typedef int loff_t ;
struct TYPE_2__ {int bss_list; int lock; } ;
typedef TYPE_1__ local_info_t ;


 void* seq_list_start_head (int *,int ) ;
 int spin_lock_bh (int *) ;

__attribute__((used)) static void *prism2_bss_list_proc_start(struct seq_file *m, loff_t *_pos)
{
 local_info_t *local = m->private;
 spin_lock_bh(&local->lock);
 return seq_list_start_head(&local->bss_list, *_pos);
}
