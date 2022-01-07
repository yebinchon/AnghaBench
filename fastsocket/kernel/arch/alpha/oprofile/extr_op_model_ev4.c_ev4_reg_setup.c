
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_system_config {int dummy; } ;
struct op_register_config {unsigned long mux_select; scalar_t__ need_reset; scalar_t__ reset_values; scalar_t__ freq; scalar_t__ proc_mode; } ;
struct op_counter_config {int event; unsigned long count; scalar_t__ enabled; } ;



__attribute__((used)) static void
ev4_reg_setup(struct op_register_config *reg,
       struct op_counter_config *ctr,
       struct op_system_config *sys)
{
 unsigned long ctl = 0, count, hilo;
 ctl |= (ctr[0].enabled ? ctr[0].event << 8 : 14 << 8);
 ctl |= (ctr[1].enabled ? (ctr[1].event - 16) << 32 : 7ul << 32);







 count = ctr[0].count;
 if (count <= 4096)
  count = 4096, hilo = 1;
 else
  count = 65536, hilo = 0;
 ctr[0].count = count;
 ctl |= (ctr[0].enabled && hilo) << 3;

 count = ctr[1].count;
 if (count <= 256)
  count = 256, hilo = 1;
 else
  count = 4096, hilo = 0;
 ctr[1].count = count;
 ctl |= (ctr[1].enabled && hilo);

 reg->mux_select = ctl;





 reg->proc_mode = 0;


 reg->freq = 0;


 reg->reset_values = 0;
 reg->need_reset = 0;

}
