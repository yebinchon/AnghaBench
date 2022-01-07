
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restore_data_record {int magic; int cr3; int jump_address; } ;


 int EOVERFLOW ;
 int RESTORE_MAGIC ;
 int restore_cr3 ;
 int restore_jump_address ;

int arch_hibernation_header_save(void *addr, unsigned int max_size)
{
 struct restore_data_record *rdr = addr;

 if (max_size < sizeof(struct restore_data_record))
  return -EOVERFLOW;
 rdr->jump_address = restore_jump_address;
 rdr->cr3 = restore_cr3;
 rdr->magic = RESTORE_MAGIC;
 return 0;
}
