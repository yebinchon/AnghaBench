
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (scalar_t__) ;
 scalar_t__ scsi_pkt_cachep ;

void fc_destroy_fcp(void)
{
 if (scsi_pkt_cachep)
  kmem_cache_destroy(scsi_pkt_cachep);
}
