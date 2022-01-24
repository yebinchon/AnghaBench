#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct libipw_hdr_4addr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  addr2; int /*<<< orphan*/  seq_ctl; } ;
struct libipw_frag_entry {int /*<<< orphan*/ * skb; } ;
struct libipw_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct libipw_frag_entry* FUNC3 (struct libipw_device*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct libipw_device *ieee,
					   struct libipw_hdr_4addr *hdr)
{
	u16 sc;
	unsigned int seq;
	struct libipw_frag_entry *entry;

	sc = FUNC2(hdr->seq_ctl);
	seq = FUNC1(sc);

	entry = FUNC3(ieee, seq, -1, hdr->addr2,
					  hdr->addr1);

	if (entry == NULL) {
		FUNC0("could not invalidate fragment cache "
				     "entry (seq=%u)\n", seq);
		return -1;
	}

	entry->skb = NULL;
	return 0;
}