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
struct tda9887_priv {int dummy; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(struct dvb_frontend *fe, unsigned char *buf)
{
	struct tda9887_priv *priv = fe->analog_demod_priv;

	static char *sound[4] = {
		"AM/TV",
		"FM/radio",
		"FM/TV",
		"FM/radio"
	};
	static char *adjust[32] = {
		"-16", "-15", "-14", "-13", "-12", "-11", "-10", "-9",
		"-8",  "-7",  "-6",  "-5",  "-4",  "-3",  "-2",  "-1",
		"0",   "+1",  "+2",  "+3",  "+4",  "+5",  "+6",  "+7",
		"+8",  "+9",  "+10", "+11", "+12", "+13", "+14", "+15"
	};
	static char *deemph[4] = {
		"no", "no", "75", "50"
	};
	static char *carrier[4] = {
		"4.5 MHz",
		"5.5 MHz",
		"6.0 MHz",
		"6.5 MHz / AM"
	};
	static char *vif[8] = {
		"58.75 MHz",
		"45.75 MHz",
		"38.9 MHz",
		"38.0 MHz",
		"33.9 MHz",
		"33.4 MHz",
		"45.75 MHz + pin13",
		"38.9 MHz + pin13",
	};
	static char *rif[4] = {
		"44 MHz",
		"52 MHz",
		"52 MHz",
		"44 MHz",
	};

	FUNC0("write: byte B 0x%02x\n", buf[1]);
	FUNC0("  B0   video mode      : %s\n",
		   (buf[1] & 0x01) ? "video trap" : "sound trap");
	FUNC0("  B1   auto mute fm    : %s\n",
		   (buf[1] & 0x02) ? "yes" : "no");
	FUNC0("  B2   carrier mode    : %s\n",
		   (buf[1] & 0x04) ? "QSS" : "Intercarrier");
	FUNC0("  B3-4 tv sound/radio  : %s\n",
		   sound[(buf[1] & 0x18) >> 3]);
	FUNC0("  B5   force mute audio: %s\n",
		   (buf[1] & 0x20) ? "yes" : "no");
	FUNC0("  B6   output port 1   : %s\n",
		   (buf[1] & 0x40) ? "high (inactive)" : "low (active)");
	FUNC0("  B7   output port 2   : %s\n",
		   (buf[1] & 0x80) ? "high (inactive)" : "low (active)");

	FUNC0("write: byte C 0x%02x\n", buf[2]);
	FUNC0("  C0-4 top adjustment  : %s dB\n",
		   adjust[buf[2] & 0x1f]);
	FUNC0("  C5-6 de-emphasis     : %s\n",
		   deemph[(buf[2] & 0x60) >> 5]);
	FUNC0("  C7   audio gain      : %s\n",
		   (buf[2] & 0x80) ? "-6" : "0");

	FUNC0("write: byte E 0x%02x\n", buf[3]);
	FUNC0("  E0-1 sound carrier   : %s\n",
		   carrier[(buf[3] & 0x03)]);
	FUNC0("  E6   l pll gating   : %s\n",
		   (buf[3] & 0x40) ? "36" : "13");

	if (buf[1] & 0x08) {
		/* radio */
		FUNC0("  E2-4 video if        : %s\n",
			   rif[(buf[3] & 0x0c) >> 2]);
		FUNC0("  E7   vif agc output  : %s\n",
			   (buf[3] & 0x80)
			   ? ((buf[3] & 0x10) ? "fm-agc radio" :
						"sif-agc radio")
			   : "fm radio carrier afc");
	} else {
		/* video */
		FUNC0("  E2-4 video if        : %s\n",
			   vif[(buf[3] & 0x1c) >> 2]);
		FUNC0("  E5   tuner gain      : %s\n",
			   (buf[3] & 0x80)
			   ? ((buf[3] & 0x20) ? "external" : "normal")
			   : ((buf[3] & 0x20) ? "minimum"  : "normal"));
		FUNC0("  E7   vif agc output  : %s\n",
			   (buf[3] & 0x80) ? ((buf[3] & 0x20)
				? "pin3 port, pin22 vif agc out"
				: "pin22 port, pin3 vif acg ext in")
				: "pin3+pin22 port");
	}
	FUNC0("--\n");
}