
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_6__ {int debug3; int debug2; int debug1; } ;
struct TYPE_7__ {char* modename; TYPE_2__ dbg; } ;
struct hdlcdrv_ioctl {int cmd; TYPE_3__ data; } ;
struct TYPE_8__ {int last_pllcorr; int last_intcnt; } ;
struct TYPE_5__ {scalar_t__ magic; int ptt_keyed; } ;
struct baycom_state {int baud; TYPE_4__ debug_vals; TYPE_1__ hdrv; int opt_dcd; } ;
struct baycom_ioctl {int cmd; TYPE_3__ data; } ;
typedef int bi ;



 int BUG_ON (int) ;
 int CAP_NET_ADMIN ;
 int EACCES ;
 int EFAULT ;
 int EINVAL ;
 int ENOIOCTLCMD ;




 scalar_t__ HDLCDRV_MAGIC ;
 int HDLCDRV_PARMASK_IOBASE ;
 int HDLCDRV_PARMASK_IRQ ;
 int SIOCDEVPRIVATE ;
 int baycom_setmode (struct baycom_state*,char*) ;
 int capable (int ) ;
 scalar_t__ copy_from_user (struct hdlcdrv_ioctl*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hdlcdrv_ioctl*,int) ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int sprintf (char*,char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int baycom_ioctl(struct net_device *dev, struct ifreq *ifr,
   struct hdlcdrv_ioctl *hi, int cmd)
{
 struct baycom_state *bc;
 struct baycom_ioctl bi;

 if (!dev)
  return -EINVAL;

 bc = netdev_priv(dev);
 BUG_ON(bc->hdrv.magic != HDLCDRV_MAGIC);

 if (cmd != SIOCDEVPRIVATE)
  return -ENOIOCTLCMD;
 switch (hi->cmd) {
 default:
  break;

 case 131:
  sprintf(hi->data.modename, "ser%u", bc->baud / 100);
  if (bc->opt_dcd <= 0)
   strcat(hi->data.modename, (!bc->opt_dcd) ? "*" : "+");
  if (copy_to_user(ifr->ifr_data, hi, sizeof(struct hdlcdrv_ioctl)))
   return -EFAULT;
  return 0;

 case 128:
  if (netif_running(dev) || !capable(CAP_NET_ADMIN))
   return -EACCES;
  hi->data.modename[sizeof(hi->data.modename)-1] = '\0';
  return baycom_setmode(bc, hi->data.modename);

 case 130:
  strcpy(hi->data.modename, "ser12,ser3,ser24");
  if (copy_to_user(ifr->ifr_data, hi, sizeof(struct hdlcdrv_ioctl)))
   return -EFAULT;
  return 0;

 case 129:
  return HDLCDRV_PARMASK_IOBASE | HDLCDRV_PARMASK_IRQ;

 }

 if (copy_from_user(&bi, ifr->ifr_data, sizeof(bi)))
  return -EFAULT;
 switch (bi.cmd) {
 default:
  return -ENOIOCTLCMD;
 }
 if (copy_to_user(ifr->ifr_data, &bi, sizeof(bi)))
  return -EFAULT;
 return 0;

}
