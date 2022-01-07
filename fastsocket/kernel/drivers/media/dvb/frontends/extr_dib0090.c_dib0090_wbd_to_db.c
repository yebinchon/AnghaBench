
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib0090_state {int wbd_offset; } ;
typedef scalar_t__ s16 ;


 int ARRAY_SIZE (int ) ;
 int dib0090_wbd_slopes ;
 scalar_t__ slopes_to_scale (int ,int ,int) ;

__attribute__((used)) static s16 dib0090_wbd_to_db(struct dib0090_state *state, u16 wbd)
{
 wbd &= 0x3ff;
 if (wbd < state->wbd_offset)
  wbd = 0;
 else
  wbd -= state->wbd_offset;

 return -640 + (s16) slopes_to_scale(dib0090_wbd_slopes, ARRAY_SIZE(dib0090_wbd_slopes), wbd);
}
