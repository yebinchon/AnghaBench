
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_data {scalar_t__ batch_data_dir; scalar_t__ current_write_count; int current_batch_expires; scalar_t__ new_batch; scalar_t__ changed_batch; } ;


 scalar_t__ BLK_RW_SYNC ;
 int jiffies ;
 int time_after (int ,int ) ;

__attribute__((used)) static inline int as_batch_expired(struct as_data *ad)
{
 if (ad->changed_batch || ad->new_batch)
  return 0;

 if (ad->batch_data_dir == BLK_RW_SYNC)

  return time_after(jiffies, ad->current_batch_expires);

 return time_after(jiffies, ad->current_batch_expires)
  || ad->current_write_count == 0;
}
