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
typedef  int /*<<< orphan*/  u32 ;
struct aac_dev {int dummy; } ;

/* Variables and functions */
 int DOORBELL_0 ; 
 int /*<<< orphan*/  DoorbellClrReg_p ; 
 int /*<<< orphan*/  DoorbellReg_p ; 
 int /*<<< orphan*/  DoorbellReg_s ; 
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  Mailbox0 ; 
 int /*<<< orphan*/  Mailbox1 ; 
 int /*<<< orphan*/  Mailbox2 ; 
 int /*<<< orphan*/  Mailbox3 ; 
 int /*<<< orphan*/  Mailbox4 ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct aac_dev *dev, u32 command, 
		u32 p1, u32 p2, u32 p3, u32 p4, u32 p5, u32 p6,
		u32 *ret, u32 *r1, u32 *r2, u32 *r3, u32 *r4)
{
	unsigned long start;
 	int ok;
	/*
	 *	Write the Command into Mailbox 0
	 */
	FUNC3(dev, Mailbox0, command);
	/*
	 *	Write the parameters into Mailboxes 1 - 4
	 */
	FUNC3(dev, Mailbox1, p1);
	FUNC3(dev, Mailbox2, p2);
	FUNC3(dev, Mailbox3, p3);
	FUNC3(dev, Mailbox4, p4);

	/*
	 *	Clear the synch command doorbell to start on a clean slate.
	 */
	FUNC4(dev, DoorbellClrReg_p, DOORBELL_0);
	/*
	 *	Signal that there is a new synch command
	 */
	FUNC4(dev, DoorbellReg_s, DOORBELL_0);

	ok = 0;
	start = jiffies;

	while(FUNC5(jiffies, start+30*HZ))
	{
		/*
		 *	Delay 5uS so that the monitor gets access
		 */
		FUNC6(5);
		/*
		 *	Mon110 will set doorbell0 bit when it has 
		 *	completed the command.
		 */
		if(FUNC2(dev, DoorbellReg_p) & DOORBELL_0)  {
			ok = 1;
			break;
		}
		FUNC0(1);
	}

	if (ok != 1)
		return -ETIMEDOUT;
	/*
	 *	Clear the synch command doorbell.
	 */
	FUNC4(dev, DoorbellClrReg_p, DOORBELL_0);
	/*
	 *	Pull the synch status from Mailbox 0.
	 */
	if (ret)
		*ret = FUNC1(dev, Mailbox0);
	if (r1)
		*r1 = FUNC1(dev, Mailbox1);
	if (r2)
		*r2 = FUNC1(dev, Mailbox2);
	if (r3)
		*r3 = FUNC1(dev, Mailbox3);
	if (r4)
		*r4 = FUNC1(dev, Mailbox4);
	return 0;
}