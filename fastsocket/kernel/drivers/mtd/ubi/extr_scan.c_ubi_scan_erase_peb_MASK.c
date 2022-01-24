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
struct ubi_scan_info {int dummy; } ;
struct ubi_ec_hdr {int /*<<< orphan*/  ec; } ;
struct ubi_device {int /*<<< orphan*/  ec_hdr_alsize; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 long long UBI_MAX_ERASECOUNTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_ec_hdr*) ; 
 struct ubi_ec_hdr* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int FUNC4 (struct ubi_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubi_device*,int,struct ubi_ec_hdr*) ; 

int FUNC6(struct ubi_device *ubi, const struct ubi_scan_info *si,
		       int pnum, int ec)
{
	int err;
	struct ubi_ec_hdr *ec_hdr;

	if ((long long)ec >= UBI_MAX_ERASECOUNTER) {
		/*
		 * Erase counter overflow. Upgrade UBI and use 64-bit
		 * erase counters internally.
		 */
		FUNC3("erase counter overflow at PEB %d, EC %d", pnum, ec);
		return -EINVAL;
	}

	ec_hdr = FUNC2(ubi->ec_hdr_alsize, GFP_KERNEL);
	if (!ec_hdr)
		return -ENOMEM;

	ec_hdr->ec = FUNC0(ec);

	err = FUNC4(ubi, pnum, 0);
	if (err < 0)
		goto out_free;

	err = FUNC5(ubi, pnum, ec_hdr);

out_free:
	FUNC1(ec_hdr);
	return err;
}