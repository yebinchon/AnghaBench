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

/* Variables and functions */
 int /*<<< orphan*/  CSR1212_KV_ID_NODE_CAPABILITIES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  csr_highlevel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_cap ; 

int FUNC3(void)
{
	node_cap = FUNC1(CSR1212_KV_ID_NODE_CAPABILITIES, 0x0083c0);
	if (!node_cap) {
		FUNC0("Failed to allocate memory for Node Capabilties ConfigROM entry!");
		return -ENOMEM;
	}

	FUNC2(&csr_highlevel);

	return 0;
}