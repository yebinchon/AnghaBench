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
struct ovcamchip_control {int id; int value; } ;
struct ovcamchip {struct ov7x20* spriv; } ;
struct ov7x20 {unsigned char bandfilt; unsigned char auto_brt; unsigned char auto_exp; unsigned char backlight; unsigned char mirror; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,int,...) ; 
 int EPERM ; 
#define  OVCAMCHIP_CID_AUTOBRIGHT 136 
#define  OVCAMCHIP_CID_AUTOEXP 135 
#define  OVCAMCHIP_CID_BACKLIGHT 134 
#define  OVCAMCHIP_CID_BANDFILT 133 
#define  OVCAMCHIP_CID_BRIGHT 132 
#define  OVCAMCHIP_CID_CONT 131 
#define  OVCAMCHIP_CID_EXP 130 
#define  OVCAMCHIP_CID_MIRROR 129 
#define  OVCAMCHIP_CID_SAT 128 
 int REG_BRT ; 
 int REG_EXP ; 
 int REG_SAT ; 
 int /*<<< orphan*/  ctab ; 
 struct ovcamchip* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int FUNC3 (struct i2c_client*,int,unsigned char*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *c,
				   struct ovcamchip_control *ctl)
{
	struct ovcamchip *ov = FUNC1(c);
	struct ov7x20 *s = ov->spriv;
	int rc = 0;
	unsigned char val = 0;

	switch (ctl->id) {
	case OVCAMCHIP_CID_CONT:
		rc = FUNC3(c, 0x64, &val);
		ctl->value = FUNC2(ctab, 16, val) << 12;
		break;
	case OVCAMCHIP_CID_BRIGHT:
		rc = FUNC3(c, REG_BRT, &val);
		ctl->value = val << 8;
		break;
	case OVCAMCHIP_CID_SAT:
		rc = FUNC3(c, REG_SAT, &val);
		ctl->value = val << 8;
		break;
	case OVCAMCHIP_CID_EXP:
		rc = FUNC3(c, REG_EXP, &val);
		ctl->value = val;
		break;
	case OVCAMCHIP_CID_BANDFILT:
		ctl->value = s->bandfilt;
		break;
	case OVCAMCHIP_CID_AUTOBRIGHT:
		ctl->value = s->auto_brt;
		break;
	case OVCAMCHIP_CID_AUTOEXP:
		ctl->value = s->auto_exp;
		break;
	case OVCAMCHIP_CID_BACKLIGHT:
		ctl->value = s->backlight;
		break;
	case OVCAMCHIP_CID_MIRROR:
		ctl->value = s->mirror;
		break;
	default:
		FUNC0(2, &c->dev, "control not supported: %d", ctl->id);
		return -EPERM;
	}

	FUNC0(3, &c->dev, "id=%d, arg=%d, rc=%d", ctl->id, ctl->value, rc);
	return rc;
}