
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct ap_data* private; } ;
struct ap_data {int sta_table_lock; } ;


 int spin_unlock_bh (int *) ;

__attribute__((used)) static void prism2_ap_proc_stop(struct seq_file *m, void *v)
{
 struct ap_data *ap = m->private;
 spin_unlock_bh(&ap->sta_table_lock);
}
