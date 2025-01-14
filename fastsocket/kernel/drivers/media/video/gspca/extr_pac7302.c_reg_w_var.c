
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u8 ;


 int D_ERR ;
 int D_STREAM ;


 int PDEBUG (int,char*) ;
 int USB_BUF_SZ ;
 int reg_w_buf (struct gspca_dev*,int,int const*,int) ;
 int reg_w_page (struct gspca_dev*,int const*,unsigned int) ;

__attribute__((used)) static void reg_w_var(struct gspca_dev *gspca_dev,
   const __u8 *seq,
   const __u8 *page3, unsigned int page3_len)
{
 int index, len;

 for (;;) {
  index = *seq++;
  len = *seq++;
  switch (len) {
  case 129:
   return;
  case 128:
   reg_w_page(gspca_dev, page3, page3_len);
   break;
  default:
   if (len > USB_BUF_SZ) {
    PDEBUG(D_ERR|D_STREAM,
     "Incorrect variable sequence");
    return;
   }
   while (len > 0) {
    if (len < 8) {
     reg_w_buf(gspca_dev,
      index, seq, len);
     seq += len;
     break;
    }
    reg_w_buf(gspca_dev, index, seq, 8);
    seq += 8;
    index += 8;
    len -= 8;
   }
  }
 }

}
