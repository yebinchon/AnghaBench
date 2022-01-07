
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_channel {unsigned int input_mask; } ;



unsigned int pvr2_channel_get_limited_inputs(struct pvr2_channel *cp)
{
 return cp->input_mask;
}
