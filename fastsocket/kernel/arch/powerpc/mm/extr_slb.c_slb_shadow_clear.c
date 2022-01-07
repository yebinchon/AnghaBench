
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* save_area; } ;
struct TYPE_3__ {scalar_t__ esid; } ;


 TYPE_2__* get_slb_shadow () ;

__attribute__((used)) static inline void slb_shadow_clear(unsigned long entry)
{
 get_slb_shadow()->save_area[entry].esid = 0;
}
