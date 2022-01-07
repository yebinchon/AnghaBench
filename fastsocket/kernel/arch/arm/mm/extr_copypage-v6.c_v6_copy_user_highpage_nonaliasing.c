
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int KM_USER0 ;
 int KM_USER1 ;
 int copy_page (void*,void*) ;
 void* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (void*,int ) ;

__attribute__((used)) static void v6_copy_user_highpage_nonaliasing(struct page *to,
 struct page *from, unsigned long vaddr)
{
 void *kto, *kfrom;

 kfrom = kmap_atomic(from, KM_USER0);
 kto = kmap_atomic(to, KM_USER1);
 copy_page(kto, kfrom);
 kunmap_atomic(kto, KM_USER1);
 kunmap_atomic(kfrom, KM_USER0);
}
