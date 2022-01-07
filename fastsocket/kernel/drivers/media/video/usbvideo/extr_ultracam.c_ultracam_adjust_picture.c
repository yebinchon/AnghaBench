
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ultracam_adjust_contrast (struct uvd*) ;
 int ultracam_set_brightness (struct uvd*) ;
 int ultracam_set_hue (struct uvd*) ;

__attribute__((used)) static void ultracam_adjust_picture(struct uvd *uvd)
{
 ultracam_adjust_contrast(uvd);
 ultracam_set_brightness(uvd);
 ultracam_set_hue(uvd);
}
