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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct sym_hcb {int dummy; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_dstat ; 
 int /*<<< orphan*/  nc_sist ; 
 struct sym_hcb* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct Scsi_Host *shost)
{
	struct sym_hcb *np = FUNC2(shost);
	u_short sist;
	u_char dstat;

	sist = FUNC1(np, nc_sist);
	dstat = FUNC0(np, nc_dstat);
	FUNC3(shost, sist, dstat);
}