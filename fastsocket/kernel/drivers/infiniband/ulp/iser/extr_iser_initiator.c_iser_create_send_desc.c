
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct iser_tx_desc {int num_sge; TYPE_1__* tx_sg; TYPE_3__ iser_header; int dma_addr; } ;
struct iser_hdr {int dummy; } ;
struct iser_device {TYPE_2__* mr; int ib_device; } ;
struct iser_conn {struct iser_device* device; } ;
struct TYPE_5__ {scalar_t__ lkey; } ;
struct TYPE_4__ {scalar_t__ lkey; } ;


 int DMA_TO_DEVICE ;
 int ISER_HEADERS_LEN ;
 int ISER_VER ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int iser_dbg (char*,struct iser_tx_desc*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void iser_create_send_desc(struct iser_conn *ib_conn,
      struct iser_tx_desc *tx_desc)
{
 struct iser_device *device = ib_conn->device;

 ib_dma_sync_single_for_cpu(device->ib_device,
  tx_desc->dma_addr, ISER_HEADERS_LEN, DMA_TO_DEVICE);

 memset(&tx_desc->iser_header, 0, sizeof(struct iser_hdr));
 tx_desc->iser_header.flags = ISER_VER;

 tx_desc->num_sge = 1;

 if (tx_desc->tx_sg[0].lkey != device->mr->lkey) {
  tx_desc->tx_sg[0].lkey = device->mr->lkey;
  iser_dbg("sdesc %p lkey mismatch, fixing\n", tx_desc);
 }
}
