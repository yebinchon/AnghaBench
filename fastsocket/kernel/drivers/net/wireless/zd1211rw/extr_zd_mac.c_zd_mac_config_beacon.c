
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {int intf; } ;
struct TYPE_9__ {TYPE_2__ usb; int mutex; } ;
struct TYPE_7__ {struct sk_buff* cur_beacon; } ;
struct zd_mac {TYPE_3__ chip; TYPE_1__ beacon; } ;
struct zd_ioreq32 {int value; void* addr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_hw {int dummy; } ;


 int BUG_ON (int) ;
 void* CR_BCN_FIFO ;
 int CR_BCN_FIFO_SEMAPHORE ;
 void* CR_BCN_LENGTH ;
 int CR_BCN_PLCP_CFG ;
 int EBUSY ;
 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int HZ ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int jiffies ;
 int kfree (struct zd_ioreq32*) ;
 int kfree_skb (struct sk_buff*) ;
 struct zd_ioreq32* kmalloc (int,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_is_before_eq_jiffies (unsigned long) ;
 int usb_queue_reset_device (int ) ;
 int zd_chip_is_zd1211b (TYPE_3__*) ;
 struct zd_mac* zd_hw_mac (struct ieee80211_hw*) ;
 int zd_ioread32_locked (TYPE_3__*,int*,int ) ;
 int zd_iowrite32_locked (TYPE_3__*,int,int ) ;
 int zd_iowrite32a_locked (TYPE_3__*,struct zd_ioreq32*,int) ;
 int zd_mac_dev (struct zd_mac*) ;
 int zd_mac_free_cur_beacon_locked (struct zd_mac*) ;
 scalar_t__ zd_mac_match_cur_beacon (struct zd_mac*,struct sk_buff*) ;

__attribute__((used)) static int zd_mac_config_beacon(struct ieee80211_hw *hw, struct sk_buff *beacon,
    bool in_intr)
{
 struct zd_mac *mac = zd_hw_mac(hw);
 int r, ret, num_cmds, req_pos = 0;
 u32 tmp, j = 0;

 u32 full_len = beacon->len + 4;
 unsigned long end_jiffies, message_jiffies;
 struct zd_ioreq32 *ioreqs;

 mutex_lock(&mac->chip.mutex);


 if (zd_mac_match_cur_beacon(mac, beacon)) {
  r = 0;
  goto out_nofree;
 }


 num_cmds = 1 + zd_chip_is_zd1211b(&mac->chip) + full_len;
 ioreqs = kmalloc(num_cmds * sizeof(struct zd_ioreq32), GFP_KERNEL);
 if (!ioreqs) {
  r = -ENOMEM;
  goto out_nofree;
 }

 r = zd_iowrite32_locked(&mac->chip, 0, CR_BCN_FIFO_SEMAPHORE);
 if (r < 0)
  goto out;
 r = zd_ioread32_locked(&mac->chip, &tmp, CR_BCN_FIFO_SEMAPHORE);
 if (r < 0)
  goto release_sema;
 if (in_intr && tmp & 0x2) {
  r = -EBUSY;
  goto release_sema;
 }

 end_jiffies = jiffies + HZ / 2;
 message_jiffies = jiffies + HZ / 10;
 while (tmp & 0x2) {
  r = zd_ioread32_locked(&mac->chip, &tmp, CR_BCN_FIFO_SEMAPHORE);
  if (r < 0)
   goto release_sema;
  if (time_is_before_eq_jiffies(message_jiffies)) {
   message_jiffies = jiffies + HZ / 10;
   dev_err(zd_mac_dev(mac),
     "CR_BCN_FIFO_SEMAPHORE not ready\n");
   if (time_is_before_eq_jiffies(end_jiffies)) {
    dev_err(zd_mac_dev(mac),
      "Giving up beacon config.\n");
    r = -ETIMEDOUT;
    goto reset_device;
   }
  }
  msleep(20);
 }

 ioreqs[req_pos].addr = CR_BCN_FIFO;
 ioreqs[req_pos].value = full_len - 1;
 req_pos++;
 if (zd_chip_is_zd1211b(&mac->chip)) {
  ioreqs[req_pos].addr = CR_BCN_LENGTH;
  ioreqs[req_pos].value = full_len - 1;
  req_pos++;
 }

 for (j = 0 ; j < beacon->len; j++) {
  ioreqs[req_pos].addr = CR_BCN_FIFO;
  ioreqs[req_pos].value = *((u8 *)(beacon->data + j));
  req_pos++;
 }

 for (j = 0; j < 4; j++) {
  ioreqs[req_pos].addr = CR_BCN_FIFO;
  ioreqs[req_pos].value = 0x0;
  req_pos++;
 }

 BUG_ON(req_pos != num_cmds);

 r = zd_iowrite32a_locked(&mac->chip, ioreqs, num_cmds);

release_sema:




 end_jiffies = jiffies + HZ / 2;
 ret = zd_iowrite32_locked(&mac->chip, 1, CR_BCN_FIFO_SEMAPHORE);
 while (ret < 0) {
  if (in_intr || time_is_before_eq_jiffies(end_jiffies)) {
   ret = -ETIMEDOUT;
   break;
  }

  msleep(20);
  ret = zd_iowrite32_locked(&mac->chip, 1, CR_BCN_FIFO_SEMAPHORE);
 }

 if (ret < 0)
  dev_err(zd_mac_dev(mac), "Could not release "
      "CR_BCN_FIFO_SEMAPHORE!\n");
 if (r < 0 || ret < 0) {
  if (r >= 0)
   r = ret;



  zd_mac_free_cur_beacon_locked(mac);

  goto out;
 }


 zd_mac_free_cur_beacon_locked(mac);
 mac->beacon.cur_beacon = beacon;
 beacon = ((void*)0);





 r = zd_iowrite32_locked(&mac->chip, 0x00000400 | (full_len << 19),
    CR_BCN_PLCP_CFG);
out:
 kfree(ioreqs);
out_nofree:
 kfree_skb(beacon);
 mutex_unlock(&mac->chip.mutex);

 return r;

reset_device:
 zd_mac_free_cur_beacon_locked(mac);
 kfree_skb(beacon);

 mutex_unlock(&mac->chip.mutex);
 kfree(ioreqs);


 dev_warn(zd_mac_dev(mac), "CR_BCN_FIFO_SEMAPHORE stuck, "
      "reseting device...");
 usb_queue_reset_device(mac->chip.usb.intf);

 return r;
}
