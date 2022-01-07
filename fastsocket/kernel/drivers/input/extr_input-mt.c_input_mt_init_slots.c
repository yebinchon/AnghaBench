
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_slot {int dummy; } ;
struct input_dev {unsigned int mtsize; int * mt; } ;


 int ABS_MT_SLOT ;
 int ABS_MT_TRACKING_ID ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int TRKID_MAX ;
 int input_mt_set_value (int *,int ,int) ;
 int input_set_abs_params (struct input_dev*,int ,int ,unsigned int,int ,int ) ;
 int input_set_events_per_packet (struct input_dev*,int) ;
 int * kcalloc (unsigned int,int,int ) ;

int input_mt_init_slots(struct input_dev *dev, unsigned int num_slots)
{
 int i;

 if (!num_slots)
  return 0;
 if (dev->mt)
  return dev->mtsize != num_slots ? -EINVAL : 0;

 dev->mt = kcalloc(num_slots, sizeof(struct input_mt_slot), GFP_KERNEL);
 if (!dev->mt)
  return -ENOMEM;

 dev->mtsize = num_slots;
 input_set_abs_params(dev, ABS_MT_SLOT, 0, num_slots - 1, 0, 0);
 input_set_abs_params(dev, ABS_MT_TRACKING_ID, 0, TRKID_MAX, 0, 0);






 for (i = 0; i < num_slots; i++)
  input_mt_set_value(&dev->mt[i], ABS_MT_TRACKING_ID, -1);

 return 0;
}
