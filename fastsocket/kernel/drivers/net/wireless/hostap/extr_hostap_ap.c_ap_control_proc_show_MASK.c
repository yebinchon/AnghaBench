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
struct seq_file {struct ap_data* private; } ;
struct mac_entry {char* addr; } ;
struct TYPE_2__ {int policy; char* entries; } ;
struct ap_data {TYPE_1__ mac_restrictions; } ;

/* Variables and functions */
#define  MAC_POLICY_ALLOW 130 
#define  MAC_POLICY_DENY 129 
#define  MAC_POLICY_OPEN 128 
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct ap_data *ap = m->private;
	char *policy_txt;
	struct mac_entry *entry;

	if (v == SEQ_START_TOKEN) {
		switch (ap->mac_restrictions.policy) {
		case MAC_POLICY_OPEN:
			policy_txt = "open";
			break;
		case MAC_POLICY_ALLOW:
			policy_txt = "allow";
			break;
		case MAC_POLICY_DENY:
			policy_txt = "deny";
			break;
		default:
			policy_txt = "unknown";
			break;
		}
		FUNC0(m, "MAC policy: %s\n", policy_txt);
		FUNC0(m, "MAC entries: %u\n", ap->mac_restrictions.entries);
		FUNC1(m, "MAC list:\n");
		return 0;
	}

	entry = v;
	FUNC0(m, "%pM\n", entry->addr);
	return 0;
}