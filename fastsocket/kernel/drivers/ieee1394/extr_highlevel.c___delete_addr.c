
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_address_serve {int hl_list; int host_list; } ;


 int kfree (struct hpsb_address_serve*) ;
 int list_del (int *) ;

__attribute__((used)) static void __delete_addr(struct hpsb_address_serve *as)
{
 list_del(&as->host_list);
 list_del(&as->hl_list);
 kfree(as);
}
