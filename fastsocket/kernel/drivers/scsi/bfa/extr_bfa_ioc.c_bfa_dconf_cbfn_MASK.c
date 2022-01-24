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
struct bfa_dconf_mod_s {int dummy; } ;
typedef  int /*<<< orphan*/  bfa_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_DCONF_SM_FLASH_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_dconf_mod_s*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg, bfa_status_t status)
{
	struct bfa_dconf_mod_s *dconf = arg;
	FUNC0(status);
	FUNC1(dconf, BFA_DCONF_SM_FLASH_COMP);
}