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
struct mmci_host {int /*<<< orphan*/ * data; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMCIDATACTRL ; 
 scalar_t__ MMCIMASK1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct mmci_host *host)
{
	FUNC0(0, host->base + MMCIDATACTRL);
	FUNC0(0, host->base + MMCIMASK1);
	host->data = NULL;
}