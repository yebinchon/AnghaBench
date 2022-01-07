
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* mode; } ;
typedef TYPE_1__ dmx_filter_t ;


 int DMX_FILTER_SIZE ;

__attribute__((used)) static inline void invert_mode(dmx_filter_t *filter)
{
 int i;

 for (i = 0; i < DMX_FILTER_SIZE; i++)
  filter->mode[i] ^= 0xff;
}
