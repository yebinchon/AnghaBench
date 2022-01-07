
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigio_spinlock ;
 int spin_lock (int *) ;

void sigio_lock(void)
{
 spin_lock(&sigio_spinlock);
}
