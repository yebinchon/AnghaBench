
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int) ;

__attribute__((used)) static void konica_stream_on(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 1, 0x0b);
}
