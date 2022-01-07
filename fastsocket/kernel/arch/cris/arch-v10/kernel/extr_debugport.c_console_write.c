
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int SIMCOUT (char const*,unsigned int) ;
 int console_write_direct (struct console*,char const*,unsigned int) ;
 int port ;

__attribute__((used)) static void
console_write(struct console *co, const char *buf, unsigned int len)
{
 if (!port)
  return;







        console_write_direct(co, buf, len);
}
