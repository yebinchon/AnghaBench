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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA8XXX_ADDR_DDR_NET ; 
 int /*<<< orphan*/  QLA8XXX_ADDR_DDR_NET_MAX ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC1(struct scsi_qla_host *ha,
		unsigned long long addr, int size)
{
	if (!FUNC0(addr, QLA8XXX_ADDR_DDR_NET,
	    QLA8XXX_ADDR_DDR_NET_MAX) ||
	    !FUNC0(addr + size - 1,
	    QLA8XXX_ADDR_DDR_NET, QLA8XXX_ADDR_DDR_NET_MAX) ||
	    ((size != 1) && (size != 2) && (size != 4) && (size != 8))) {
		return 0;
	}
	return 1;
}