
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int hw; int mutex; int * survey; int * mem_bitmap; int * rx_failover; int registered; } ;


 int IS_INITIALIZED (struct ar9170*) ;
 int WARN_ON (int ) ;
 int ieee80211_free_hw (int ) ;
 int kfree (int *) ;
 int kfree_skb (int *) ;
 int mutex_destroy (int *) ;

void carl9170_free(struct ar9170 *ar)
{
 WARN_ON(ar->registered);
 WARN_ON(IS_INITIALIZED(ar));

 kfree_skb(ar->rx_failover);
 ar->rx_failover = ((void*)0);

 kfree(ar->mem_bitmap);
 ar->mem_bitmap = ((void*)0);

 kfree(ar->survey);
 ar->survey = ((void*)0);

 mutex_destroy(&ar->mutex);

 ieee80211_free_hw(ar->hw);
}
