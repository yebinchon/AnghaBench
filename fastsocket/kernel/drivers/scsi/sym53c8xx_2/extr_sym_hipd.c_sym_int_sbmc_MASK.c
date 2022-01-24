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
typedef  int u_char ;
struct sym_hcb {int scsi_mode; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int SMODE ; 
 int /*<<< orphan*/  nc_stest4 ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 struct sym_hcb* FUNC2 (struct Scsi_Host*) ; 
 char* FUNC3 (struct sym_hcb*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*,int) ; 

__attribute__((used)) static void FUNC6(struct Scsi_Host *shost)
{
	struct sym_hcb *np = FUNC2(shost);
	u_char scsi_mode = FUNC0(np, nc_stest4) & SMODE;

	/*
	 *  Notify user.
	 */
	FUNC1("%s: SCSI BUS mode change from %s to %s.\n", FUNC3(np),
		FUNC4(np->scsi_mode), FUNC4(scsi_mode));

	/*
	 *  Should suspend command processing for a few seconds and 
	 *  reinitialize all except the chip.
	 */
	FUNC5(shost, 2);
}