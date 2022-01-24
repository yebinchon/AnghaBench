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
struct at91mci_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MCI_CR ; 
 int AT91_MCI_MCIDIS ; 
 int AT91_MCI_SWRST ; 
 int /*<<< orphan*/  FUNC0 (struct at91mci_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct at91mci_host *host)
{
	FUNC0(host, AT91_MCI_CR, AT91_MCI_MCIDIS | AT91_MCI_SWRST);
}