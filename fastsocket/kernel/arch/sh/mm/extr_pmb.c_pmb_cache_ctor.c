
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmb_entry {int entry; } ;


 int PMB_NO_ENTRY ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void pmb_cache_ctor(void *pmb)
{
 struct pmb_entry *pmbe = pmb;

 memset(pmb, 0, sizeof(struct pmb_entry));

 pmbe->entry = PMB_NO_ENTRY;
}
