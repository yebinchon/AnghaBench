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
typedef  int /*<<< orphan*/  u8 ;
struct firmware {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ SAS_STRING_ADDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct Scsi_Host *shost, u8 *addr)
{
	int res;
	const struct firmware *fw;

	res = FUNC1(&fw, "sas_addr", &shost->shost_gendev);
	if (res)
		return res;

	if (fw->size < SAS_STRING_ADDR_SIZE) {
		res = -ENODEV;
		goto out;
	}

	FUNC2(addr, fw->data);

out:
	FUNC0(fw);
	return res;
}