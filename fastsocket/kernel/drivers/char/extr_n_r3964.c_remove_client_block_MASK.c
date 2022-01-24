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
struct r3964_info {int dummy; } ;
struct r3964_client_info {struct r3964_block_header* next_block_to_read; int /*<<< orphan*/  pid; } ;
struct r3964_block_header {scalar_t__ locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r3964_info*,struct r3964_block_header*) ; 

__attribute__((used)) static void FUNC3(struct r3964_info *pInfo,
				struct r3964_client_info *pClient)
{
	struct r3964_block_header *block;

	FUNC0("remove_client_block PID %d", FUNC1(pClient->pid));

	block = pClient->next_block_to_read;
	if (block) {
		block->locks--;
		if (block->locks == 0) {
			FUNC2(pInfo, block);
		}
	}
	pClient->next_block_to_read = NULL;
}