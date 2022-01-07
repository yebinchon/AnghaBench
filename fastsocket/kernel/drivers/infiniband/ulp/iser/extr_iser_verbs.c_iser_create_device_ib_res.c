
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct iser_device {int cqs_used; struct iser_cq_desc* cq_desc; void* pd; void** rx_cq; void** tx_cq; int * cq_tasklet; void* mr; int event_handler; TYPE_1__* ib_device; } ;
struct iser_cq_desc {int cq_index; struct iser_device* device; } ;
struct TYPE_4__ {int num_comp_vectors; int name; } ;


 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 int IB_CQ_NEXT_COMP ;
 int INIT_IB_EVENT_HANDLER (int *,TYPE_1__*,int ) ;
 int ISER_MAX_CQ ;
 int ISER_MAX_RX_CQ_LEN ;
 int ISER_MAX_TX_CQ_LEN ;
 scalar_t__ IS_ERR (void*) ;
 void* ib_alloc_pd (TYPE_1__*) ;
 void* ib_create_cq (TYPE_1__*,int *,int ,void*,int ,int) ;
 int ib_dealloc_pd (void*) ;
 int ib_dereg_mr (void*) ;
 int ib_destroy_cq (void*) ;
 void* ib_get_dma_mr (void*,int) ;
 scalar_t__ ib_register_event_handler (int *) ;
 scalar_t__ ib_req_notify_cq (void*,int ) ;
 int * iser_cq_callback ;
 int iser_cq_event_callback ;
 int iser_cq_tasklet_fn ;
 int iser_err (char*) ;
 int iser_event_handler ;
 int iser_info (char*,int,int ,int ) ;
 int kfree (struct iser_cq_desc*) ;
 struct iser_cq_desc* kmalloc (int,int ) ;
 int min (int ,int ) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int iser_create_device_ib_res(struct iser_device *device)
{
 int i, j;
 struct iser_cq_desc *cq_desc;

 device->cqs_used = min(ISER_MAX_CQ, device->ib_device->num_comp_vectors);
 iser_info("using %d CQs, device %s supports %d vectors\n",
    device->cqs_used, device->ib_device->name,
    device->ib_device->num_comp_vectors);

 device->cq_desc = kmalloc(sizeof(struct iser_cq_desc) * device->cqs_used,
      GFP_KERNEL);
 if (device->cq_desc == ((void*)0))
  goto cq_desc_err;
 cq_desc = device->cq_desc;

 device->pd = ib_alloc_pd(device->ib_device);
 if (IS_ERR(device->pd))
  goto pd_err;

 for (i = 0; i < device->cqs_used; i++) {
  cq_desc[i].device = device;
  cq_desc[i].cq_index = i;

  device->rx_cq[i] = ib_create_cq(device->ib_device,
       iser_cq_callback,
       iser_cq_event_callback,
       (void *)&cq_desc[i],
       ISER_MAX_RX_CQ_LEN, i);
  if (IS_ERR(device->rx_cq[i]))
   goto cq_err;

  device->tx_cq[i] = ib_create_cq(device->ib_device,
       ((void*)0), iser_cq_event_callback,
       (void *)&cq_desc[i],
       ISER_MAX_TX_CQ_LEN, i);

  if (IS_ERR(device->tx_cq[i]))
   goto cq_err;

  if (ib_req_notify_cq(device->rx_cq[i], IB_CQ_NEXT_COMP))
   goto cq_err;

  tasklet_init(&device->cq_tasklet[i],
        iser_cq_tasklet_fn,
   (unsigned long)&cq_desc[i]);
 }

 device->mr = ib_get_dma_mr(device->pd, IB_ACCESS_LOCAL_WRITE |
       IB_ACCESS_REMOTE_WRITE |
       IB_ACCESS_REMOTE_READ);
 if (IS_ERR(device->mr))
  goto dma_mr_err;

 INIT_IB_EVENT_HANDLER(&device->event_handler, device->ib_device,
    iser_event_handler);
 if (ib_register_event_handler(&device->event_handler))
  goto handler_err;

 return 0;

handler_err:
 ib_dereg_mr(device->mr);
dma_mr_err:
 for (j = 0; j < device->cqs_used; j++)
  tasklet_kill(&device->cq_tasklet[j]);
cq_err:
 for (j = 0; j < i; j++) {
  if (device->tx_cq[j])
   ib_destroy_cq(device->tx_cq[j]);
  if (device->rx_cq[j])
   ib_destroy_cq(device->rx_cq[j]);
 }
 ib_dealloc_pd(device->pd);
pd_err:
 kfree(device->cq_desc);
cq_desc_err:
 iser_err("failed to allocate an IB resource\n");
 return -1;
}
