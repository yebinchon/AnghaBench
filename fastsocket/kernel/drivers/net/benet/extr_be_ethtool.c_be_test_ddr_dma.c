
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct be_dma_mem {int size; int dma; int va; } ;
struct be_cmd_req_ddrdma_test {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int be_cmd_ddr_dma_test (struct be_adapter*,int const,int,struct be_dma_mem*) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,int ,int ) ;

__attribute__((used)) static int
be_test_ddr_dma(struct be_adapter *adapter)
{
 int ret, i;
 struct be_dma_mem ddrdma_cmd;
 static const u64 pattern[2] = {
  0x5a5a5a5a5a5a5a5aULL, 0xa5a5a5a5a5a5a5a5ULL
 };

 ddrdma_cmd.size = sizeof(struct be_cmd_req_ddrdma_test);
 ddrdma_cmd.va = dma_alloc_coherent(&adapter->pdev->dev, ddrdma_cmd.size,
        &ddrdma_cmd.dma, GFP_KERNEL);
 if (!ddrdma_cmd.va)
  return -ENOMEM;

 for (i = 0; i < 2; i++) {
  ret = be_cmd_ddr_dma_test(adapter, pattern[i],
     4096, &ddrdma_cmd);
  if (ret != 0)
   goto err;
 }

err:
 dma_free_coherent(&adapter->pdev->dev, ddrdma_cmd.size, ddrdma_cmd.va,
     ddrdma_cmd.dma);
 return ret;
}
