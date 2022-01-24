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
struct TYPE_4__ {int reset; } ;
struct TYPE_3__ {char data; int status; int /*<<< orphan*/  jiffies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FDCS ; 
 int /*<<< orphan*/  FD_DATA ; 
 size_t OLOGSIZE ; 
 int STATUS_DIR ; 
 int STATUS_DMA ; 
 int STATUS_READY ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdc ; 
 int /*<<< orphan*/  initialising ; 
 int /*<<< orphan*/  jiffies ; 
 TYPE_1__* output_log ; 
 size_t output_log_pos ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(char byte)
{
	int status;

	if ((status = FUNC3()) < 0)
		return -1;
	if ((status & (STATUS_READY | STATUS_DIR | STATUS_DMA)) == STATUS_READY) {
		FUNC1(byte, FD_DATA);
#ifdef FLOPPY_SANITY_CHECK
		output_log[output_log_pos].data = byte;
		output_log[output_log_pos].status = status;
		output_log[output_log_pos].jiffies = jiffies;
		output_log_pos = (output_log_pos + 1) % OLOGSIZE;
#endif
		return 0;
	}
	FDCS->reset = 1;
	if (!initialising) {
		FUNC0("Unable to send byte %x to FDC. Fdc=%x Status=%x\n",
		       byte, fdc, status);
		FUNC2();
	}
	return -1;
}