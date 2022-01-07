
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DRAM_ENTRY ;
 int KERN_WARNING ;
 int e752x_printk (int ,char*,int ,int ) ;
 int * fatal_message ;
 int * global_message ;
 scalar_t__ report_non_memory_errors ;

__attribute__((used)) static void do_global_error(int fatal, u32 errors)
{
 int i;

 for (i = 0; i < 11; i++) {
  if (errors & (1 << i)) {




   if ((i == DRAM_ENTRY) || report_non_memory_errors)
    e752x_printk(KERN_WARNING, "%sError %s\n",
     fatal_message[fatal],
     global_message[i]);
  }
 }
}
