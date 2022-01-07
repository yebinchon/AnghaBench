
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {struct net_device* net_dev; } ;
struct net_device {int dummy; } ;
struct i2400m_tlv_media_status {int media_status; } ;
struct i2400m {struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef enum i2400m_media_status { ____Placeholder_i2400m_media_status } i2400m_media_status ;





 int d_fnend (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_media_status const*,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_media_status const*,int) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int le32_to_cpu (int ) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static
void i2400m_report_tlv_media_status(struct i2400m *i2400m,
        const struct i2400m_tlv_media_status *ms)
{
 struct device *dev = i2400m_dev(i2400m);
 struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
 struct net_device *net_dev = wimax_dev->net_dev;
 enum i2400m_media_status status = le32_to_cpu(ms->media_status);

 d_fnstart(3, dev, "(i2400m %p ms %p [%u])\n", i2400m, ms, status);

 switch (status) {
 case 128:
  netif_carrier_on(net_dev);
  break;
 case 130:
  netif_carrier_off(net_dev);
  break;





 case 129:
  netif_carrier_on(net_dev);
  break;
 default:
  dev_err(dev, "HW BUG? unknown media status %u\n",
   status);
 };
 d_fnend(3, dev, "(i2400m %p ms %p [%u]) = void\n",
  i2400m, ms, status);
}
