
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evergreen_wm_params {int num_heads; } ;


 int evergreen_available_bandwidth (struct evergreen_wm_params*) ;
 int evergreen_average_bandwidth (struct evergreen_wm_params*) ;

__attribute__((used)) static bool evergreen_average_bandwidth_vs_available_bandwidth(struct evergreen_wm_params *wm)
{
 if (evergreen_average_bandwidth(wm) <=
     (evergreen_available_bandwidth(wm) / wm->num_heads))
  return 1;
 else
  return 0;
}
