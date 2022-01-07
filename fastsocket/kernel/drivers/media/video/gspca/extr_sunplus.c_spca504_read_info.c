
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*,int ,int ,int ,int ,int ,int ) ;
 int reg_r_1 (struct gspca_dev*,int) ;

__attribute__((used)) static void spca504_read_info(struct gspca_dev *gspca_dev)
{
 int i;
 u8 info[6];

 for (i = 0; i < 6; i++)
  info[i] = reg_r_1(gspca_dev, i);
 PDEBUG(D_STREAM,
  "Read info: %d %d %d %d %d %d."
  " Should be 1,0,2,2,0,0",
  info[0], info[1], info[2],
  info[3], info[4], info[5]);
}
