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
struct beiscsi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  beiscsi_log_enable ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,int /*<<< orphan*/ ) ; 

void FUNC1(struct beiscsi_hba *phba)
{
	/* Set the logging parameter */
	FUNC0(phba, beiscsi_log_enable);
}