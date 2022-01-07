
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_rx_desc {int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct iser_conn {struct iser_rx_desc* rx_descs; struct iser_device* device; } ;


 int DMA_FROM_DEVICE ;
 int ISER_QP_MAX_RECV_DTOS ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct iser_rx_desc*) ;

void iser_free_rx_descriptors(struct iser_conn *ib_conn)
{
 int i;
 struct iser_rx_desc *rx_desc;
 struct iser_device *device = ib_conn->device;

 if (!ib_conn->rx_descs)
  return;

 rx_desc = ib_conn->rx_descs;
 for (i = 0; i < ISER_QP_MAX_RECV_DTOS; i++, rx_desc++)
  ib_dma_unmap_single(device->ib_device, rx_desc->dma_addr,
   ISER_RX_PAYLOAD_SIZE, DMA_FROM_DEVICE);
 kfree(ib_conn->rx_descs);
}
