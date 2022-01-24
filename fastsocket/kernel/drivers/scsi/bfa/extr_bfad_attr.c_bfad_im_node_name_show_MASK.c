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
typedef  int /*<<< orphan*/  u64 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bfad_port_s {int /*<<< orphan*/  fcs_port; } ;
struct bfad_im_port_s {struct bfad_port_s* port; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
				 char *buf)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct bfad_im_port_s *im_port =
			(struct bfad_im_port_s *) shost->hostdata[0];
	struct bfad_port_s    *port = im_port->port;
	u64        nwwn;

	nwwn = FUNC0(port->fcs_port);
	return FUNC3(buf, PAGE_SIZE, "0x%llx\n", FUNC2(nwwn));
}