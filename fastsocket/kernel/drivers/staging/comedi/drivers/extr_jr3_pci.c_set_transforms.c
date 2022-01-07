
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct transform_t {TYPE_3__* link; } ;
struct jr3_channel {TYPE_2__* transforms; } ;
struct TYPE_6__ {scalar_t__ link_type; int link_amount; } ;
struct TYPE_5__ {TYPE_1__* link; } ;
struct TYPE_4__ {int link_amount; int link_type; } ;


 scalar_t__ end_x_form ;
 int set_s16 (int *,int ) ;
 int set_u16 (int *,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void set_transforms(volatile struct jr3_channel *channel,
      struct transform_t transf, short num)
{
 int i;

 num &= 0x000f;
 for (i = 0; i < 8; i++) {

  set_u16(&channel->transforms[num].link[i].link_type,
   transf.link[i].link_type);
  udelay(1);
  set_s16(&channel->transforms[num].link[i].link_amount,
   transf.link[i].link_amount);
  udelay(1);
  if (transf.link[i].link_type == end_x_form) {
   break;
  }
 }
}
