
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ npb; } ;
union chan_param_mem {TYPE_1__ pp; } ;
typedef scalar_t__ uint16_t ;



__attribute__((used)) static void ipu_ch_param_set_burst_size(union chan_param_mem *params,
     uint16_t burst_pixels)
{
 params->pp.npb = burst_pixels - 1;
}
