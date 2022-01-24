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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct aer_err_info {int status; int mask; scalar_t__ severity; int first_error; } ;

/* Variables and functions */
 scalar_t__ AER_CORRECTABLE ; 
 int FUNC0 (char**) ; 
 char** aer_correctable_error_string ; 
 char** aer_uncorrectable_error_string ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char const*,...) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev,
			      struct aer_err_info *info)
{
	int i, status;
	const char *errmsg = NULL;
	status = (info->status & ~info->mask);

	for (i = 0; i < 32; i++) {
		if (!(status & (1 << i)))
			continue;

		if (info->severity == AER_CORRECTABLE)
			errmsg = i < FUNC0(aer_correctable_error_string) ?
				aer_correctable_error_string[i] : NULL;
		else
			errmsg = i < FUNC0(aer_uncorrectable_error_string) ?
				aer_uncorrectable_error_string[i] : NULL;

		if (errmsg)
			FUNC1(&dev->dev, "   [%2d] %-22s%s\n", i, errmsg,
				info->first_error == i ? " (First)" : "");
		else
			FUNC1(&dev->dev, "   [%2d] Unknown Error Bit%s\n",
				i, info->first_error == i ? " (First)" : "");
	}
}