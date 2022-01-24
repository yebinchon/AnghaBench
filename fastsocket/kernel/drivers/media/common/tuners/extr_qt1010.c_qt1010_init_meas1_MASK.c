#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct qt1010_priv {int dummy; } ;
struct TYPE_3__ {scalar_t__ member_0; size_t member_1; size_t member_2; scalar_t__ oper; int reg; int val; } ;
typedef  TYPE_1__ qt1010_i2c_oper_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ QT1010_RD ; 
 scalar_t__ QT1010_WR ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t,size_t) ; 
 int FUNC2 (struct qt1010_priv*,size_t,size_t*) ; 
 int FUNC3 (struct qt1010_priv*,int,int) ; 

__attribute__((used)) static int FUNC4(struct qt1010_priv *priv,
			     u8 oper, u8 reg, u8 reg_init_val, u8 *retval)
{
	u8 i, val1, val2;
	int err;

	qt1010_i2c_oper_t i2c_data[] = {
		{ QT1010_WR, reg, reg_init_val },
		{ QT1010_WR, 0x1e, 0x00 },
		{ QT1010_WR, 0x1e, oper },
		{ QT1010_RD, reg, 0xff }
	};

	for (i = 0; i < FUNC0(i2c_data); i++) {
		if (i2c_data[i].oper == QT1010_WR) {
			err = FUNC3(priv, i2c_data[i].reg,
					      i2c_data[i].val);
		} else {
			err = FUNC2(priv, i2c_data[i].reg, &val2);
		}
		if (err) return err;
	}

	do {
		val1 = val2;
		err = FUNC2(priv, reg, &val2);
		if (err) return err;
		FUNC1("compare reg:%02x %02x %02x", reg, val1, val2);
	} while (val1 != val2);
	*retval = val1;

	return FUNC3(priv, 0x1e, 0x00);
}