
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int enabled; scalar_t__ size; scalar_t__ tsize; int nchunks; int dma_addr; int * trace_addr; int cpu_addr; } ;
struct iwl_test {TYPE_1__ trace; TYPE_2__* trans; } ;
struct TYPE_4__ {int dev; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 int DUMP_CHUNK_SIZE ;
 int EBUSY ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_ERR (TYPE_2__*,char*,...) ;
 size_t IWL_TM_ATTR_COMMAND ;
 int IWL_TM_ATTR_TRACE_ADDR ;
 size_t IWL_TM_ATTR_TRACE_SIZE ;
 scalar_t__ IWL_TM_CMD_APP2DEV_BEGIN_TRACE ;
 scalar_t__ PTR_ALIGN (int ,int) ;
 scalar_t__ TRACE_BUFF_PADD ;
 scalar_t__ TRACE_BUFF_SIZE_DEF ;
 scalar_t__ TRACE_BUFF_SIZE_MAX ;
 scalar_t__ TRACE_BUFF_SIZE_MIN ;
 int dma_alloc_coherent (int ,scalar_t__,int *,int ) ;
 struct sk_buff* iwl_test_alloc_reply (struct iwl_test*,int) ;
 int iwl_test_reply (struct iwl_test*,struct sk_buff*) ;
 int iwl_test_trace_stop (struct iwl_test*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int *,int,scalar_t__) ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int iwl_test_trace_begin(struct iwl_test *tst, struct nlattr **tb)
{
 struct sk_buff *skb;
 int status = 0;

 if (tst->trace.enabled)
  return -EBUSY;

 if (!tb[IWL_TM_ATTR_TRACE_SIZE])
  tst->trace.size = TRACE_BUFF_SIZE_DEF;
 else
  tst->trace.size =
   nla_get_u32(tb[IWL_TM_ATTR_TRACE_SIZE]);

 if (!tst->trace.size)
  return -EINVAL;

 if (tst->trace.size < TRACE_BUFF_SIZE_MIN ||
     tst->trace.size > TRACE_BUFF_SIZE_MAX)
  return -EINVAL;

 tst->trace.tsize = tst->trace.size + TRACE_BUFF_PADD;
 tst->trace.cpu_addr = dma_alloc_coherent(tst->trans->dev,
       tst->trace.tsize,
       &tst->trace.dma_addr,
       GFP_KERNEL);
 if (!tst->trace.cpu_addr)
  return -ENOMEM;

 tst->trace.enabled = 1;
 tst->trace.trace_addr = (u8 *)PTR_ALIGN(tst->trace.cpu_addr, 0x100);

 memset(tst->trace.trace_addr, 0x03B, tst->trace.size);

 skb = iwl_test_alloc_reply(tst, sizeof(tst->trace.dma_addr) + 20);
 if (!skb) {
  IWL_ERR(tst->trans, "Memory allocation fail\n");
  iwl_test_trace_stop(tst);
  return -ENOMEM;
 }

 if (nla_put(skb, IWL_TM_ATTR_TRACE_ADDR,
      sizeof(tst->trace.dma_addr),
      (u64 *)&tst->trace.dma_addr))
  goto nla_put_failure;

 status = iwl_test_reply(tst, skb);
 if (status < 0)
  IWL_ERR(tst->trans, "Error sending msg : %d\n", status);

 tst->trace.nchunks = DIV_ROUND_UP(tst->trace.size,
       DUMP_CHUNK_SIZE);

 return status;

nla_put_failure:
 kfree_skb(skb);
 if (nla_get_u32(tb[IWL_TM_ATTR_COMMAND]) ==
     IWL_TM_CMD_APP2DEV_BEGIN_TRACE)
  iwl_test_trace_stop(tst);
 return -EMSGSIZE;
}
