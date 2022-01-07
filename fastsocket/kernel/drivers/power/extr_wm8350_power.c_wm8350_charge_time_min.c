
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev_g_coeff; } ;
struct wm8350 {TYPE_1__ power; } ;



__attribute__((used)) static inline int wm8350_charge_time_min(struct wm8350 *wm8350, int min)
{
 if (!wm8350->power.rev_g_coeff)
  return (((min - 30) / 15) & 0xf) << 8;
 else
  return (((min - 30) / 30) & 0xf) << 8;
}
