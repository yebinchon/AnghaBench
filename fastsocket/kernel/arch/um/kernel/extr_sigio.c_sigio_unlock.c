
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigio_spinlock ;
 int spin_unlock (int *) ;

void sigio_unlock(void)
{
 spin_unlock(&sigio_spinlock);
}
