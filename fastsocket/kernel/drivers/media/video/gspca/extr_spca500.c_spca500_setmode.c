
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef int __u8 ;
struct TYPE_3__ {int priv; } ;


 int reg_w (struct gspca_dev*,int ,int,int) ;

__attribute__((used)) static void spca500_setmode(struct gspca_dev *gspca_dev,
   __u8 xmult, __u8 ymult)
{
 int mode;


 reg_w(gspca_dev, 0, 0x8001, xmult);


 reg_w(gspca_dev, 0, 0x8002, ymult);


 mode = gspca_dev->cam.cam_mode[(int) gspca_dev->curr_mode].priv;
 reg_w(gspca_dev, 0, 0x8003, mode << 4);
}
