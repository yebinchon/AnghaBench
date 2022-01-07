
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restore_data_record {scalar_t__ magic; int cr3; int jump_address; } ;


 int EINVAL ;
 scalar_t__ RESTORE_MAGIC ;
 int restore_cr3 ;
 int restore_jump_address ;

int arch_hibernation_header_restore(void *addr)
{
 struct restore_data_record *rdr = addr;

 restore_jump_address = rdr->jump_address;
 restore_cr3 = rdr->cr3;
 return (rdr->magic == RESTORE_MAGIC) ? 0 : -EINVAL;
}
