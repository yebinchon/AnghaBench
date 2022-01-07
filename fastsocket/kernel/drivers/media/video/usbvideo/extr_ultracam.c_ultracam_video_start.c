
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ultracam_reinit_iso (struct uvd*,int ) ;

__attribute__((used)) static void ultracam_video_start(struct uvd *uvd)
{
 ultracam_reinit_iso(uvd, 0);
}
