
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int common (struct gspca_dev*) ;
 int ctrl_in (struct gspca_dev*,int,int,int,int,int,int *) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int msleep (int) ;
 int tbl_init_at_startup ;

__attribute__((used)) static int mi2020_init_at_startup(struct gspca_dev *gspca_dev)
{
 u8 c;

 ctrl_in(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &c);
 ctrl_in(gspca_dev, 0xc0, 2, 0x0000, 0x0004, 1, &c);

 fetch_validx(gspca_dev, tbl_init_at_startup,
   ARRAY_SIZE(tbl_init_at_startup));

 ctrl_out(gspca_dev, 0x40, 1, 0x7a00, 0x8030, 0, ((void*)0));
 ctrl_in(gspca_dev, 0xc0, 2, 0x7a00, 0x8030, 1, &c);

 common(gspca_dev);

 msleep(61);


 ctrl_out(gspca_dev, 0x40, 1, 0x0001, 0x0000, 0, ((void*)0));

 return 0;
}
