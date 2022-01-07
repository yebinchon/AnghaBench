
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mvv_write (int,int) ;
 int standard ;

__attribute__((used)) static void pms_framerate(short frr)
{
 int fps=(standard==1)?30:25;
 if(frr==0)
  return;
 fps=fps/frr;
 mvv_write(0x14,0x80|fps);
 mvv_write(0x15,1);
}
