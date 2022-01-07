
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static int carl9170_find_freq_idx(int nfreqs, u8 *freqs, u8 f)
{
 int idx = nfreqs - 2;

 while (idx >= 0) {
  if (f >= freqs[idx])
   return idx;
  idx--;
 }

 return 0;
}
