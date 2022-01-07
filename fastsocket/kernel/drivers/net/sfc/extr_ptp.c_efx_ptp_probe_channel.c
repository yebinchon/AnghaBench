
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int pps; int enable; int settime; int gettime; int adjtime; int adjfreq; scalar_t__ n_per_out; scalar_t__ n_ext_ts; scalar_t__ n_alarm; int max_adj; int name; int owner; } ;
struct TYPE_8__ {int rx_filter; int tx_type; scalar_t__ flags; } ;
struct efx_ptp_data {int nic_ts_enabled; int start; void* workwq; int phc_clock; void* pps_workwq; int pps_work; TYPE_6__ phc_clock_info; int evt_free_list; TYPE_3__* rx_evts; int evt_lock; int evt_list; TYPE_2__ config; int work; int txq; int rxq; struct efx_channel* channel; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; TYPE_5__* pci_dev; TYPE_4__* net_dev; } ;
struct TYPE_7__ {scalar_t__ core_index; } ;
struct efx_channel {TYPE_1__ rx_queue; scalar_t__ irq_moderation; struct efx_nic* efx; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int perm_addr; } ;
struct TYPE_9__ {int link; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_PPB ;
 unsigned int MAX_RECEIVE_EVENTS ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 void* create_singlethread_workqueue (char*) ;
 int destroy_workqueue (void*) ;
 int efx_nic_alloc_buffer (struct efx_nic*,int *,int) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int efx_phc_adjfreq ;
 int efx_phc_adjtime ;
 int efx_phc_enable ;
 int efx_phc_gettime ;
 int efx_phc_settime ;
 int efx_ptp_pps_worker ;
 int efx_ptp_worker ;
 int kfree (struct efx_ptp_data*) ;
 struct efx_ptp_data* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int ptp_clock_register (TYPE_6__*,int *) ;
 int ptp_clock_unregister (int ) ;
 int skb_queue_head_init (int *) ;
 int snprintf (int ,int,char*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int efx_ptp_probe_channel(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;
 struct efx_ptp_data *ptp;
 int rc = 0;
 unsigned int pos;

 channel->irq_moderation = 0;
 channel->rx_queue.core_index = 0;

 ptp = kzalloc(sizeof(struct efx_ptp_data), GFP_KERNEL);
 efx->ptp_data = ptp;
 if (!efx->ptp_data)
  return -ENOMEM;

 rc = efx_nic_alloc_buffer(efx, &ptp->start, sizeof(int));
 if (rc != 0)
  goto fail1;

 ptp->channel = channel;
 skb_queue_head_init(&ptp->rxq);
 skb_queue_head_init(&ptp->txq);
 ptp->workwq = create_singlethread_workqueue("sfc_ptp");
 if (!ptp->workwq) {
  rc = -ENOMEM;
  goto fail2;
 }

 INIT_WORK(&ptp->work, efx_ptp_worker);
 ptp->config.flags = 0;
 ptp->config.tx_type = HWTSTAMP_TX_OFF;
 ptp->config.rx_filter = HWTSTAMP_FILTER_NONE;
 INIT_LIST_HEAD(&ptp->evt_list);
 INIT_LIST_HEAD(&ptp->evt_free_list);
 spin_lock_init(&ptp->evt_lock);
 for (pos = 0; pos < MAX_RECEIVE_EVENTS; pos++)
  list_add(&ptp->rx_evts[pos].link, &ptp->evt_free_list);

 ptp->phc_clock_info.owner = THIS_MODULE;
 snprintf(ptp->phc_clock_info.name,
   sizeof(ptp->phc_clock_info.name),
   "%pm", efx->net_dev->perm_addr);
 ptp->phc_clock_info.max_adj = MAX_PPB;
 ptp->phc_clock_info.n_alarm = 0;
 ptp->phc_clock_info.n_ext_ts = 0;
 ptp->phc_clock_info.n_per_out = 0;
 ptp->phc_clock_info.pps = 1;
 ptp->phc_clock_info.adjfreq = efx_phc_adjfreq;
 ptp->phc_clock_info.adjtime = efx_phc_adjtime;
 ptp->phc_clock_info.gettime = efx_phc_gettime;
 ptp->phc_clock_info.settime = efx_phc_settime;
 ptp->phc_clock_info.enable = efx_phc_enable;

 ptp->phc_clock = ptp_clock_register(&ptp->phc_clock_info,
         &efx->pci_dev->dev);
 if (IS_ERR(ptp->phc_clock)) {
  rc = PTR_ERR(ptp->phc_clock);
  goto fail3;
 }

 INIT_WORK(&ptp->pps_work, efx_ptp_pps_worker);
 ptp->pps_workwq = create_singlethread_workqueue("sfc_pps");
 if (!ptp->pps_workwq) {
  rc = -ENOMEM;
  goto fail4;
 }
 ptp->nic_ts_enabled = 0;

 return 0;
fail4:
 ptp_clock_unregister(efx->ptp_data->phc_clock);

fail3:
 destroy_workqueue(efx->ptp_data->workwq);

fail2:
 efx_nic_free_buffer(efx, &ptp->start);

fail1:
 kfree(efx->ptp_data);
 efx->ptp_data = ((void*)0);

 return rc;
}
