
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;
 int fetch_idxdata (struct gspca_dev*,int ,int ) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int tbl_common_0B ;
 int tbl_common_3B ;

__attribute__((used)) static void common(struct gspca_dev *gspca_dev)
{
 fetch_validx(gspca_dev, tbl_common_0B, ARRAY_SIZE(tbl_common_0B));
 fetch_idxdata(gspca_dev, tbl_common_3B, ARRAY_SIZE(tbl_common_3B));
 ctrl_out(gspca_dev, 0x40, 1, 0x0041, 0x0000, 0, ((void*)0));
}
