#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_7__ {scalar_t__ voltags; TYPE_1__* device; } ;
typedef  TYPE_2__ scsi_changer ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {int lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int READ_ELEMENT_STATUS ; 
 int FUNC0 (TYPE_2__*,int*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(scsi_changer *ch, u_int elem, char *data)
{
	u_char  cmd[12];
	u_char  *buffer;
	int     result;

	buffer = FUNC4(512, GFP_KERNEL | GFP_DMA);
	if(!buffer)
		return -ENOMEM;

 retry:
	FUNC6(cmd,0,sizeof(cmd));
	cmd[0] = READ_ELEMENT_STATUS;
	cmd[1] = (ch->device->lun << 5) |
		(ch->voltags ? 0x10 : 0) |
		FUNC1(ch,elem);
	cmd[2] = (elem >> 8) & 0xff;
	cmd[3] = elem        & 0xff;
	cmd[5] = 1;
	cmd[9] = 255;
	if (0 == (result = FUNC0(ch, cmd, buffer, 256, DMA_FROM_DEVICE))) {
		if (((buffer[16] << 8) | buffer[17]) != elem) {
			FUNC2("asked for element 0x%02x, got 0x%02x\n",
				elem,(buffer[16] << 8) | buffer[17]);
			FUNC3(buffer);
			return -EIO;
		}
		FUNC5(data,buffer+16,16);
	} else {
		if (ch->voltags) {
			ch->voltags = 0;
			FUNC7("device has no volume tag support\n");
			goto retry;
		}
		FUNC2("READ ELEMENT STATUS for element 0x%x failed\n",elem);
	}
	FUNC3(buffer);
	return result;
}