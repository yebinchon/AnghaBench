
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct TYPE_3__ {int i; long m; int e; } ;
typedef TYPE_1__ iw_freq ;


 int* channel_bands ;
 int fee_read (int ,int,int*,int) ;

__attribute__((used)) static int
wv_frequency_list(u_long base,
    iw_freq * list,
    int max)
{
  u_short table[10];
  long freq = 0L;
  int i;
  const int BAND_NUM = 10;
  int c = 0;


  fee_read(base, 0x71 ,
    table, 10);


  i = 0;
  for(freq = 0; freq < 150; freq++)

    if(table[9 - (freq / 16)] & (1 << (freq % 16)))
      {

 while((((channel_bands[c] >> 1) - 24) < freq) &&
       (c < BAND_NUM))
   c++;
 list[i].i = c;


 list[i].m = (((freq + 24) * 5) + 24000L) * 10000;
 list[i++].e = 1;


 if(i >= max)
   return(i);
      }

  return(i);
}
