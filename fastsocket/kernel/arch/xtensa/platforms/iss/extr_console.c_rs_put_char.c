
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int SYS_write ;
 int __simc (int ,int,unsigned long,int,int ,int ) ;

__attribute__((used)) static int rs_put_char(struct tty_struct *tty, unsigned char ch)
{
 char buf[2];

 buf[0] = ch;
 buf[1] = '\0';
 __simc (SYS_write, 1, (unsigned long) buf, 1, 0, 0);
 return 1;
}
