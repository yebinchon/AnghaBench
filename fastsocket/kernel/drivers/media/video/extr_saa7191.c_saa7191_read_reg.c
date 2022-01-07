
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {size_t* reg; } ;


 TYPE_1__* to_saa7191 (struct v4l2_subdev*) ;

__attribute__((used)) static u8 saa7191_read_reg(struct v4l2_subdev *sd, u8 reg)
{
 return to_saa7191(sd)->reg[reg];
}
