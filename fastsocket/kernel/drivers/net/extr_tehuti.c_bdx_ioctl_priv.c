
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct bdx_priv {int dummy; } ;
typedef int data ;




 int CAP_SYS_RAWIO ;
 int DBG (char*,int,int,...) ;
 int ENTER ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ERR (char*) ;
 int READ_REG (struct bdx_priv*,int) ;
 int RET (int) ;
 int SIOCDEVPRIVATE ;
 int WRITE_REG (struct bdx_priv*,int,int) ;
 int bdx_range_check (struct bdx_priv*,int) ;
 int capable (int ) ;
 int copy_from_user (int*,int ,int) ;
 int copy_to_user (int ,int*,int) ;
 int jiffies ;
 struct bdx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bdx_ioctl_priv(struct net_device *ndev, struct ifreq *ifr, int cmd)
{
 struct bdx_priv *priv = netdev_priv(ndev);
 u32 data[3];
 int error;

 ENTER;

 DBG("jiffies=%ld cmd=%d\n", jiffies, cmd);
 if (cmd != SIOCDEVPRIVATE) {
  error = copy_from_user(data, ifr->ifr_data, sizeof(data));
  if (error) {
   ERR("cant copy from user\n");
   RET(error);
  }
  DBG("%d 0x%x 0x%x\n", data[0], data[1], data[2]);
 }

 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;

 switch (data[0]) {

 case 129:
  error = bdx_range_check(priv, data[1]);
  if (error < 0)
   return error;
  data[2] = READ_REG(priv, data[1]);
  DBG("read_reg(0x%x)=0x%x (dec %d)\n", data[1], data[2],
      data[2]);
  error = copy_to_user(ifr->ifr_data, data, sizeof(data));
  if (error)
   RET(error);
  break;

 case 128:
  error = bdx_range_check(priv, data[1]);
  if (error < 0)
   return error;
  WRITE_REG(priv, data[1], data[2]);
  DBG("write_reg(0x%x, 0x%x)\n", data[1], data[2]);
  break;

 default:
  RET(-EOPNOTSUPP);
 }
 return 0;
}
