
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* save_area; } ;
struct TYPE_3__ {scalar_t__ esid; int vsid; } ;


 TYPE_2__* get_slb_shadow () ;
 scalar_t__ mk_esid_data (unsigned long,int,unsigned long) ;
 int mk_vsid_data (unsigned long,int,unsigned long) ;

__attribute__((used)) static inline void slb_shadow_update(unsigned long ea, int ssize,
         unsigned long flags,
         unsigned long entry)
{





 get_slb_shadow()->save_area[entry].esid = 0;
 get_slb_shadow()->save_area[entry].vsid = mk_vsid_data(ea, ssize, flags);
 get_slb_shadow()->save_area[entry].esid = mk_esid_data(ea, ssize, entry);
}
