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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bfad_s {int /*<<< orphan*/  bfad_lock; } ;
struct bfad_port_s {int /*<<< orphan*/  fcs_port; } ;
struct bfad_im_port_s {struct bfad_s* bfad; struct bfad_port_s* port; } ;
struct bfa_rport_qualifier_s {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct bfa_rport_qualifier_s*,int*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_rport_qualifier_s*) ; 
 struct bfa_rport_qualifier_s* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t
FUNC7(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_port_s    *port = im_port->port;
	struct bfad_s         *bfad = im_port->bfad;
	int        nrports = 2048;
	struct bfa_rport_qualifier_s *rports = NULL;
	unsigned long   flags;

	rports = FUNC3(sizeof(struct bfa_rport_qualifier_s) * nrports,
			 GFP_ATOMIC);
	if (rports == NULL)
		return FUNC4(buf, PAGE_SIZE, "Failed\n");

	FUNC5(&bfad->bfad_lock, flags);
	FUNC0(port->fcs_port, rports, &nrports);
	FUNC6(&bfad->bfad_lock, flags);
	FUNC2(rports);

	return FUNC4(buf, PAGE_SIZE, "%d\n", nrports);
}