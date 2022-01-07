
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int dummy; } ;


 int * dscc4_clock_setting ;
 int * dscc4_crc_setting ;
 int * dscc4_encoding_setting ;
 int * dscc4_loopback_setting ;
 int stub1 (struct dscc4_dev_priv*,struct net_device*) ;

__attribute__((used)) static int dscc4_set_iface(struct dscc4_dev_priv *dpriv, struct net_device *dev)
{
 struct {
  int (*action)(struct dscc4_dev_priv *, struct net_device *);
 } *p, do_setting[] = {
  { dscc4_encoding_setting },
  { dscc4_clock_setting },
  { dscc4_loopback_setting },
  { dscc4_crc_setting },
  { ((void*)0) }
 };
 int ret = 0;

 for (p = do_setting; p->action; p++) {
  if ((ret = p->action(dpriv, dev)) < 0)
   break;
 }
 return ret;
}
