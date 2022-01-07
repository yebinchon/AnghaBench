
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
typedef scalar_t__ timf ;
struct dib3000mc_state {int timf; } ;
typedef int s16 ;


 int TRANSMISSION_MODE_2K ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int ) ;
 int dprintk (char*,int) ;
 int msleep (int) ;

__attribute__((used)) static int dib3000mc_set_timing(struct dib3000mc_state *state, s16 nfft, u32 bw, u8 update_offset)
{
 u32 timf;

 if (state->timf == 0) {
  timf = 1384402;
  if (update_offset)
   msleep(200);
 } else
  timf = state->timf;

 timf *= (bw / 1000);

 if (update_offset) {
  s16 tim_offs = dib3000mc_read_word(state, 416);

  if (tim_offs & 0x2000)
   tim_offs -= 0x4000;

  if (nfft == TRANSMISSION_MODE_2K)
   tim_offs *= 4;

  timf += tim_offs;
  state->timf = timf / (bw / 1000);
 }

 dprintk("timf: %d\n", timf);

 dib3000mc_write_word(state, 23, (u16) (timf >> 16));
 dib3000mc_write_word(state, 24, (u16) (timf ) & 0xffff);

 return 0;
}
