
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_WRONLY ;
 void* checked_open (char*,int ) ;
 char* hwpoison_debug_fs ;
 void* hwpoison_forget_fd ;
 void* hwpoison_inject_fd ;
 scalar_t__ opt_hwpoison ;
 scalar_t__ opt_unpoison ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void prepare_hwpoison_fd(void)
{
 char buf[100];

 if (opt_hwpoison && !hwpoison_inject_fd) {
  sprintf(buf, "%s/corrupt-pfn", hwpoison_debug_fs);
  hwpoison_inject_fd = checked_open(buf, O_WRONLY);
 }

 if (opt_unpoison && !hwpoison_forget_fd) {
  sprintf(buf, "%s/unpoison-pfn", hwpoison_debug_fs);
  hwpoison_forget_fd = checked_open(buf, O_WRONLY);
 }
}
