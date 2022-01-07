
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rt2x00_dev {TYPE_3__* fw; TYPE_2__* ops; int cap_flags; } ;
struct TYPE_6__ {int size; int data; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* load_firmware ) (struct rt2x00_dev*,int ,int ) ;} ;


 int REQUIRE_FIRMWARE ;
 int rt2x00leds_led_assoc (struct rt2x00_dev*,int) ;
 int rt2x00lib_request_firmware (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,int ,int ) ;
 int test_bit (int ,int *) ;

int rt2x00lib_load_firmware(struct rt2x00_dev *rt2x00dev)
{
 int retval;

 if (!test_bit(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags))
  return 0;

 if (!rt2x00dev->fw) {
  retval = rt2x00lib_request_firmware(rt2x00dev);
  if (retval)
   return retval;
 }




 retval = rt2x00dev->ops->lib->load_firmware(rt2x00dev,
          rt2x00dev->fw->data,
          rt2x00dev->fw->size);






 rt2x00leds_led_assoc(rt2x00dev, 0);

 return retval;
}
