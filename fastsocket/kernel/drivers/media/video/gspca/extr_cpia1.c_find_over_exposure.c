
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLICKER_ALLOWABLE_OVER_EXPOSURE ;
 int FLICKER_BRIGHTNESS_CONSTANT ;
 int FLICKER_MAX_EXPOSURE ;

__attribute__((used)) static int find_over_exposure(int brightness)
{
 int MaxAllowableOverExposure, OverExposure;

 MaxAllowableOverExposure = FLICKER_MAX_EXPOSURE - brightness -
       FLICKER_BRIGHTNESS_CONSTANT;

 if (MaxAllowableOverExposure < FLICKER_ALLOWABLE_OVER_EXPOSURE)
  OverExposure = MaxAllowableOverExposure;
 else
  OverExposure = FLICKER_ALLOWABLE_OVER_EXPOSURE;

 return OverExposure;
}
