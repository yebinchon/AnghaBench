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
struct ovcamchip_control {int id; unsigned char value; } ;
struct ovcamchip {struct ov6x30* spriv; } ;
struct ov6x30 {unsigned char bandfilt; unsigned char auto_brt; unsigned char auto_exp; unsigned char backlight; unsigned char mirror; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,int,...) ; 
 int EPERM ; 
#define  OVCAMCHIP_CID_AUTOBRIGHT 137 
#define  OVCAMCHIP_CID_AUTOEXP 136 
#define  OVCAMCHIP_CID_BACKLIGHT 135 
#define  OVCAMCHIP_CID_BANDFILT 134 
#define  OVCAMCHIP_CID_BRIGHT 133 
#define  OVCAMCHIP_CID_CONT 132 
#define  OVCAMCHIP_CID_EXP 131 
#define  OVCAMCHIP_CID_HUE 130 
#define  OVCAMCHIP_CID_MIRROR 129 
#define  OVCAMCHIP_CID_SAT 128 
 int /*<<< orphan*/  REG_BLUE ; 
 int /*<<< orphan*/  REG_BRT ; 
 int /*<<< orphan*/  REG_CNT ; 
 int /*<<< orphan*/  REG_EXP ; 
 int /*<<< orphan*/  REG_SAT ; 
 struct ovcamchip* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *c,
			      struct ovcamchip_control *ctl)
{
	struct ovcamchip *ov = FUNC1(c);
	struct ov6x30 *s = ov->spriv;
	int rc = 0;
	unsigned char val = 0;

	switch (ctl->id) {
	case OVCAMCHIP_CID_CONT:
		rc = FUNC2(c, REG_CNT, &val);
		ctl->value = (val & 0x0f) << 12;
		break;
	case OVCAMCHIP_CID_BRIGHT:
		rc = FUNC2(c, REG_BRT, &val);
		ctl->value = val << 8;
		break;
	case OVCAMCHIP_CID_SAT:
		rc = FUNC2(c, REG_SAT, &val);
		ctl->value = val << 8;
		break;
	case OVCAMCHIP_CID_HUE:
		rc = FUNC2(c, REG_BLUE, &val);
		ctl->value = val << 8;
		break;
	case OVCAMCHIP_CID_EXP:
		rc = FUNC2(c, REG_EXP, &val);
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