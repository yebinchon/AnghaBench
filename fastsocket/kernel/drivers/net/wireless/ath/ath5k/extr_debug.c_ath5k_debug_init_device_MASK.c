#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  level; } ;
struct ath5k_hw {int /*<<< orphan*/  ah_use_32khz_clock; TYPE_3__* hw; TYPE_1__ debug; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  ath5k_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct ath5k_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_ani ; 
 int /*<<< orphan*/  fops_antenna ; 
 int /*<<< orphan*/  fops_beacon ; 
 int /*<<< orphan*/  fops_debug ; 
 int /*<<< orphan*/  fops_frameerrors ; 
 int /*<<< orphan*/  fops_misc ; 
 int /*<<< orphan*/  fops_queue ; 
 int /*<<< orphan*/  fops_registers ; 
 int /*<<< orphan*/  fops_reset ; 

void
FUNC3(struct ath5k_hw *ah)
{
	struct dentry *phydir;

	ah->debug.level = ath5k_debug;

	phydir = FUNC1("ath5k", ah->hw->wiphy->debugfsdir);
	if (!phydir)
		return;

	FUNC2("debug", S_IWUSR | S_IRUSR, phydir, ah,
			    &fops_debug);

	FUNC2("registers", S_IRUSR, phydir, ah, &fops_registers);

	FUNC2("beacon", S_IWUSR | S_IRUSR, phydir, ah,
			    &fops_beacon);

	FUNC2("reset", S_IWUSR, phydir, ah, &fops_reset);

	FUNC2("antenna", S_IWUSR | S_IRUSR, phydir, ah,
			    &fops_antenna);

	FUNC2("misc", S_IRUSR, phydir, ah, &fops_misc);

	FUNC2("frameerrors", S_IWUSR | S_IRUSR, phydir, ah,
			    &fops_frameerrors);

	FUNC2("ani", S_IWUSR | S_IRUSR, phydir, ah, &fops_ani);

	FUNC2("queue", S_IWUSR | S_IRUSR, phydir, ah,
			    &fops_queue);

	FUNC0("32khz_clock", S_IWUSR | S_IRUSR, phydir,
			    &ah->ah_use_32khz_clock);
}