
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int GFP_KERNEL ;
 struct tty_struct* kzalloc (int,int ) ;

struct tty_struct *alloc_tty_struct(void)
{
 return kzalloc(sizeof(struct tty_struct), GFP_KERNEL);
}
