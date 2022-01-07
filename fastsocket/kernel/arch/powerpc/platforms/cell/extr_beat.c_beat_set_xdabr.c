
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DABRX_KERNEL ;
 int DABRX_USER ;
 scalar_t__ beat_set_dabr (unsigned long,int) ;

int beat_set_xdabr(unsigned long dabr)
{
 if (beat_set_dabr(dabr, DABRX_KERNEL | DABRX_USER))
  return -1;
 return 0;
}
