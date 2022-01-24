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
struct node_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct node_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nodemgr_ud_class ; 
 int /*<<< orphan*/  update_pdrv ; 

__attribute__((used)) static void FUNC1(struct node_entry *ne)
{
	FUNC0(&nodemgr_ud_class, NULL, ne, update_pdrv);
}