
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int reg_w (struct gspca_dev*,int,int const*,int) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 const __u8 stop = 0x09;

 reg_w(gspca_dev, 0x01, &stop, 1);

 return 0;
}
