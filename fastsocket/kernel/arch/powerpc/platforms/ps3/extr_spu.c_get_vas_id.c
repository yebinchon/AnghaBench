
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int lv1_get_logical_ppe_id (unsigned long*) ;
 int lv1_get_virtual_address_space_id_of_ppe (unsigned long,unsigned long*) ;

__attribute__((used)) static unsigned long get_vas_id(void)
{
 u64 id;

 lv1_get_logical_ppe_id(&id);
 lv1_get_virtual_address_space_id_of_ppe(id, &id);

 return id;
}
