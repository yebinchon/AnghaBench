#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_3__ {int enabled; scalar_t__ size; scalar_t__ tsize; int /*<<< orphan*/  nchunks; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * trace_addr; int /*<<< orphan*/  cpu_addr; } ;
struct iwl_test {TYPE_1__ trace; TYPE_2__* trans; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DUMP_CHUNK_SIZE ; 
 int EBUSY ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 size_t IWL_TM_ATTR_COMMAND ; 
 int /*<<< orphan*/  IWL_TM_ATTR_TRACE_ADDR ; 
 size_t IWL_TM_ATTR_TRACE_SIZE ; 
 scalar_t__ IWL_TM_CMD_APP2DEV_BEGIN_TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TRACE_BUFF_PADD ; 
 scalar_t__ TRACE_BUFF_SIZE_DEF ; 
 scalar_t__ TRACE_BUFF_SIZE_MAX ; 
 scalar_t__ TRACE_BUFF_SIZE_MIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct iwl_test*,int) ; 
 int FUNC5 (struct iwl_test*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_test*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC9 (struct nlattr*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct iwl_test *tst, struct nlattr **tb)
{
	struct sk_buff *skb;
	int status = 0;

	if (tst->trace.enabled)
		return -EBUSY;

	if (!tb[IWL_TM_ATTR_TRACE_SIZE])
		tst->trace.size = TRACE_BUFF_SIZE_DEF;
	else
		tst->trace.size =
			FUNC9(tb[IWL_TM_ATTR_TRACE_SIZE]);

	if (!tst->trace.size)
		return -EINVAL;

	if (tst->trace.size < TRACE_BUFF_SIZE_MIN ||
	    tst->trace.size > TRACE_BUFF_SIZE_MAX)
		return -EINVAL;

	tst->trace.tsize = tst->trace.size + TRACE_BUFF_PADD;
	tst->trace.cpu_addr = FUNC3(tst->trans->dev,
						 tst->trace.tsize,
						 &tst->trace.dma_addr,
						 GFP_KERNEL);
	if (!tst->trace.cpu_addr)
		return -ENOMEM;

	tst->trace.enabled = true;
	tst->trace.trace_addr = (u8 *)FUNC2(tst->trace.cpu_addr, 0x100);

	FUNC8(tst->trace.trace_addr, 0x03B, tst->trace.size);

	skb = FUNC4(tst, sizeof(tst->trace.dma_addr) + 20);
	if (!skb) {
		FUNC1(tst->trans, "Memory allocation fail\n");
		FUNC6(tst);
		return -ENOMEM;
	}

	if (FUNC10(skb, IWL_TM_ATTR_TRACE_ADDR,
		    sizeof(tst->trace.dma_addr),
		    (u64 *)&tst->trace.dma_addr))
		goto nla_put_failure;

	status = FUNC5(tst, skb);
	if (status < 0)
		FUNC1(tst->trans, "Error sending msg : %d\n", status);

	tst->trace.nchunks = FUNC0(tst->trace.size,
					  DUMP_CHUNK_SIZE);

	return status;

nla_put_failure:
	FUNC7(skb);
	if (FUNC9(tb[IWL_TM_ATTR_COMMAND]) ==
	    IWL_TM_CMD_APP2DEV_BEGIN_TRACE)
		FUNC6(tst);
	return -EMSGSIZE;
}