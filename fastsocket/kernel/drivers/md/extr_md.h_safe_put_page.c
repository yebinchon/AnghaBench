
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_page (struct page*) ;

__attribute__((used)) static inline void safe_put_page(struct page *p)
{
 if (p) put_page(p);
}
