
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_system_config {int enable_user; int enable_kernel; int enable_pal; } ;
struct op_register_config {int mux_select; int proc_mode; int freq; int reset_values; int need_reset; } ;
struct op_counter_config {unsigned long event; unsigned long count; int enabled; } ;



__attribute__((used)) static void
common_reg_setup(struct op_register_config *reg,
   struct op_counter_config *ctr,
   struct op_system_config *sys,
   int cbox1_ofs, int cbox2_ofs)
{
 int i, ctl, reset, need_reset;
 ctl = 0;
 for (i = 0; i < 3; ++i) {
  unsigned long event = ctr[i].event;
  if (!ctr[i].enabled)
   continue;


  if (i == 2) {
   if (event == 0)
    event = 12+48;
   else if (event == 2+41)
    event = 4+65;
  }


  if (event < 2)
   ctl |= event << 31;
  else if (event < 24)
              ;
  else if (event < 40)
   ctl |= (event - 24) << 4;
  else if (event < 48)
   ctl |= (event - 40) << cbox1_ofs | 15 << 4;
  else if (event < 64)
   ctl |= event - 48;
  else if (event < 72)
   ctl |= (event - 64) << cbox2_ofs | 15;
 }
 reg->mux_select = ctl;




 ctl = 0;
 ctl |= !sys->enable_pal << 9;
 ctl |= !sys->enable_kernel << 8;
 ctl |= !sys->enable_user << 30;
 reg->proc_mode = ctl;






 ctl = reset = need_reset = 0;
 for (i = 0; i < 3; ++i) {
  unsigned long max, hilo, count = ctr[i].count;
  if (!ctr[i].enabled)
   continue;

  if (count <= 256)
   count = 256, hilo = 3, max = 256;
  else {
   max = (i == 2 ? 16384 : 65536);
   hilo = 2;
   if (count > max)
    count = max;
  }
  ctr[i].count = count;

  ctl |= hilo << (8 - i*2);
  reset |= (max - count) << (48 - 16*i);
  if (count != max)
   need_reset |= 1 << i;
 }
 reg->freq = ctl;
 reg->reset_values = reset;
 reg->need_reset = need_reset;
}
