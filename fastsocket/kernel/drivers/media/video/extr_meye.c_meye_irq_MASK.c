#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ mchip_mode; int /*<<< orphan*/  proc_list; int /*<<< orphan*/  doneq; TYPE_1__* grab_buffer; int /*<<< orphan*/  grab_temp; scalar_t__ grab_fbuffer; int /*<<< orphan*/  grabq; } ;
struct TYPE_3__ {int size; int /*<<< orphan*/  sequence; int /*<<< orphan*/  timestamp; void* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MCHIP_HIC_MODE_CONT_COMP ; 
 scalar_t__ MCHIP_HIC_MODE_CONT_OUT ; 
 int MCHIP_MM_FIR_RDY ; 
 int /*<<< orphan*/  MCHIP_MM_INTA ; 
 void* MEYE_BUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int gbufsize ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ meye ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	u32 v;
	int reqnr;
	static int sequence;

	v = FUNC8(MCHIP_MM_INTA);

	if (meye.mchip_mode != MCHIP_HIC_MODE_CONT_OUT &&
	    meye.mchip_mode != MCHIP_HIC_MODE_CONT_COMP)
		return IRQ_NONE;

again:
	v = FUNC6();
	if (!(v & MCHIP_MM_FIR_RDY))
		return IRQ_HANDLED;

	if (meye.mchip_mode == MCHIP_HIC_MODE_CONT_OUT) {
		if (FUNC1(meye.grabq, (unsigned char *)&reqnr,
			      sizeof(int)) != sizeof(int)) {
			FUNC5();
			return IRQ_HANDLED;
		}
		FUNC4(v, meye.grab_fbuffer + gbufsize * reqnr,
				      FUNC7() * FUNC9() * 2);
		meye.grab_buffer[reqnr].size = FUNC7() * FUNC9() * 2;
		meye.grab_buffer[reqnr].state = MEYE_BUF_DONE;
		FUNC0(&meye.grab_buffer[reqnr].timestamp);
		meye.grab_buffer[reqnr].sequence = sequence++;
		FUNC2(meye.doneq, (unsigned char *)&reqnr, sizeof(int));
		FUNC11(&meye.proc_list);
	} else {
		int size;
		size = FUNC3(v, meye.grab_temp, gbufsize);
		if (size == -1) {
			FUNC5();
			goto again;
		}
		if (FUNC1(meye.grabq, (unsigned char *)&reqnr,
			      sizeof(int)) != sizeof(int)) {
			FUNC5();
			goto again;
		}
		FUNC10(meye.grab_fbuffer + gbufsize * reqnr, meye.grab_temp,
		       size);
		meye.grab_buffer[reqnr].size = size;
		meye.grab_buffer[reqnr].state = MEYE_BUF_DONE;
		FUNC0(&meye.grab_buffer[reqnr].timestamp);
		meye.grab_buffer[reqnr].sequence = sequence++;
		FUNC2(meye.doneq, (unsigned char *)&reqnr, sizeof(int));
		FUNC11(&meye.proc_list);
	}
	FUNC5();
	goto again;
}