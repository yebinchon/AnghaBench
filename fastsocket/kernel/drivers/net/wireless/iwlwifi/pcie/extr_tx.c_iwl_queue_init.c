
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_queue {int n_bd; int n_window; int low_mark; int high_mark; scalar_t__ read_ptr; scalar_t__ write_ptr; int id; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int is_power_of_2 (int) ;

__attribute__((used)) static int iwl_queue_init(struct iwl_queue *q, int count, int slots_num, u32 id)
{
 q->n_bd = count;
 q->n_window = slots_num;
 q->id = id;



 if (WARN_ON(!is_power_of_2(count)))
  return -EINVAL;



 if (WARN_ON(!is_power_of_2(slots_num)))
  return -EINVAL;

 q->low_mark = q->n_window / 4;
 if (q->low_mark < 4)
  q->low_mark = 4;

 q->high_mark = q->n_window / 8;
 if (q->high_mark < 2)
  q->high_mark = 2;

 q->write_ptr = 0;
 q->read_ptr = 0;

 return 0;
}
