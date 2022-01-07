
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int rxq_retry_count; int rxq_count; int txq_count; } ;


 scalar_t__ atomic_read (int *) ;
 int smp_mb () ;

__attribute__((used)) static bool efx_vfdi_flush_wake(struct efx_vf *vf)
{

 smp_mb();

 return (!vf->txq_count && !vf->rxq_count) ||
  atomic_read(&vf->rxq_retry_count);
}
