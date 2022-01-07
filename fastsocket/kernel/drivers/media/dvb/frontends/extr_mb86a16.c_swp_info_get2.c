
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int master_clk; } ;



__attribute__((used)) static void swp_info_get2(struct mb86a16_state *state,
     int smrt,
     int R,
     int swp_freq,
     int *afcex_freq,
     int *fOSC,
     unsigned char *AFCEX_L,
     unsigned char *AFCEX_H)
{
 int AFCEX ;

 if (R == 0)
  *fOSC = (swp_freq + 1000) / 2000 * 2;
 else
  *fOSC = (swp_freq + 500) / 1000;

 if (*fOSC >= swp_freq)
  *afcex_freq = *fOSC * 1000 - swp_freq;
 else
  *afcex_freq = swp_freq - *fOSC * 1000;

 AFCEX = *afcex_freq * 8192 / state->master_clk;
 *AFCEX_L = AFCEX & 0x00ff;
 *AFCEX_H = (AFCEX & 0x0f00) >> 8;
}
