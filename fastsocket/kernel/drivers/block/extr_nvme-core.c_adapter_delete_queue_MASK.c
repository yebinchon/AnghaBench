#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ delete_queue; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct nvme_dev*,struct nvme_command*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nvme_dev *dev, u8 opcode, u16 id)
{
	int status;
	struct nvme_command c;

	FUNC1(&c, 0, sizeof(c));
	c.delete_queue.opcode = opcode;
	c.delete_queue.qid = FUNC0(id);

	status = FUNC2(dev, &c, NULL);
	if (status)
		return -EIO;
	return 0;
}