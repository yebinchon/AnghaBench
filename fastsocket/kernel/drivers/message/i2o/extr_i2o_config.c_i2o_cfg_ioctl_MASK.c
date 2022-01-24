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
 int EINVAL ; 
#define  I2OEVTGET 139 
#define  I2OEVTREG 138 
#define  I2OGETIOPS 137 
#define  I2OHRTGET 136 
#define  I2OLCTGET 135 
#define  I2OPARMGET 134 
#define  I2OPARMSET 133 
#define  I2OPASSTHRU 132 
#define  I2OSWDEL 131 
#define  I2OSWDL 130 
#define  I2OSWUL 129 
#define  I2OVALIDATE 128 
 int FUNC0 (unsigned long,struct file*) ; 
 int FUNC1 (unsigned long,struct file*) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long,int const) ; 
 int FUNC6 (unsigned long) ; 
 int FUNC7 (unsigned long) ; 
 int FUNC8 (unsigned long) ; 
 int FUNC9 (unsigned long) ; 
 int FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct file *fp, unsigned int cmd,
			 unsigned long arg)
{
	int ret;

	switch (cmd) {
	case I2OGETIOPS:
		ret = FUNC3(arg);
		break;

	case I2OHRTGET:
		ret = FUNC2(arg);
		break;

	case I2OLCTGET:
		ret = FUNC4(arg);
		break;

	case I2OPARMSET:
		ret = FUNC5(arg, I2OPARMSET);
		break;

	case I2OPARMGET:
		ret = FUNC5(arg, I2OPARMGET);
		break;

	case I2OSWDL:
		ret = FUNC8(arg);
		break;

	case I2OSWUL:
		ret = FUNC9(arg);
		break;

	case I2OSWDEL:
		ret = FUNC7(arg);
		break;

	case I2OVALIDATE:
		ret = FUNC10(arg);
		break;

	case I2OEVTREG:
		ret = FUNC1(arg, fp);
		break;

	case I2OEVTGET:
		ret = FUNC0(arg, fp);
		break;

#ifdef CONFIG_I2O_EXT_ADAPTEC
	case I2OPASSTHRU:
		ret = i2o_cfg_passthru(arg);
		break;
#endif

	default:
		FUNC11("unknown ioctl called!\n");
		ret = -EINVAL;
	}

	return ret;
}