
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* ratio2dB ;

int
il3945_calc_db_from_ratio(int sig_ratio)
{

 if (sig_ratio >= 1000)
  return 60;



 if (sig_ratio >= 100)
  return 20 + (int)ratio2dB[sig_ratio / 10];


 if (sig_ratio < 1)
  return 0;


 return (int)ratio2dB[sig_ratio];
}
