#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_1__* netdev; scalar_t__ portnum; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ENABLE_TYPE_C_RSS ; 
 int QLCNIC_H2C_OPCODE_CONFIG_RSS ; 
 int QLCNIC_HOST_REQUEST ; 
 scalar_t__ QLCNIC_RSS_FEATURE_FLAG ; 
 int QLCNIC_RSS_HASHTYPE_IP_TCP ; 
 scalar_t__ QLCNIC_RSS_IND_TABLE_MASK ; 
 void* FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_nic_req*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ; 

int FUNC4(struct qlcnic_adapter *adapter, int enable)
{
	struct qlcnic_nic_req req;
	u64 word;
	int i, rv;

	static const u64 key[] = {
		0xbeac01fa6a42b73bULL, 0x8030f20c77cb2da3ULL,
		0xae7b30b4d0ca2bcbULL, 0x43a38fb04167253dULL,
		0x255b0ec26d5a56daULL
	};

	FUNC2(&req, 0, sizeof(struct qlcnic_nic_req));
	req.qhdr = FUNC0(QLCNIC_HOST_REQUEST << 23);

	word = QLCNIC_H2C_OPCODE_CONFIG_RSS | ((u64)adapter->portnum << 16);
	req.req_hdr = FUNC0(word);

	/*
	 * RSS request:
	 * bits 3-0: hash_method
	 *      5-4: hash_type_ipv4
	 *	7-6: hash_type_ipv6
	 *	  8: enable
	 *        9: use indirection table
	 *       10: type-c rss
	 *	 11: udp rss
	 *    47-12: reserved
	 *    62-48: indirection table mask
	 *	 63: feature flag
	 */
	word =  ((u64)(QLCNIC_RSS_HASHTYPE_IP_TCP & 0x3) << 4) |
		((u64)(QLCNIC_RSS_HASHTYPE_IP_TCP & 0x3) << 6) |
		((u64)(enable & 0x1) << 8) |
		((u64)QLCNIC_RSS_IND_TABLE_MASK << 48) |
		(u64)QLCNIC_ENABLE_TYPE_C_RSS |
		(u64)QLCNIC_RSS_FEATURE_FLAG;

	req.words[0] = FUNC0(word);
	for (i = 0; i < 5; i++)
		req.words[i+1] = FUNC0(key[i]);

	rv = FUNC3(adapter, (struct cmd_desc_type0 *)&req, 1);
	if (rv != 0)
		FUNC1(&adapter->netdev->dev, "could not configure RSS\n");

	return rv;
}