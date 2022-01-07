
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ubi_wl_entry {int ec; int pnum; TYPE_1__ u; } ;
struct ubi_device {int pq_head; int * pq; } ;


 int UBI_PROT_QUEUE_LEN ;
 int dbg_wl (char*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int ubi_assert (int) ;

__attribute__((used)) static void prot_queue_add(struct ubi_device *ubi, struct ubi_wl_entry *e)
{
 int pq_tail = ubi->pq_head - 1;

 if (pq_tail < 0)
  pq_tail = UBI_PROT_QUEUE_LEN - 1;
 ubi_assert(pq_tail >= 0 && pq_tail < UBI_PROT_QUEUE_LEN);
 list_add_tail(&e->u.list, &ubi->pq[pq_tail]);
 dbg_wl("added PEB %d EC %d to the protection queue", e->pnum, e->ec);
}
