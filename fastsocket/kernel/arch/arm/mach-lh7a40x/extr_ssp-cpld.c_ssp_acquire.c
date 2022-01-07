
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spin_lock (int *) ;
 int ssp_lock ;

__attribute__((used)) static void ssp_acquire (void)
{
 spin_lock (&ssp_lock);
}
