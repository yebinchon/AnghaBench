
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ath9k_cmn_count_streams(unsigned int chainmask, int max)
{
 int streams = 0;

 do {
  if (++streams == max)
   break;
 } while ((chainmask = chainmask & (chainmask - 1)));

 return streams;
}
