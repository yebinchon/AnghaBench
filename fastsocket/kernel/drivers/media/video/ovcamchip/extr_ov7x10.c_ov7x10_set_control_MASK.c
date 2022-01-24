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
struct ovcamchip_control {int value; int id; } ;
struct ovcamchip {struct ov7x10* spriv; } ;
struct ov7x10 {int bandfilt; int auto_brt; int auto_exp; int mirror; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,int,...) ; 
 int EPERM ; 
#define  OVCAMCHIP_CID_AUTOBRIGHT 137 
#define  OVCAMCHIP_CID_AUTOEXP 136 
#define  OVCAMCHIP_CID_BANDFILT 135 
#define  OVCAMCHIP_CID_BRIGHT 134 
#define  OVCAMCHIP_CID_CONT 133 
#define  OVCAMCHIP_CID_EXP 132 
#define  OVCAMCHIP_CID_FREQ 131 
#define  OVCAMCHIP_CID_HUE 130 
#define  OVCAMCHIP_CID_MIRROR 129 
#define  OVCAMCHIP_CID_SAT 128 
 int REG_BLUE ; 
 int REG_BRT ; 
 int REG_CNT ; 
 int REG_EXP ; 
 int REG_RED ; 
 int REG_SAT ; 
 struct ovcamchip* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int,int) ; 
 int FUNC3 (struct i2c_client*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *c,
			      struct ovcamchip_control *ctl)
{
	struct ovcamchip *ov = FUNC1(c);
	struct ov7x10 *s = ov->spriv;
	int rc;
	int v = ctl->value;

	switch (ctl->id) {
	case OVCAMCHIP_CID_CONT:
		rc = FUNC2(c, REG_CNT, v >> 8);
		break;
	case OVCAMCHIP_CID_BRIGHT:
		rc = FUNC2(c, REG_BRT, v >> 8);
		break;
	case OVCAMCHIP_CID_SAT:
		rc = FUNC2(c, REG_SAT, v >> 8);
		break;
	case OVCAMCHIP_CID_HUE:
		rc = FUNC2(c, REG_RED, 0xFF - (v >> 8));
		if (rc < 0)
			goto out;

		rc = FUNC2(c, REG_BLUE, v >> 8);
		break;
	case OVCAMCHIP_CID_EXP:
		rc = FUNC2(c, REG_EXP, v);
		break;
	case OVCAMCHIP_CID_FREQ:
	{
		int sixty = (v == 60);

		rc = FUNC3(c, 0x2a, sixty?0x00:0x80, 0x80);
		if (rc < 0)
			goto out;

		rc = FUNC2(c, 0x2b, sixty?0x00:0xac);
		if (rc < 0)
			goto out;

		rc = FUNC3(c, 0x13, 0x10, 0x10);
		if (rc < 0)
			goto out;

		rc = FUNC3(c, 0x13, 0x00, 0x10);
		break;
	}
	case OVCAMCHIP_CID_BANDFILT:
		rc = FUNC3(c, 0x2d, v?0x04:0x00, 0x04);
		s->bandfilt = v;
		break;
	case OVCAMCHIP_CID_AUTOBRIGHT:
		rc = FUNC3(c, 0x2d, v?0x10:0x00, 0x10);
		s->auto_brt = v;
		break;
	case OVCAMCHIP_CID_AUTOEXP:
		rc = FUNC3(c, 0x29, v?0x00:0x80, 0x80);
		s->auto_exp = v;
		break;
	case OVCAMCHIP_CID_MIRROR:
		rc = FUNC3(c, 0x12, v?0x40:0x00, 0x40);
		s->mirror = v;
		break;
	default:
		FUNC0(2, &c->dev, "control not supported: %d", ctl->id);
		return -EPERM;
	}

out:
	FUNC0(3, &c->dev, "id=%d, arg=%d, rc=%d", ctl->id, v, rc);
	return rc;
}