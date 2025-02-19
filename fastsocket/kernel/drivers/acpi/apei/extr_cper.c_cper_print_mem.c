
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct cper_sec_mem_err {int validation_bits; size_t error_type; int target_id; int responder_id; int requestor_id; int bit_pos; int column; int row; int device; int bank; int module; int card; int node; int physical_addr_mask; int physical_addr; int error_status; } ;


 size_t ARRAY_SIZE (char**) ;
 int CPER_MEM_VALID_BANK ;
 int CPER_MEM_VALID_BIT_POSITION ;
 int CPER_MEM_VALID_CARD ;
 int CPER_MEM_VALID_COLUMN ;
 int CPER_MEM_VALID_DEVICE ;
 int CPER_MEM_VALID_ERROR_STATUS ;
 int CPER_MEM_VALID_ERROR_TYPE ;
 int CPER_MEM_VALID_MODULE ;
 int CPER_MEM_VALID_NODE ;
 int CPER_MEM_VALID_PHYSICAL_ADDRESS ;
 int CPER_MEM_VALID_PHYSICAL_ADDRESS_MASK ;
 int CPER_MEM_VALID_REQUESTOR_ID ;
 int CPER_MEM_VALID_RESPONDER_ID ;
 int CPER_MEM_VALID_ROW ;
 int CPER_MEM_VALID_TARGET_ID ;
 char** cper_mem_err_type_strs ;
 int printk (char*,char const*,size_t,...) ;

__attribute__((used)) static void cper_print_mem(const char *pfx, const struct cper_sec_mem_err *mem)
{
 if (mem->validation_bits & CPER_MEM_VALID_ERROR_STATUS)
  printk("%s""error_status: 0x%016llx\n", pfx, mem->error_status);
 if (mem->validation_bits & CPER_MEM_VALID_PHYSICAL_ADDRESS)
  printk("%s""physical_address: 0x%016llx\n",
         pfx, mem->physical_addr);
 if (mem->validation_bits & CPER_MEM_VALID_PHYSICAL_ADDRESS_MASK)
  printk("%s""physical_address_mask: 0x%016llx\n",
         pfx, mem->physical_addr_mask);
 if (mem->validation_bits & CPER_MEM_VALID_NODE)
  printk("%s""node: %d\n", pfx, mem->node);
 if (mem->validation_bits & CPER_MEM_VALID_CARD)
  printk("%s""card: %d\n", pfx, mem->card);
 if (mem->validation_bits & CPER_MEM_VALID_MODULE)
  printk("%s""module: %d\n", pfx, mem->module);
 if (mem->validation_bits & CPER_MEM_VALID_BANK)
  printk("%s""bank: %d\n", pfx, mem->bank);
 if (mem->validation_bits & CPER_MEM_VALID_DEVICE)
  printk("%s""device: %d\n", pfx, mem->device);
 if (mem->validation_bits & CPER_MEM_VALID_ROW)
  printk("%s""row: %d\n", pfx, mem->row);
 if (mem->validation_bits & CPER_MEM_VALID_COLUMN)
  printk("%s""column: %d\n", pfx, mem->column);
 if (mem->validation_bits & CPER_MEM_VALID_BIT_POSITION)
  printk("%s""bit_position: %d\n", pfx, mem->bit_pos);
 if (mem->validation_bits & CPER_MEM_VALID_REQUESTOR_ID)
  printk("%s""requestor_id: 0x%016llx\n", pfx, mem->requestor_id);
 if (mem->validation_bits & CPER_MEM_VALID_RESPONDER_ID)
  printk("%s""responder_id: 0x%016llx\n", pfx, mem->responder_id);
 if (mem->validation_bits & CPER_MEM_VALID_TARGET_ID)
  printk("%s""target_id: 0x%016llx\n", pfx, mem->target_id);
 if (mem->validation_bits & CPER_MEM_VALID_ERROR_TYPE) {
  u8 etype = mem->error_type;
  printk("%s""error_type: %d, %s\n", pfx, etype,
         etype < ARRAY_SIZE(cper_mem_err_type_strs) ?
         cper_mem_err_type_strs[etype] : "unknown");
 }
}
