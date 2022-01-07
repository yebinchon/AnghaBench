
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int tbl_common ;

__attribute__((used)) static void common(struct gspca_dev *gspca_dev)
{
 fetch_validx(gspca_dev, tbl_common, ARRAY_SIZE(tbl_common));
}
