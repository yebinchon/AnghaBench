
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_FRAM ;
 int PDEBUG (int ,char*,int ) ;
 int msleep (int) ;
 int reg_r_12 (struct gspca_dev*,int,int,int) ;
 int reg_w_riv (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void spca504_acknowledged_command(struct gspca_dev *gspca_dev,
        u8 req, u16 idx, u16 val)
{
 u16 notdone;

 reg_w_riv(gspca_dev, req, idx, val);
 notdone = reg_r_12(gspca_dev, 0x01, 0x0001, 1);
 reg_w_riv(gspca_dev, req, idx, val);

 PDEBUG(D_FRAM, "before wait 0x%04x", notdone);

 msleep(200);
 notdone = reg_r_12(gspca_dev, 0x01, 0x0001, 1);
 PDEBUG(D_FRAM, "after wait 0x%04x", notdone);
}
