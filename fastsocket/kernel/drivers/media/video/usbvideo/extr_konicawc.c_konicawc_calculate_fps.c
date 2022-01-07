
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {struct konicawc* user_data; } ;
struct konicawc {size_t size; size_t speed; } ;


 int** spd_to_fps ;

__attribute__((used)) static int konicawc_calculate_fps(struct uvd *uvd)
{
 struct konicawc *cam = uvd->user_data;
 return spd_to_fps[cam->size][cam->speed]/3;
}
