
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dib3000mc_state {int dummy; } ;
typedef scalar_t__ s16 ;


 scalar_t__ TRANSMISSION_MODE_8K ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;
 int* impulse_noise_val ;

__attribute__((used)) static void dib3000mc_set_impulse_noise(struct dib3000mc_state *state, u8 mode, s16 nfft)
{
 u16 i;
 for (i = 58; i < 87; i++)
  dib3000mc_write_word(state, i, impulse_noise_val[i-58]);

 if (nfft == TRANSMISSION_MODE_8K) {
  dib3000mc_write_word(state, 58, 0x3b);
  dib3000mc_write_word(state, 84, 0x00);
  dib3000mc_write_word(state, 85, 0x8200);
 }

 dib3000mc_write_word(state, 34, 0x1294);
 dib3000mc_write_word(state, 35, 0x1ff8);
 if (mode == 1)
  dib3000mc_write_word(state, 55, dib3000mc_read_word(state, 55) | (1 << 10));
}
