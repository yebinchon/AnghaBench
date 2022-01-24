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
struct irb {int dummy; } ;
struct claw_privbk {struct chbk* channel; } ;
struct chbk {int flag; int /*<<< orphan*/ * irb; int /*<<< orphan*/  devno; int /*<<< orphan*/  id; struct ccw_device* cdev; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  CLAW_ID_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct ccw_dev_id*) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC5(struct ccw_device *cdev,int i,struct claw_privbk *privptr)
{
	struct chbk *p_ch;
	struct ccw_dev_id dev_id;

	FUNC0(2, setup, "%s", FUNC2(&cdev->dev));
	privptr->channel[i].flag  = i+1;   /* Read is 1 Write is 2 */
	p_ch = &privptr->channel[i];
	p_ch->cdev = cdev;
	FUNC4(p_ch->id, CLAW_ID_SIZE, "cl-%s", FUNC2(&cdev->dev));
	FUNC1(cdev, &dev_id);
	p_ch->devno = dev_id.devno;
	if ((p_ch->irb = FUNC3(sizeof (struct irb),GFP_KERNEL)) == NULL) {
		return -ENOMEM;
	}
	return 0;
}