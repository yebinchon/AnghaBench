
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx2341x_mpeg_params {int dummy; } ;


 int cx2341x_calc_audio_properties (struct cx2341x_mpeg_params*) ;
 struct cx2341x_mpeg_params default_params ;

void cx2341x_fill_defaults(struct cx2341x_mpeg_params *p)
{
 *p = default_params;
 cx2341x_calc_audio_properties(p);
}
