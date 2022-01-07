
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slip {int dev; } ;


 int netif_wake_queue (int ) ;

__attribute__((used)) static inline void sl_unlock(struct slip *sl)
{
 netif_wake_queue(sl->dev);
}
