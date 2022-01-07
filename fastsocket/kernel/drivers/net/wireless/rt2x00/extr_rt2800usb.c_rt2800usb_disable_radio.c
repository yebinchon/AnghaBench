
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int rt2800_disable_radio (struct rt2x00_dev*) ;
 int rt2x00usb_disable_radio (struct rt2x00_dev*) ;

__attribute__((used)) static void rt2800usb_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 rt2800_disable_radio(rt2x00dev);
 rt2x00usb_disable_radio(rt2x00dev);
}
