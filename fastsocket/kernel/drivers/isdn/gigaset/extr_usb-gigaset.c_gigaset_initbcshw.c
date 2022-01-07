
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * usb; } ;
struct bc_state {TYPE_1__ hw; } ;



__attribute__((used)) static int gigaset_initbcshw(struct bc_state *bcs)
{

 bcs->hw.usb = ((void*)0);
 return 1;
}
