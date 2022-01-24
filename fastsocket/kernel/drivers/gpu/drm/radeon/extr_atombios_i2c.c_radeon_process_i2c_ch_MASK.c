#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_6__ {int /*<<< orphan*/  i2c_id; } ;
struct radeon_i2c_chan {TYPE_1__ rec; struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_5__* atom_context; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef  int /*<<< orphan*/  args ;
struct TYPE_9__ {scalar_t__ scratch; } ;
struct TYPE_8__ {int ucTransBytes; int ucSlaveAddr; scalar_t__ ucStatus; int /*<<< orphan*/  ucLineNumber; scalar_t__ ucRegIndex; int /*<<< orphan*/  ucI2CSpeed; int /*<<< orphan*/  lpI2CDataOut; } ;
typedef  TYPE_3__ PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION ;

/* Variables and functions */
 int ATOM_MAX_HW_I2C_READ ; 
 int ATOM_MAX_HW_I2C_WRITE ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ HW_ASSISTED_I2C_STATUS_SUCCESS ; 
 int HW_I2C_WRITE ; 
 int /*<<< orphan*/  ProcessI2cChannelTransaction ; 
 int /*<<< orphan*/  TARGET_HW_I2C_CLOCK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct radeon_i2c_chan *chan,
				 u8 slave_addr, u8 flags,
				 u8 *buf, u8 num)
{
	struct drm_device *dev = chan->dev;
	struct radeon_device *rdev = dev->dev_private;
	PROCESS_I2C_CHANNEL_TRANSACTION_PS_ALLOCATION args;
	int index = FUNC2(COMMAND, ProcessI2cChannelTransaction);
	unsigned char *base;
	u16 out;

	FUNC6(&args, 0, sizeof(args));

	base = (unsigned char *)rdev->mode_info.atom_context->scratch;

	if (flags & HW_I2C_WRITE) {
		if (num > ATOM_MAX_HW_I2C_WRITE) {
			FUNC1("hw i2c: tried to write too many bytes (%d vs 2)\n", num);
			return -EINVAL;
		}
		FUNC5(&out, buf, num);
		args.lpI2CDataOut = FUNC4(out);
	} else {
		if (num > ATOM_MAX_HW_I2C_READ) {
			FUNC1("hw i2c: tried to read too many bytes (%d vs 255)\n", num);
			return -EINVAL;
		}
	}

	args.ucI2CSpeed = TARGET_HW_I2C_CLOCK;
	args.ucRegIndex = 0;
	args.ucTransBytes = num;
	args.ucSlaveAddr = slave_addr << 1;
	args.ucLineNumber = chan->rec.i2c_id;

	FUNC3(rdev->mode_info.atom_context, index, (uint32_t *)&args);

	/* error */
	if (args.ucStatus != HW_ASSISTED_I2C_STATUS_SUCCESS) {
		FUNC0("hw_i2c error\n");
		return -EIO;
	}

	if (!(flags & HW_I2C_WRITE))
		FUNC5(buf, base, num);

	return 0;
}