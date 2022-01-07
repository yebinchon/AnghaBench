
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_and_or (struct cx18*,int,int,int) ;

__attribute__((used)) static void set_balance(struct cx18 *cx, int balance)
{
 int bal = balance >> 8;
 if (bal > 0x80) {

  cx18_av_and_or(cx, 0x8d5, 0x7f, 0x80);

  cx18_av_and_or(cx, 0x8d5, ~0x7f, bal & 0x7f);
 } else {

  cx18_av_and_or(cx, 0x8d5, 0x7f, 0x00);

  cx18_av_and_or(cx, 0x8d5, ~0x7f, 0x80 - bal);
 }
}
