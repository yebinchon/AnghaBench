
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {TYPE_1__* private; } ;
struct TYPE_2__ {int lock; } ;
typedef TYPE_1__ local_info_t ;


 int spin_unlock_bh (int *) ;

__attribute__((used)) static void prism2_scan_results_proc_stop(struct seq_file *m, void *v)
{
 local_info_t *local = m->private;
 spin_unlock_bh(&local->lock);
}
