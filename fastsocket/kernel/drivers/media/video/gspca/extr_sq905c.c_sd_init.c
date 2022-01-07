
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int SQ905C_CLEAR ;
 int sq905c_command (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 int ret;


 ret = sq905c_command(gspca_dev, SQ905C_CLEAR, 0);
 return ret;
}
