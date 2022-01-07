
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINT (char*,char*) ;
 int printk (char*,...) ;
 int * reply_buffer ;

__attribute__((used)) static void print_result(char *message, int inr)
{
 int i;

 DPRINT("%s ", message);
 if (inr >= 0)
  for (i = 0; i < inr; i++)
   printk("repl[%d]=%x ", i, reply_buffer[i]);
 printk("\n");
}
