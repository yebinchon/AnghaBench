
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_spinlock_t ;
struct TYPE_2__ {int lock; } ;


 TYPE_1__* cvmx_bootmem_desc ;
 int cvmx_spinlock_lock (int *) ;

void cvmx_bootmem_lock(void)
{
 cvmx_spinlock_lock((cvmx_spinlock_t *) &(cvmx_bootmem_desc->lock));
}
