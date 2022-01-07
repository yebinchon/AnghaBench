
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpn_map {void* page; } ;
struct ipath_qp_table {int lock; } ;


 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void get_map_page(struct ipath_qp_table *qpt, struct qpn_map *map)
{
 unsigned long page = get_zeroed_page(GFP_KERNEL);
 unsigned long flags;





 spin_lock_irqsave(&qpt->lock, flags);
 if (map->page)
  free_page(page);
 else
  map->page = (void *)page;
 spin_unlock_irqrestore(&qpt->lock, flags);
}
