
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ps3_param_av_multi_out { ____Placeholder_ps3_param_av_multi_out } ps3_param_av_multi_out ;
struct TYPE_2__ {int av_multi_out; } ;


 TYPE_1__ saved_params ;

enum ps3_param_av_multi_out ps3_os_area_get_av_multi_out(void)
{
    return saved_params.av_multi_out;
}
