#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int hclk_tns; } ;
struct s3c_cpufreq_config {TYPE_1__ freq; } ;
struct s3c2412_iobank_timing {int /*<<< orphan*/  wstbrd; void* smbwstbrd; int /*<<< orphan*/  wstwen; void* smbwstwen; int /*<<< orphan*/  wstoen; void* smbwstoen; int /*<<< orphan*/  wstwr; void* smbwstwr; int /*<<< orphan*/  wstrd; void* smbwstrd; int /*<<< orphan*/  idcy; void* smbidcyr; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,unsigned int,int*) ; 

__attribute__((used)) static int FUNC1(struct s3c_cpufreq_config *cfg,
			     struct s3c2412_iobank_timing *bt)
{
	unsigned int hclk = cfg->freq.hclk_tns;
	int err = 0;

	bt->smbidcyr = FUNC0(bt->idcy, hclk, &err);
	bt->smbwstrd = FUNC0(bt->wstrd, hclk, &err);
	bt->smbwstwr = FUNC0(bt->wstwr, hclk, &err);
	bt->smbwstoen = FUNC0(bt->wstoen, hclk, &err);
	bt->smbwstwen = FUNC0(bt->wstwen, hclk, &err);
	bt->smbwstbrd = FUNC0(bt->wstbrd, hclk, &err);

	return err;
}