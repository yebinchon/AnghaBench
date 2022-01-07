
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DISPLAY_DIR_NAME ;
 int PVC_NLINES ;
 int del_timer (int *) ;
 int * pvc_display_dir ;
 char** pvc_linename ;
 int remove_proc_entry (char*,int *) ;
 int timer ;

__attribute__((used)) static void pvc_proc_cleanup(void)
{
 int i;
 for (i = 0; i < PVC_NLINES; i++)
  remove_proc_entry(pvc_linename[i], pvc_display_dir);
 remove_proc_entry("scroll", pvc_display_dir);
 remove_proc_entry(DISPLAY_DIR_NAME, ((void*)0));

 del_timer(&timer);
}
