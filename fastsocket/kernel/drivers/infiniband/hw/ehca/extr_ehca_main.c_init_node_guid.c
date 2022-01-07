
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hipz_query_hca {int node_guid; } ;
struct TYPE_2__ {int node_guid; } ;
struct ehca_shca {TYPE_1__ ib_device; int ipz_hca_handle; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ H_SUCCESS ;
 struct hipz_query_hca* ehca_alloc_fw_ctrlblock (int ) ;
 int ehca_err (TYPE_1__*,char*) ;
 int ehca_free_fw_ctrlblock (struct hipz_query_hca*) ;
 scalar_t__ hipz_h_query_hca (int ,struct hipz_query_hca*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int init_node_guid(struct ehca_shca *shca)
{
 int ret = 0;
 struct hipz_query_hca *rblock;

 rblock = ehca_alloc_fw_ctrlblock(GFP_KERNEL);
 if (!rblock) {
  ehca_err(&shca->ib_device, "Can't allocate rblock memory.");
  return -ENOMEM;
 }

 if (hipz_h_query_hca(shca->ipz_hca_handle, rblock) != H_SUCCESS) {
  ehca_err(&shca->ib_device, "Can't query device properties");
  ret = -EINVAL;
  goto init_node_guid1;
 }

 memcpy(&shca->ib_device.node_guid, &rblock->node_guid, sizeof(u64));

init_node_guid1:
 ehca_free_fw_ctrlblock(rblock);
 return ret;
}
