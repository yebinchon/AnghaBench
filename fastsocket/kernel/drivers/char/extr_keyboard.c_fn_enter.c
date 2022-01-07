
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ kbdmode; } ;


 int VC_CRLF ;
 scalar_t__ VC_UNICODE ;
 int conv_uni_to_8bit (scalar_t__) ;
 scalar_t__ diacr ;
 TYPE_1__* kbd ;
 int put_queue (struct vc_data*,int) ;
 int to_utf8 (struct vc_data*,scalar_t__) ;
 scalar_t__ vc_kbd_mode (TYPE_1__*,int ) ;

__attribute__((used)) static void fn_enter(struct vc_data *vc)
{
 if (diacr) {
  if (kbd->kbdmode == VC_UNICODE)
   to_utf8(vc, diacr);
  else {
   int c = conv_uni_to_8bit(diacr);
   if (c != -1)
    put_queue(vc, c);
  }
  diacr = 0;
 }
 put_queue(vc, 13);
 if (vc_kbd_mode(kbd, VC_CRLF))
  put_queue(vc, 10);
}
