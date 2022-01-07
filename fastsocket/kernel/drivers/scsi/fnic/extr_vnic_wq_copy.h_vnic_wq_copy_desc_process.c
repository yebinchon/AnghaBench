
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int desc_count; unsigned int desc_avail; } ;
struct vnic_wq_copy {int to_clean_index; TYPE_1__ ring; } ;



__attribute__((used)) static inline void vnic_wq_copy_desc_process(struct vnic_wq_copy *wq, u16 index)
{
 unsigned int cnt;

 if (wq->to_clean_index <= index)
  cnt = (index - wq->to_clean_index) + 1;
 else
  cnt = wq->ring.desc_count - wq->to_clean_index + index + 1;

 wq->to_clean_index = ((index + 1) % wq->ring.desc_count);
 wq->ring.desc_avail += cnt;

}
