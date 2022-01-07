
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {void* caps_addr; int dev; void* adapter_info_addr; int madapter_info; int caps; } ;


 int DMA_BIDIRECTIONAL ;
 int dev_err (int ,char*) ;
 void* dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,void*) ;
 int dma_unmap_single (int ,void*,int,int ) ;

__attribute__((used)) static int map_persist_bufs(struct ibmvscsi_host_data *hostdata)
{

 hostdata->caps_addr = dma_map_single(hostdata->dev, &hostdata->caps,
          sizeof(hostdata->caps), DMA_BIDIRECTIONAL);

 if (dma_mapping_error(hostdata->dev, hostdata->caps_addr)) {
  dev_err(hostdata->dev, "Unable to map capabilities buffer!\n");
  return 1;
 }

 hostdata->adapter_info_addr = dma_map_single(hostdata->dev,
           &hostdata->madapter_info,
           sizeof(hostdata->madapter_info),
           DMA_BIDIRECTIONAL);
 if (dma_mapping_error(hostdata->dev, hostdata->adapter_info_addr)) {
  dev_err(hostdata->dev, "Unable to map adapter info buffer!\n");
  dma_unmap_single(hostdata->dev, hostdata->caps_addr,
     sizeof(hostdata->caps), DMA_BIDIRECTIONAL);
  return 1;
 }

 return 0;
}
