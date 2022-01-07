
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int ENOTSUPP ;
 int msleep (int) ;
 int rt2800usb_disable_radio (struct rt2x00_dev*) ;
 int rt2800usb_enable_radio (struct rt2x00_dev*) ;
 int rt2800usb_set_state (struct rt2x00_dev*,int) ;
 int rt2x00_err (struct rt2x00_dev*,char*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt2800usb_set_device_state(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 int retval = 0;

 switch (state) {
 case 130:





  rt2800usb_set_state(rt2x00dev, 135);
  msleep(1);
  retval = rt2800usb_enable_radio(rt2x00dev);
  break;
 case 131:




  rt2800usb_disable_radio(rt2x00dev);
  rt2800usb_set_state(rt2x00dev, 129);
  break;
 case 132:
 case 133:

  break;
 case 134:
 case 129:
 case 128:
 case 135:
  retval = rt2800usb_set_state(rt2x00dev, state);
  break;
 default:
  retval = -ENOTSUPP;
  break;
 }

 if (unlikely(retval))
  rt2x00_err(rt2x00dev, "Device failed to enter state %d (%d)\n",
      state, retval);

 return retval;
}
