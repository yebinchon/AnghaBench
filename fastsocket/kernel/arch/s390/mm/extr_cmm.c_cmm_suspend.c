
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmm_free_pages (int ,int *,int *) ;
 int cmm_page_list ;
 int cmm_pages ;
 int cmm_suspended ;
 int cmm_timed_page_list ;
 int cmm_timed_pages ;

__attribute__((used)) static int cmm_suspend(void)
{
 cmm_suspended = 1;
 cmm_free_pages(cmm_pages, &cmm_pages, &cmm_page_list);
 cmm_free_pages(cmm_timed_pages, &cmm_timed_pages, &cmm_timed_page_list);
 return 0;
}
