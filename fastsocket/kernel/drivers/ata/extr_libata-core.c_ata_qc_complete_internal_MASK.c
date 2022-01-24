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
struct completion {int dummy; } ;
struct ata_queued_cmd {struct completion* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 

__attribute__((used)) static void FUNC1(struct ata_queued_cmd *qc)
{
	struct completion *waiting = qc->private_data;

	FUNC0(waiting);
}