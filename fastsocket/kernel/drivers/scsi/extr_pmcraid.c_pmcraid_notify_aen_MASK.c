#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct pmcraid_instance {TYPE_2__ cdev; TYPE_1__* host; } ;
struct pmcraid_aen_msg {int hostno; int length; } ;
struct genl_family {int hdrsize; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int unique_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GENL_HDRLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NLMSG_HDRLEN ; 
 int /*<<< orphan*/  PMCRAID_AEN_ATTR_EVENT ; 
 int /*<<< orphan*/  PMCRAID_AEN_CMD_EVENT ; 
 int FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct pmcraid_aen_msg*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_3__ pmcraid_event_family ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int FUNC10(
	struct pmcraid_instance *pinstance,
	struct pmcraid_aen_msg  *aen_msg,
	u32    data_size
)
{
	struct sk_buff *skb;
	void *msg_header;
	u32  total_size, nla_genl_hdr_total_size;
	int result;

	aen_msg->hostno = (pinstance->host->unique_id << 16 |
			   FUNC0(pinstance->cdev.dev));
	aen_msg->length = data_size;

	data_size += sizeof(*aen_msg);

	total_size = FUNC6(data_size);
	/* Add GENL_HDR to total_size */
	nla_genl_hdr_total_size =
		(total_size + (GENL_HDRLEN +
		((struct genl_family *)&pmcraid_event_family)->hdrsize)
		 + NLMSG_HDRLEN);
	skb = FUNC3(nla_genl_hdr_total_size, GFP_ATOMIC);


	if (!skb) {
		FUNC8("Failed to allocate aen data SKB of size: %x\n",
			     total_size);
		return -ENOMEM;
	}

	/* add the genetlink message header */
	msg_header = FUNC4(skb, 0, 0,
				 &pmcraid_event_family, 0,
				 PMCRAID_AEN_CMD_EVENT);
	if (!msg_header) {
		FUNC8("failed to copy command details\n");
		FUNC7(skb);
		return -ENOMEM;
	}

	result = FUNC5(skb, PMCRAID_AEN_ATTR_EVENT, data_size, aen_msg);

	if (result) {
		FUNC8("failed to copy AEN attribute data\n");
		FUNC7(skb);
		return -EINVAL;
	}

	/* send genetlink multicast message to notify appplications */
	result = FUNC1(skb, msg_header);

	if (result < 0) {
		FUNC8("genlmsg_end failed\n");
		FUNC7(skb);
		return result;
	}

	result =
		FUNC2(skb, 0, pmcraid_event_family.id, GFP_ATOMIC);

	/* If there are no listeners, genlmsg_multicast may return non-zero
	 * value.
	 */
	if (result)
		FUNC9("error (%x) sending aen event message\n", result);
	return result;
}