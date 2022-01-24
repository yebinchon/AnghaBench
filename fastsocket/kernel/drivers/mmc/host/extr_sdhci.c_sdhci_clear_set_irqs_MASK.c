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
typedef  int /*<<< orphan*/  u32 ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sdhci_host *host, u32 clear, u32 set)
{
	u32 ier;

	ier = FUNC0(host, SDHCI_INT_ENABLE);
	ier &= ~clear;
	ier |= set;
	FUNC1(host, ier, SDHCI_INT_ENABLE);
	FUNC1(host, ier, SDHCI_SIGNAL_ENABLE);
}