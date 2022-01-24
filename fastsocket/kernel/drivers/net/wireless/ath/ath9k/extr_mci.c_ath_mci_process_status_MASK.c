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
typedef  int u8 ;
struct ath_mci_profile {int num_mgmt; int /*<<< orphan*/  status; } ;
struct ath_btcoex {struct ath_mci_profile mci; } ;
struct ath_softc {struct ath_btcoex btcoex; } ;
struct ath_mci_profile_status {int conn_handle; scalar_t__ is_critical; scalar_t__ is_link; } ;
struct ath_mci_profile_info {int conn_handle; } ;

/* Variables and functions */
 int ATH_MCI_MAX_PROFILE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ath_mci_profile*,struct ath_mci_profile_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_softc*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC5(struct ath_softc *sc,
				 struct ath_mci_profile_status *status)
{
	struct ath_btcoex *btcoex = &sc->btcoex;
	struct ath_mci_profile *mci = &btcoex->mci;
	struct ath_mci_profile_info info;
	int i = 0, old_num_mgmt = mci->num_mgmt;

	/* Link status type are not handled */
	if (status->is_link)
		return 0;

	info.conn_handle = status->conn_handle;
	if (FUNC2(mci, &info))
		return 0;

	if (status->conn_handle >= ATH_MCI_MAX_PROFILE)
		return 0;

	if (status->is_critical)
		FUNC1(status->conn_handle, mci->status);
	else
		FUNC0(status->conn_handle, mci->status);

	mci->num_mgmt = 0;
	do {
		if (FUNC4(i, mci->status))
			mci->num_mgmt++;
	} while (++i < ATH_MCI_MAX_PROFILE);

	FUNC3(sc);
	if (old_num_mgmt != mci->num_mgmt)
		return 1;

	return 0;
}