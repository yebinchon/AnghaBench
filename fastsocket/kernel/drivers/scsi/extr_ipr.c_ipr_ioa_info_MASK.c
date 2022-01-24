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
struct ipr_ioa_cfg {int type; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static const char * FUNC3(struct Scsi_Host *host)
{
	static char buffer[512];
	struct ipr_ioa_cfg *ioa_cfg;
	unsigned long lock_flags = 0;

	ioa_cfg = (struct ipr_ioa_cfg *) host->hostdata;

	FUNC0(host->host_lock, lock_flags);
	FUNC2(buffer, "IBM %X Storage Adapter", ioa_cfg->type);
	FUNC1(host->host_lock, lock_flags);

	return buffer;
}