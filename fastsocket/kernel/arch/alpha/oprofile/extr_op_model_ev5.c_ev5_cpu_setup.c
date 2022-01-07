
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct op_register_config {int reset_values; int freq; int proc_mode; int mux_select; } ;


 int wrperfmon (int,int ) ;

__attribute__((used)) static void
ev5_cpu_setup (void *x)
{
 struct op_register_config *reg = x;

 wrperfmon(2, reg->mux_select);
 wrperfmon(3, reg->proc_mode);
 wrperfmon(4, reg->freq);
 wrperfmon(6, reg->reset_values);
}
