
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int decomp_ops; } ;
struct ov511_frame {int dummy; } ;


 scalar_t__ request_decompressor (struct usb_ov511*) ;

__attribute__((used)) static void
decompress(struct usb_ov511 *ov, struct ov511_frame *frame,
    unsigned char *pIn0, unsigned char *pOut0)
{
 if (!ov->decomp_ops)
  if (request_decompressor(ov))
   return;

}
