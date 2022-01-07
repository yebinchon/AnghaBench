
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTADDR_ENH ;
 int PORTADR (unsigned int) ;
 int inb (int ) ;
 int printk (char*) ;

__attribute__((used)) static int aha1740_test_port(unsigned int base)
{
 if ( inb(PORTADR(base)) & PORTADDR_ENH )
  return 1;

 printk("aha174x: Board detected, but not in enhanced mode, so disabled it.\n");
 return 0;
}
