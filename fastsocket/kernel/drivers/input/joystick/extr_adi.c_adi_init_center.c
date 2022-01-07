
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adi {int axes10; int axes8; int hats; int pad; int* abs; scalar_t__ id; TYPE_1__* dev; int length; } ;
struct TYPE_2__ {int* abs; } ;


 int ABS_RUDDER ;
 int ABS_THROTTLE ;
 scalar_t__ ADI_ID_WGPE ;
 int input_set_abs_params (TYPE_1__*,int,int,int,int,int) ;

__attribute__((used)) static void adi_init_center(struct adi *adi)
{
 int i, t, x;

 if (!adi->length)
  return;

 for (i = 0; i < adi->axes10 + adi->axes8 + (adi->hats + (adi->pad != -1)) * 2; i++) {

  t = adi->abs[i];
  x = adi->dev->abs[t];

  if (t == ABS_THROTTLE || t == ABS_RUDDER || adi->id == ADI_ID_WGPE)
   x = i < adi->axes10 ? 512 : 128;

  if (i < adi->axes10)
   input_set_abs_params(adi->dev, t, 64, x * 2 - 64, 2, 16);
  else if (i < adi->axes10 + adi->axes8)
   input_set_abs_params(adi->dev, t, 48, x * 2 - 48, 1, 16);
  else
   input_set_abs_params(adi->dev, t, -1, 1, 0, 0);
 }
}
