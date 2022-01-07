
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bttv_crop {int rect; } ;
struct TYPE_3__ {int defrect; } ;
struct TYPE_4__ {TYPE_1__ cropcap; } ;


 int bttv_crop_calc_limits (struct bttv_crop*) ;
 TYPE_2__* bttv_tvnorms ;

__attribute__((used)) static void
bttv_crop_reset(struct bttv_crop *c, unsigned int norm)
{
 c->rect = bttv_tvnorms[norm].cropcap.defrect;
 bttv_crop_calc_limits(c);
}
