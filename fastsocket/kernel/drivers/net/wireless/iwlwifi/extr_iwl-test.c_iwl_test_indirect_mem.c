
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ in_read; } ;
struct iwl_test {int trans; TYPE_1__ mem; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMSG ;
 int IWL_ERR (int ,char*) ;
 size_t IWL_TM_ATTR_BUFFER_DUMP ;
 size_t IWL_TM_ATTR_BUFFER_SIZE ;
 size_t IWL_TM_ATTR_COMMAND ;
 size_t IWL_TM_ATTR_MEM_ADDR ;
 scalar_t__ IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ ;
 int iwl_test_indirect_read (struct iwl_test*,scalar_t__,scalar_t__) ;
 int iwl_test_indirect_write (struct iwl_test*,scalar_t__,scalar_t__,unsigned char*) ;
 scalar_t__ nla_data (struct nlattr*) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int iwl_test_indirect_mem(struct iwl_test *tst, struct nlattr **tb)
{
 u32 addr, size, cmd;
 unsigned char *buf;


 if (tst->mem.in_read)
  return -EBUSY;

 cmd = nla_get_u32(tb[IWL_TM_ATTR_COMMAND]);
 if (!tb[IWL_TM_ATTR_MEM_ADDR]) {
  IWL_ERR(tst->trans, "Error finding memory offset address\n");
  return -ENOMSG;
 }
 addr = nla_get_u32(tb[IWL_TM_ATTR_MEM_ADDR]);
 if (!tb[IWL_TM_ATTR_BUFFER_SIZE]) {
  IWL_ERR(tst->trans, "Error finding size for memory reading\n");
  return -ENOMSG;
 }
 size = nla_get_u32(tb[IWL_TM_ATTR_BUFFER_SIZE]);

 if (cmd == IWL_TM_CMD_APP2DEV_INDIRECT_BUFFER_READ) {
  return iwl_test_indirect_read(tst, addr, size);
 } else {
  if (!tb[IWL_TM_ATTR_BUFFER_DUMP])
   return -EINVAL;
  buf = (unsigned char *)nla_data(tb[IWL_TM_ATTR_BUFFER_DUMP]);
  return iwl_test_indirect_write(tst, addr, size, buf);
 }
}
