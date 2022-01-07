
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_device_id {int flags; scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; scalar_t__ driver_info; } ;
struct TYPE_2__ {scalar_t__ bustype; scalar_t__ vendor; scalar_t__ product; scalar_t__ version; } ;
struct input_dev {TYPE_1__ id; } ;


 int ABS_MAX ;
 int EV_MAX ;
 int FF_MAX ;
 int INPUT_DEVICE_ID_MATCH_BUS ;
 int INPUT_DEVICE_ID_MATCH_PRODUCT ;
 int INPUT_DEVICE_ID_MATCH_VENDOR ;
 int INPUT_DEVICE_ID_MATCH_VERSION ;
 int KEY_MAX ;
 int LED_MAX ;
 int MATCH_BIT (int ,int ) ;
 int MSC_MAX ;
 int REL_MAX ;
 int SND_MAX ;
 int SW_MAX ;
 int absbit ;
 int evbit ;
 int ffbit ;
 int keybit ;
 int ledbit ;
 int mscbit ;
 int relbit ;
 int sndbit ;
 int swbit ;

__attribute__((used)) static const struct input_device_id *input_match_device(const struct input_device_id *id,
       struct input_dev *dev)
{
 int i;

 for (; id->flags || id->driver_info; id++) {

  if (id->flags & INPUT_DEVICE_ID_MATCH_BUS)
   if (id->bustype != dev->id.bustype)
    continue;

  if (id->flags & INPUT_DEVICE_ID_MATCH_VENDOR)
   if (id->vendor != dev->id.vendor)
    continue;

  if (id->flags & INPUT_DEVICE_ID_MATCH_PRODUCT)
   if (id->product != dev->id.product)
    continue;

  if (id->flags & INPUT_DEVICE_ID_MATCH_VERSION)
   if (id->version != dev->id.version)
    continue;

  MATCH_BIT(evbit, EV_MAX);
  MATCH_BIT(keybit, KEY_MAX);
  MATCH_BIT(relbit, REL_MAX);
  MATCH_BIT(absbit, ABS_MAX);
  MATCH_BIT(mscbit, MSC_MAX);
  MATCH_BIT(ledbit, LED_MAX);
  MATCH_BIT(sndbit, SND_MAX);
  MATCH_BIT(ffbit, FF_MAX);
  MATCH_BIT(swbit, SW_MAX);

  return id;
 }

 return ((void*)0);
}
