
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int reg_w (struct gspca_dev*,int const,int const) ;

__attribute__((used)) static void reg_w_seq(struct gspca_dev *gspca_dev,
  const __u8 *seq, int len)
{
 while (--len >= 0) {
  reg_w(gspca_dev, seq[0], seq[1]);
  seq += 2;
 }
}
