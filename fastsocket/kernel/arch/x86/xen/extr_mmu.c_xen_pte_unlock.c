
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_unlock (int *) ;

__attribute__((used)) static void xen_pte_unlock(void *v)
{
 spinlock_t *ptl = v;
 spin_unlock(ptl);
}
