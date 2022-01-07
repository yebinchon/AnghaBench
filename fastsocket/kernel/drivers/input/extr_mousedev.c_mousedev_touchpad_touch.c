
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buttons; } ;
struct mousedev {scalar_t__ touch; scalar_t__ frac_dy; scalar_t__ frac_dx; scalar_t__ pkt_count; TYPE_1__ packet; } ;


 int clear_bit (int ,int *) ;
 scalar_t__ jiffies ;
 struct mousedev* mousedev_mix ;
 int mousedev_notify_readers (struct mousedev*,TYPE_1__*) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;
 int tap_time ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mousedev_touchpad_touch(struct mousedev *mousedev, int value)
{
 if (!value) {
  if (mousedev->touch &&
      time_before(jiffies,
    mousedev->touch + msecs_to_jiffies(tap_time))) {





   set_bit(0, &mousedev->packet.buttons);
   set_bit(0, &mousedev_mix->packet.buttons);
   mousedev_notify_readers(mousedev, &mousedev_mix->packet);
   mousedev_notify_readers(mousedev_mix,
      &mousedev_mix->packet);
   clear_bit(0, &mousedev->packet.buttons);
   clear_bit(0, &mousedev_mix->packet.buttons);
  }
  mousedev->touch = mousedev->pkt_count = 0;
  mousedev->frac_dx = 0;
  mousedev->frac_dy = 0;

 } else if (!mousedev->touch)
  mousedev->touch = jiffies;
}
