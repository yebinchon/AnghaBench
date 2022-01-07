
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18 {int dummy; } ;


 int cx18_av_read (struct cx18*,int) ;

__attribute__((used)) static int get_balance(struct cx18 *cx)
{



 int balance = cx18_av_read(cx, 0x8d5) & 0x7f;

 if ((cx18_av_read(cx, 0x8d5) & 0x80) == 0)
  balance = 0x80 - balance;
 else
  balance = 0x80 + balance;
 return balance << 8;
}
