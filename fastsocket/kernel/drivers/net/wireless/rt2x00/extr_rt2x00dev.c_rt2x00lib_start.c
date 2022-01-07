
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int flags; scalar_t__ intf_associated; scalar_t__ intf_sta_count; scalar_t__ intf_ap_count; } ;


 int DEVICE_STATE_STARTED ;
 int rt2x00lib_enable_radio (struct rt2x00_dev*) ;
 int rt2x00lib_initialize (struct rt2x00_dev*) ;
 int rt2x00lib_load_firmware (struct rt2x00_dev*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

int rt2x00lib_start(struct rt2x00_dev *rt2x00dev)
{
 int retval;

 if (test_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags))
  return 0;





 retval = rt2x00lib_load_firmware(rt2x00dev);
 if (retval)
  return retval;




 retval = rt2x00lib_initialize(rt2x00dev);
 if (retval)
  return retval;

 rt2x00dev->intf_ap_count = 0;
 rt2x00dev->intf_sta_count = 0;
 rt2x00dev->intf_associated = 0;


 retval = rt2x00lib_enable_radio(rt2x00dev);
 if (retval)
  return retval;

 set_bit(DEVICE_STATE_STARTED, &rt2x00dev->flags);

 return 0;
}
