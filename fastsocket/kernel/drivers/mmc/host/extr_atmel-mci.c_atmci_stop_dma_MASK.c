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
struct atmel_mci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_XFER_COMPLETE ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  MCI_NOTBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_mci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct atmel_mci *host)
{
	/* Data transfer was stopped by the interrupt handler */
	FUNC0(host, EVENT_XFER_COMPLETE);
	FUNC1(host, IER, MCI_NOTBUSY);
}