
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct validx {int idx; int val; } ;
struct gspca_dev {int dummy; } ;


 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;
 int msleep (int) ;

int fetch_validx(struct gspca_dev *gspca_dev, struct validx *tbl, int len)
{
 int n;

 for (n = 0; n < len; n++) {
  if (tbl[n].idx != 0xffff)
   ctrl_out(gspca_dev, 0x40, 1, tbl[n].val,
     tbl[n].idx, 0, ((void*)0));
  else if (tbl[n].val == 0xffff)
   break;
  else
   msleep(tbl[n].val);
 }
 return n;
}
