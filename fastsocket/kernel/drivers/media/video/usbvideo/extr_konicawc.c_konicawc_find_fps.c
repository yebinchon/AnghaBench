
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG (int,char*,int,int,...) ;
 size_t MAX_SPEED ;
 int** spd_to_fps ;

__attribute__((used)) static int konicawc_find_fps(int size, int fps)
{
 int i;

 fps *= 3;
 DEBUG(1, "konica_find_fps: size = %d fps = %d", size, fps);
 if(fps <= spd_to_fps[size][0])
  return 0;

 if(fps >= spd_to_fps[size][MAX_SPEED])
  return MAX_SPEED;

 for(i = 0; i < MAX_SPEED; i++) {
  if((fps >= spd_to_fps[size][i]) && (fps <= spd_to_fps[size][i+1])) {
   DEBUG(2, "fps %d between %d and %d", fps, i, i+1);
   if( (fps - spd_to_fps[size][i]) < (spd_to_fps[size][i+1] - fps))
    return i;
   else
    return i+1;
  }
 }
 return MAX_SPEED+1;
}
