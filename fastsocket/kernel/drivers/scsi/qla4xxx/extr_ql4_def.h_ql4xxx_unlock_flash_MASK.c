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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QL4010_FLASH_SEM_MASK ; 
 int /*<<< orphan*/  QL4022_FLASH_SEM_MASK ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct scsi_qla_host *a)
{
	if (FUNC0(a))
		FUNC1(a, QL4010_FLASH_SEM_MASK);
	else
		FUNC1(a, QL4022_FLASH_SEM_MASK);
}