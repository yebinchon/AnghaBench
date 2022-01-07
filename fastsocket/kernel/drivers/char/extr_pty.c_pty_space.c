
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int memory_used; } ;
struct tty_struct {TYPE_1__ buf; } ;



__attribute__((used)) static int pty_space(struct tty_struct *to)
{
 int n = 8192 - to->buf.memory_used;
 if (n < 0)
  return 0;
 return n;
}
