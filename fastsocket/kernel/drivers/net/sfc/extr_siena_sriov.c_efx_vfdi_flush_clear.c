
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_vf {int rxq_retry_count; int rxq_retry_mask; scalar_t__ rxq_count; int rxq_mask; scalar_t__ txq_count; int txq_mask; } ;


 int atomic_set (int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void efx_vfdi_flush_clear(struct efx_vf *vf)
{
 memset(vf->txq_mask, 0, sizeof(vf->txq_mask));
 vf->txq_count = 0;
 memset(vf->rxq_mask, 0, sizeof(vf->rxq_mask));
 vf->rxq_count = 0;
 memset(vf->rxq_retry_mask, 0, sizeof(vf->rxq_retry_mask));
 atomic_set(&vf->rxq_retry_count, 0);
}
