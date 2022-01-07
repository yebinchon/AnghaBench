
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int KERN_WARNING ;
 int e752x_printk (int ,char*,int ) ;
 int * membuf_message ;

__attribute__((used)) static void do_membuf_error(u8 errors)
{
 int i;

 for (i = 0; i < 4; i++) {
  if (errors & (1 << i))
   e752x_printk(KERN_WARNING, "Non-Fatal Error %s\n",
    membuf_message[i]);
 }
}
