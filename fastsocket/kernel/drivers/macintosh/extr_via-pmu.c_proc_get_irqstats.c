
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int* pmu_irq_stats ;
 int sprintf (char*,char*,int,int,char const*) ;

__attribute__((used)) static int
proc_get_irqstats(char *page, char **start, off_t off,
    int count, int *eof, void *data)
{
 int i;
 char* p = page;
 static const char *irq_names[] = {
  "Total CB1 triggered events",
  "Total GPIO1 triggered events",
  "PC-Card eject button",
  "Sound/Brightness button",
  "ADB message",
  "Battery state change",
  "Environment interrupt",
  "Tick timer",
  "Ghost interrupt (zero len)",
  "Empty interrupt (empty mask)",
  "Max irqs in a row"
        };

 for (i=0; i<11; i++) {
  p += sprintf(p, " %2u: %10u (%s)\n",
        i, pmu_irq_stats[i], irq_names[i]);
 }
 return p - page;
}
