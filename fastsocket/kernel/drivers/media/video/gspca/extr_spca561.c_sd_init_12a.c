
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int PDEBUG (int ,char*) ;
 int init_161rev12A (struct gspca_dev*) ;

__attribute__((used)) static int sd_init_12a(struct gspca_dev *gspca_dev)
{
 PDEBUG(D_STREAM, "Chip revision: 012a");
 init_161rev12A(gspca_dev);
 return 0;
}
