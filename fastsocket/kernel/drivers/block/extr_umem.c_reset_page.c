
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_page {int * bio; int ** biotail; scalar_t__ headcnt; scalar_t__ cnt; } ;



__attribute__((used)) static inline void reset_page(struct mm_page *page)
{
 page->cnt = 0;
 page->headcnt = 0;
 page->bio = ((void*)0);
 page->biotail = &page->bio;
}
