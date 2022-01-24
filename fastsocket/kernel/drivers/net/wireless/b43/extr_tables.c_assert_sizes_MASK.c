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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B43_TAB_FINEFREQA_SIZE ; 
 scalar_t__ B43_TAB_FINEFREQG_SIZE ; 
 scalar_t__ B43_TAB_NOISEA2_SIZE ; 
 scalar_t__ B43_TAB_NOISEA3_SIZE ; 
 scalar_t__ B43_TAB_NOISEG1_SIZE ; 
 scalar_t__ B43_TAB_NOISEG2_SIZE ; 
 scalar_t__ B43_TAB_NOISESCALE_SIZE ; 
 scalar_t__ B43_TAB_RETARD_SIZE ; 
 scalar_t__ B43_TAB_ROTOR_SIZE ; 
 scalar_t__ B43_TAB_RSSIAGC1_SIZE ; 
 scalar_t__ B43_TAB_RSSIAGC2_SIZE ; 
 scalar_t__ B43_TAB_SIGMASQR_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  b43_tab_finefreqa ; 
 int /*<<< orphan*/  b43_tab_finefreqg ; 
 int /*<<< orphan*/  b43_tab_noisea2 ; 
 int /*<<< orphan*/  b43_tab_noisea3 ; 
 int /*<<< orphan*/  b43_tab_noiseg1 ; 
 int /*<<< orphan*/  b43_tab_noiseg2 ; 
 int /*<<< orphan*/  b43_tab_noisescalea2 ; 
 int /*<<< orphan*/  b43_tab_noisescalea3 ; 
 int /*<<< orphan*/  b43_tab_noisescaleg1 ; 
 int /*<<< orphan*/  b43_tab_noisescaleg2 ; 
 int /*<<< orphan*/  b43_tab_noisescaleg3 ; 
 int /*<<< orphan*/  b43_tab_retard ; 
 int /*<<< orphan*/  b43_tab_rotor ; 
 int /*<<< orphan*/  b43_tab_rssiagc1 ; 
 int /*<<< orphan*/  b43_tab_rssiagc2 ; 
 int /*<<< orphan*/  b43_tab_sigmasqr1 ; 
 int /*<<< orphan*/  b43_tab_sigmasqr2 ; 

__attribute__((used)) static inline void FUNC2(void)
{
	FUNC1(B43_TAB_ROTOR_SIZE != FUNC0(b43_tab_rotor));
	FUNC1(B43_TAB_RETARD_SIZE != FUNC0(b43_tab_retard));
	FUNC1(B43_TAB_FINEFREQA_SIZE != FUNC0(b43_tab_finefreqa));
	FUNC1(B43_TAB_FINEFREQG_SIZE != FUNC0(b43_tab_finefreqg));
	FUNC1(B43_TAB_NOISEA2_SIZE != FUNC0(b43_tab_noisea2));
	FUNC1(B43_TAB_NOISEA3_SIZE != FUNC0(b43_tab_noisea3));
	FUNC1(B43_TAB_NOISEG1_SIZE != FUNC0(b43_tab_noiseg1));
	FUNC1(B43_TAB_NOISEG2_SIZE != FUNC0(b43_tab_noiseg2));
	FUNC1(B43_TAB_NOISESCALE_SIZE !=
		     FUNC0(b43_tab_noisescalea2));
	FUNC1(B43_TAB_NOISESCALE_SIZE !=
		     FUNC0(b43_tab_noisescalea3));
	FUNC1(B43_TAB_NOISESCALE_SIZE !=
		     FUNC0(b43_tab_noisescaleg1));
	FUNC1(B43_TAB_NOISESCALE_SIZE !=
		     FUNC0(b43_tab_noisescaleg2));
	FUNC1(B43_TAB_NOISESCALE_SIZE !=
		     FUNC0(b43_tab_noisescaleg3));
	FUNC1(B43_TAB_SIGMASQR_SIZE != FUNC0(b43_tab_sigmasqr1));
	FUNC1(B43_TAB_SIGMASQR_SIZE != FUNC0(b43_tab_sigmasqr2));
	FUNC1(B43_TAB_RSSIAGC1_SIZE != FUNC0(b43_tab_rssiagc1));
	FUNC1(B43_TAB_RSSIAGC2_SIZE != FUNC0(b43_tab_rssiagc2));
}