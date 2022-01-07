
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wl3501_card {int esbq_confirm; int sig_pwr_mgmt_confirm; int sig_get_confirm; } ;
struct net_device {int dummy; } ;
typedef int sig_id ;
typedef int addr ;
 int dprintk (int,char*) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_alarm_interrupt (struct net_device*,struct wl3501_card*) ;
 int wl3501_assoc_confirm_interrupt (struct net_device*,int) ;
 int wl3501_auth_confirm_interrupt (struct wl3501_card*,int) ;
 int wl3501_esbq_confirm (struct wl3501_card*) ;
 int wl3501_esbq_confirm_done (struct wl3501_card*) ;
 int wl3501_esbq_req_free (struct wl3501_card*) ;
 int wl3501_get_confirm_interrupt (struct wl3501_card*,int,int *,int) ;
 int wl3501_get_from_wla (struct wl3501_card*,int,int*,int) ;
 int wl3501_md_confirm_interrupt (struct net_device*,struct wl3501_card*,int) ;
 int wl3501_md_ind_interrupt (struct net_device*,struct wl3501_card*,int) ;
 int wl3501_mgmt_join_confirm (struct net_device*,int) ;
 int wl3501_mgmt_resync (struct wl3501_card*) ;
 int wl3501_mgmt_scan_confirm (struct wl3501_card*,int) ;
 int wl3501_start_confirm_interrupt (struct net_device*,struct wl3501_card*,int) ;

__attribute__((used)) static inline void wl3501_rx_interrupt(struct net_device *dev)
{
 int morepkts;
 u16 addr;
 u8 sig_id;
 struct wl3501_card *this = netdev_priv(dev);

 dprintk(3, "entry");
loop:
 morepkts = 0;
 if (!wl3501_esbq_confirm(this))
  goto free;
 wl3501_get_from_wla(this, this->esbq_confirm, &addr, sizeof(addr));
 wl3501_get_from_wla(this, addr + 2, &sig_id, sizeof(sig_id));

 switch (sig_id) {
 case 137:
 case 136:
 case 140:
  wl3501_alarm_interrupt(dev, this);
  break;
 case 133:
  wl3501_md_confirm_interrupt(dev, this, addr);
  break;
 case 132:
  wl3501_md_ind_interrupt(dev, this, addr);
  break;
 case 135:
  wl3501_get_confirm_interrupt(this, addr,
          &this->sig_get_confirm,
          sizeof(this->sig_get_confirm));
  break;
 case 131:
  wl3501_get_confirm_interrupt(this, addr,
          &this->sig_pwr_mgmt_confirm,
         sizeof(this->sig_pwr_mgmt_confirm));
  break;
 case 128:
  wl3501_start_confirm_interrupt(dev, this, addr);
  break;
 case 129:
  wl3501_mgmt_scan_confirm(this, addr);
  break;
 case 134:
  wl3501_mgmt_join_confirm(dev, addr);
  break;
 case 139:
  wl3501_assoc_confirm_interrupt(dev, addr);
  break;
 case 138:
  wl3501_auth_confirm_interrupt(this, addr);
  break;
 case 130:
  wl3501_mgmt_resync(this);
  break;
 }
 wl3501_esbq_confirm_done(this);
 morepkts = 1;

free:
 wl3501_esbq_req_free(this);
 if (morepkts)
  goto loop;
}
