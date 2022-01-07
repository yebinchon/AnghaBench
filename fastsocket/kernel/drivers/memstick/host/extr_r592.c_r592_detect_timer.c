
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int host; } ;


 int memstick_detect_change (int ) ;
 int r592_update_card_detect (struct r592_device*) ;

__attribute__((used)) static void r592_detect_timer(long unsigned int data)
{
 struct r592_device *dev = (struct r592_device *)data;
 r592_update_card_detect(dev);
 memstick_detect_change(dev->host);
}
