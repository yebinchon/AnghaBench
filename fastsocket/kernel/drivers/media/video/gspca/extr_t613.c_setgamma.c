
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {size_t gamma; } ;
struct gspca_dev {int dummy; } ;


 int D_CONF ;
 int PDEBUG (int ,char*,size_t) ;
 int * gamma_table ;
 int reg_w_ixbuf (struct gspca_dev*,int,int ,int) ;

__attribute__((used)) static void setgamma(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 PDEBUG(D_CONF, "Gamma: %d", sd->gamma);
 reg_w_ixbuf(gspca_dev, 0x90,
  gamma_table[sd->gamma], sizeof gamma_table[0]);
}
