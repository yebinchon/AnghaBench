
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int DEBUG (int ,char*) ;
 int konicawc_set_misc (struct uvd*,int,int ,int) ;

__attribute__((used)) static inline void konicawc_camera_off(struct uvd *uvd)
{
 DEBUG(0, "camera off");
 konicawc_set_misc(uvd, 0x2, 0, 0x0b);
}
