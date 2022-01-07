
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct vc_data {int dummy; } ;


 int put_queue (struct vc_data*,int) ;

__attribute__((used)) static void to_utf8(struct vc_data *vc, uint c)
{
 if (c < 0x80)

  put_queue(vc, c);
 else if (c < 0x800) {

  put_queue(vc, 0xc0 | (c >> 6));
  put_queue(vc, 0x80 | (c & 0x3f));
     } else if (c < 0x10000) {
         if (c >= 0xD800 && c < 0xE000)
   return;
  if (c == 0xFFFF)
   return;

  put_queue(vc, 0xe0 | (c >> 12));
  put_queue(vc, 0x80 | ((c >> 6) & 0x3f));
  put_queue(vc, 0x80 | (c & 0x3f));
     } else if (c < 0x110000) {

  put_queue(vc, 0xf0 | (c >> 18));
  put_queue(vc, 0x80 | ((c >> 12) & 0x3f));
  put_queue(vc, 0x80 | ((c >> 6) & 0x3f));
  put_queue(vc, 0x80 | (c & 0x3f));
 }
}
