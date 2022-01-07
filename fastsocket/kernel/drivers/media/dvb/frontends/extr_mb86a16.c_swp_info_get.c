
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int master_clk; } ;



__attribute__((used)) static void swp_info_get(struct mb86a16_state *state,
    int fOSC_start,
    int smrt,
    int v, int R,
    int swp_ofs,
    int *fOSC,
    int *afcex_freq,
    unsigned char *AFCEX_L,
    unsigned char *AFCEX_H)
{
 int AFCEX ;
 int crnt_swp_freq ;

 crnt_swp_freq = fOSC_start * 1000 + v * swp_ofs;

 if (R == 0)
  *fOSC = (crnt_swp_freq + 1000) / 2000 * 2;
 else
  *fOSC = (crnt_swp_freq + 500) / 1000;

 if (*fOSC >= crnt_swp_freq)
  *afcex_freq = *fOSC * 1000 - crnt_swp_freq;
 else
  *afcex_freq = crnt_swp_freq - *fOSC * 1000;

 AFCEX = *afcex_freq * 8192 / state->master_clk;
 *AFCEX_L = AFCEX & 0x00ff;
 *AFCEX_H = (AFCEX & 0x0f00) >> 8;
}
