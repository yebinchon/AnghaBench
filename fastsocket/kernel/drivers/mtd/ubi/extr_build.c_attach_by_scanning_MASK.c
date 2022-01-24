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
struct ubi_scan_info {int /*<<< orphan*/  mean_ec; int /*<<< orphan*/  max_ec; scalar_t__ bad_peb_count; } ;
struct ubi_device {int /*<<< orphan*/  vtbl; int /*<<< orphan*/  mean_ec; int /*<<< orphan*/  max_ec; scalar_t__ bad_peb_count; scalar_t__ peb_count; scalar_t__ good_peb_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubi_scan_info*) ; 
 int FUNC1 (struct ubi_scan_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubi_device*) ; 
 int FUNC3 (struct ubi_device*,struct ubi_scan_info*) ; 
 int FUNC4 (struct ubi_device*,struct ubi_scan_info*) ; 
 struct ubi_scan_info* FUNC5 (struct ubi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubi_scan_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubi_device*) ; 
 int FUNC8 (struct ubi_device*,struct ubi_scan_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ubi_device *ubi)
{
	int err;
	struct ubi_scan_info *si;

	si = FUNC5(ubi);
	if (FUNC0(si))
		return FUNC1(si);

	ubi->bad_peb_count = si->bad_peb_count;
	ubi->good_peb_count = ubi->peb_count - ubi->bad_peb_count;
	ubi->max_ec = si->max_ec;
	ubi->mean_ec = si->mean_ec;

	err = FUNC4(ubi, si);
	if (err)
		goto out_si;

	err = FUNC8(ubi, si);
	if (err)
		goto out_vtbl;

	err = FUNC3(ubi, si);
	if (err)
		goto out_wl;

	FUNC6(si);
	return 0;

out_wl:
	FUNC7(ubi);
out_vtbl:
	FUNC2(ubi);
	FUNC9(ubi->vtbl);
out_si:
	FUNC6(si);
	return err;
}