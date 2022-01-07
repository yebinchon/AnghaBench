
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char last_seq; unsigned char* sigqual; unsigned char qualptr; int average_fast; int average_slow; int last_seen; } ;
typedef TYPE_1__ wavepoint_history ;


 int WAVEPOINT_FAST_HISTORY ;
 unsigned char WAVEPOINT_HISTORY ;
 int jiffies ;

__attribute__((used)) static void wl_update_history(wavepoint_history *wavepoint, unsigned char sigqual, unsigned char seq)
{
  int i=0,num_missed=0,ptr=0;
  int average_fast=0,average_slow=0;

  num_missed=(seq-wavepoint->last_seq)%WAVEPOINT_HISTORY;

  if(num_missed)
    for(i=0;i<num_missed;i++)
      {
 wavepoint->sigqual[wavepoint->qualptr++]=0;
 wavepoint->qualptr %=WAVEPOINT_HISTORY;
      }
  wavepoint->last_seen=jiffies;
  wavepoint->last_seq=seq;
  wavepoint->sigqual[wavepoint->qualptr++]=sigqual;
  wavepoint->qualptr %=WAVEPOINT_HISTORY;
  ptr=(wavepoint->qualptr-WAVEPOINT_FAST_HISTORY+WAVEPOINT_HISTORY)%WAVEPOINT_HISTORY;

  for(i=0;i<WAVEPOINT_FAST_HISTORY;i++)
    {
      average_fast+=wavepoint->sigqual[ptr++];
      ptr %=WAVEPOINT_HISTORY;
    }

  average_slow=average_fast;
  for(i=WAVEPOINT_FAST_HISTORY;i<WAVEPOINT_HISTORY;i++)
    {
      average_slow+=wavepoint->sigqual[ptr++];
      ptr %=WAVEPOINT_HISTORY;
    }

  wavepoint->average_fast=average_fast/WAVEPOINT_FAST_HISTORY;
  wavepoint->average_slow=average_slow/WAVEPOINT_HISTORY;
}
