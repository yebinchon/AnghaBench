
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int ctrl_inac; } ;


 int ILLUM_BOT ;
 int ILLUM_TOP ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 gspca_dev->ctrl_inac = (1 << ILLUM_TOP) | (1 << ILLUM_BOT);
 return 0;
}
