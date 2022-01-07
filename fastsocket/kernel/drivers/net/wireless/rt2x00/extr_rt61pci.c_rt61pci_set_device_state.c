
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int ENOTSUPP ;
 int rt2x00_err (struct rt2x00_dev*,char*,int,int) ;
 int rt61pci_disable_radio (struct rt2x00_dev*) ;
 int rt61pci_enable_radio (struct rt2x00_dev*) ;
 int rt61pci_set_state (struct rt2x00_dev*,int) ;
 int rt61pci_toggle_irq (struct rt2x00_dev*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rt61pci_set_device_state(struct rt2x00_dev *rt2x00dev,
        enum dev_state state)
{
 int retval = 0;

 switch (state) {
 case 130:
  retval = rt61pci_enable_radio(rt2x00dev);
  break;
 case 131:
  rt61pci_disable_radio(rt2x00dev);
  break;
 case 132:
 case 133:
  rt61pci_toggle_irq(rt2x00dev, state);
  break;
 case 134:
 case 129:
 case 128:
 case 135:
  retval = rt61pci_set_state(rt2x00dev, state);
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
