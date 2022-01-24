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
struct ppc4xx_ecc_status {int dummy; } ;
struct mem_ctl_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mem_ctl_info const*,struct ppc4xx_ecc_status const*,char*,size_t) ; 
 int FUNC1 (struct mem_ctl_info const*,struct ppc4xx_ecc_status const*,char*,size_t) ; 
 int FUNC2 (struct mem_ctl_info const*,struct ppc4xx_ecc_status const*,char*,size_t) ; 

__attribute__((used)) static int
FUNC3(const struct mem_ctl_info *mci,
				 const struct ppc4xx_ecc_status *status,
				 char *buffer,
				 size_t size)
{
	int n, total = 0;

	n = FUNC0(mci, status, buffer, size);

	if (n < 0 || n >= size)
		goto fail;

	buffer += n;
	size -= n;
	total += n;

	n = FUNC1(mci, status, buffer, size);

	if (n < 0 || n >= size)
		goto fail;

	buffer += n;
	size -= n;
	total += n;

	n = FUNC2(mci, status, buffer, size);

	if (n < 0 || n >= size)
		goto fail;

	buffer += n;
	size -= n;
	total += n;

 fail:
	return total;
}