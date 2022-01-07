
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int notify_spinlock ;
 int spin_unlock (int *) ;

void unlock_notify(void)
{
 spin_unlock(&notify_spinlock);
}
