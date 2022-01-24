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
struct bna_enet {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENET_E_FWRESP_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct bna_enet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct bna_enet *enet, struct bfi_msgq_mhdr *msghdr)
{
	FUNC0(enet, ENET_E_FWRESP_PAUSE);
}