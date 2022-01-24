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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ ETRAXI2C_IOCTYPE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
#define  I2C_READREG 129 
#define  I2C_WRITEREG 128 
 int FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned char,...) ; 

__attribute__((used)) static int
FUNC9(struct inode *inode, struct file *file,
	  unsigned int cmd, unsigned long arg)
{
	if(FUNC5(cmd) != ETRAXI2C_IOCTYPE) {
		return -EINVAL;
	}

	switch (FUNC4(cmd)) {
		case I2C_WRITEREG:
			/* write to an i2c slave */
			FUNC0(FUNC8("i2cw %d %d %d\n", 
				 FUNC2(arg),
				 FUNC1(arg),
				 FUNC3(arg)));

			return FUNC7(FUNC2(arg),
					    FUNC1(arg),
					    FUNC3(arg));
		case I2C_READREG:
		{
			unsigned char val;
			/* read from an i2c slave */
			FUNC0(FUNC8("i2cr %d %d ", 
				FUNC2(arg),
				FUNC1(arg)));
			val = FUNC6(FUNC2(arg), FUNC1(arg));
			FUNC0(FUNC8("= %d\n", val));
			return val;
		}					    
		default:
			return -EINVAL;

	}
	
	return 0;
}