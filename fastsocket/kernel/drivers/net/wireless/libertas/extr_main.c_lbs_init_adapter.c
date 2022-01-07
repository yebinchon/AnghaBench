
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int channel; } ;
struct TYPE_4__ {int auth_mode; } ;
struct lbs_private {int mac_control; int radio_on; int enablehwauto; int event_fifo; scalar_t__* resp_len; scalar_t__ resp_idx; int cmd_pending; int driver_lock; int cmdpendingq; int cmdfreeq; int command_timer; int lock; int psstate; int psmode; int capability; TYPE_2__ curbssparams; int mode; TYPE_1__ secinfo; void* mesh_connect_status; void* connect_status; int current_addr; int network_free_list; TYPE_3__* networks; int network_list; } ;
struct bss_descriptor {int dummy; } ;
struct TYPE_6__ {int list; } ;


 int CMD_ACT_MAC_RX_ON ;
 int CMD_ACT_MAC_TX_ON ;
 int DEFAULT_AD_HOC_CHANNEL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int IW_AUTH_ALG_OPEN_SYSTEM ;
 int IW_MODE_INFRA ;
 int LBS802_11POWERMODECAM ;
 int LBS_DEB_MAIN ;
 void* LBS_DISCONNECTED ;
 int MAX_NETWORK_COUNT ;
 int PS_STATE_FULL_POWER ;
 int WLAN_CAPABILITY_SHORT_PREAMBLE ;
 int command_timer_fn ;
 int init_waitqueue_head (int *) ;
 int kfifo_alloc (int,int ,int *) ;
 TYPE_3__* kzalloc (size_t,int ) ;
 scalar_t__ lbs_allocate_cmd_buffer (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_pr_err (char*) ;
 int list_add_tail (int *,int *) ;
 int memset (int ,int,int ) ;
 int mutex_init (int *) ;
 int setup_timer (int *,int ,unsigned long) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int lbs_init_adapter(struct lbs_private *priv)
{
 size_t bufsize;
 int i, ret = 0;

 lbs_deb_enter(LBS_DEB_MAIN);


 bufsize = MAX_NETWORK_COUNT * sizeof(struct bss_descriptor);
 priv->networks = kzalloc(bufsize, GFP_KERNEL);
 if (!priv->networks) {
  lbs_pr_err("Out of memory allocating beacons\n");
  ret = -1;
  goto out;
 }


 INIT_LIST_HEAD(&priv->network_free_list);
 INIT_LIST_HEAD(&priv->network_list);
 for (i = 0; i < MAX_NETWORK_COUNT; i++) {
  list_add_tail(&priv->networks[i].list,
         &priv->network_free_list);
 }

 memset(priv->current_addr, 0xff, ETH_ALEN);

 priv->connect_status = LBS_DISCONNECTED;
 priv->mesh_connect_status = LBS_DISCONNECTED;
 priv->secinfo.auth_mode = IW_AUTH_ALG_OPEN_SYSTEM;
 priv->mode = IW_MODE_INFRA;
 priv->curbssparams.channel = DEFAULT_AD_HOC_CHANNEL;
 priv->mac_control = CMD_ACT_MAC_RX_ON | CMD_ACT_MAC_TX_ON;
 priv->radio_on = 1;
 priv->enablehwauto = 1;
 priv->capability = WLAN_CAPABILITY_SHORT_PREAMBLE;
 priv->psmode = LBS802_11POWERMODECAM;
 priv->psstate = PS_STATE_FULL_POWER;

 mutex_init(&priv->lock);

 setup_timer(&priv->command_timer, command_timer_fn,
  (unsigned long)priv);

 INIT_LIST_HEAD(&priv->cmdfreeq);
 INIT_LIST_HEAD(&priv->cmdpendingq);

 spin_lock_init(&priv->driver_lock);
 init_waitqueue_head(&priv->cmd_pending);


 if (lbs_allocate_cmd_buffer(priv)) {
  lbs_pr_err("Out of memory allocating command buffers\n");
  ret = -ENOMEM;
  goto out;
 }
 priv->resp_idx = 0;
 priv->resp_len[0] = priv->resp_len[1] = 0;


 priv->event_fifo = kfifo_alloc(sizeof(u32) * 16, GFP_KERNEL, ((void*)0));
 if (IS_ERR(priv->event_fifo)) {
  lbs_pr_err("Out of memory allocating event FIFO buffer\n");
  ret = -ENOMEM;
  goto out;
 }

out:
 lbs_deb_leave_args(LBS_DEB_MAIN, "ret %d", ret);

 return ret;
}
