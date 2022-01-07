
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int * bcn; int * tx; int * rx; } ;


 int kfree (int *) ;

void rt2x00queue_free(struct rt2x00_dev *rt2x00dev)
{
 kfree(rt2x00dev->rx);
 rt2x00dev->rx = ((void*)0);
 rt2x00dev->tx = ((void*)0);
 rt2x00dev->bcn = ((void*)0);
}
