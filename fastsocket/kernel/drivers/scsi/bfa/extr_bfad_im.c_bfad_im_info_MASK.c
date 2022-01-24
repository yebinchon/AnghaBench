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
struct bfad_s {char* pci_name; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  bfa_buf ;

/* Variables and functions */
 char* BFAD_DRIVER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(struct Scsi_Host *shost)
{
	static char     bfa_buf[256];
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_s *bfad = im_port->bfad;

	FUNC0(bfa_buf, 0, sizeof(bfa_buf));
	FUNC1(bfa_buf, sizeof(bfa_buf),
		"Brocade FC/FCOE Adapter, " "hwpath: %s driver: %s",
		bfad->pci_name, BFAD_DRIVER_VERSION);
	return bfa_buf;
}