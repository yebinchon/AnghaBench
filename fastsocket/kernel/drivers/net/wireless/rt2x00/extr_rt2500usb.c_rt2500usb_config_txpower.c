
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int RF3_TXPOWER ;
 int TXPOWER_TO_DEV (int const) ;
 int rt2500usb_rf_write (struct rt2x00_dev*,int,int ) ;
 int rt2x00_rf_read (struct rt2x00_dev*,int,int *) ;
 int rt2x00_set_field32 (int *,int ,int ) ;

__attribute__((used)) static void rt2500usb_config_txpower(struct rt2x00_dev *rt2x00dev,
         const int txpower)
{
 u32 rf3;

 rt2x00_rf_read(rt2x00dev, 3, &rf3);
 rt2x00_set_field32(&rf3, RF3_TXPOWER, TXPOWER_TO_DEV(txpower));
 rt2500usb_rf_write(rt2x00dev, 3, rf3);
}
