
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pfifo_lock ;
 unsigned int pfifo_used ;

void pfifo_free(unsigned int pfifo_mask)
{
 mutex_lock(&pfifo_lock);
 pfifo_used &= ~pfifo_mask;
 mutex_unlock(&pfifo_lock);
}
