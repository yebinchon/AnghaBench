
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int rx_spare_lock; int rx_spares_needed; int rx_spare_list; int rx_inuse_lock; int rx_inuse_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int RX_SPARE_COUNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cas_spare_init(struct cas *cp)
{
   spin_lock(&cp->rx_inuse_lock);
 INIT_LIST_HEAD(&cp->rx_inuse_list);
 spin_unlock(&cp->rx_inuse_lock);

 spin_lock(&cp->rx_spare_lock);
 INIT_LIST_HEAD(&cp->rx_spare_list);
 cp->rx_spares_needed = RX_SPARE_COUNT;
 spin_unlock(&cp->rx_spare_lock);
}
