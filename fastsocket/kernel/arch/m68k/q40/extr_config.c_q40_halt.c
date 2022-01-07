
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q40_LED_ON () ;
 int halted ;
 int printk (char*) ;

__attribute__((used)) static void q40_halt(void)
{
        halted = 1;
        printk("\n\n*******************\n"
     "  Called q40_halt\n"
     "*******************\n");
 Q40_LED_ON();
 while (1)
  ;
}
