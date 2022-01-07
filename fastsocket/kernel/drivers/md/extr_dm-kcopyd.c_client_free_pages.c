
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_client {scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; int * pages; } ;


 int BUG_ON (int) ;
 int drop_pages (int *) ;

__attribute__((used)) static void client_free_pages(struct dm_kcopyd_client *kc)
{
 BUG_ON(kc->nr_free_pages != kc->nr_reserved_pages);
 drop_pages(kc->pages);
 kc->pages = ((void*)0);
 kc->nr_free_pages = kc->nr_reserved_pages = 0;
}
