
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int tbl_commmon ;
 int tbl_init_at_startup ;

__attribute__((used)) static int ov9655_init_at_startup(struct gspca_dev *gspca_dev)
{
 fetch_validx(gspca_dev, tbl_init_at_startup,
   ARRAY_SIZE(tbl_init_at_startup));
 fetch_validx(gspca_dev, tbl_commmon, ARRAY_SIZE(tbl_commmon));


 return 0;
}
