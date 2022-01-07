
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehca_queue_map {int tail; int entries; TYPE_1__* map; scalar_t__ next_wqe_idx; scalar_t__ left_to_poll; } ;
struct TYPE_2__ {int reported; scalar_t__ cqe_req; } ;



__attribute__((used)) static void reset_queue_map(struct ehca_queue_map *qmap)
{
 int i;

 qmap->tail = qmap->entries - 1;
 qmap->left_to_poll = 0;
 qmap->next_wqe_idx = 0;
 for (i = 0; i < qmap->entries; i++) {
  qmap->map[i].reported = 1;
  qmap->map[i].cqe_req = 0;
 }
}
