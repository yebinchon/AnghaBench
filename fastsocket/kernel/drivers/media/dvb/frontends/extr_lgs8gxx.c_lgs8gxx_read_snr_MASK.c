#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct lgs8gxx_state {TYPE_1__* config; } ;
struct dvb_frontend {struct lgs8gxx_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ prod; } ;

/* Variables and functions */
 scalar_t__ LGS8GXX_PROD_LGS8G75 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lgs8gxx_state*,int,int*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u16 *snr)
{
	struct lgs8gxx_state *priv = fe->demodulator_priv;
	u8 t;
	*snr = 0;

	if (priv->config->prod == LGS8GXX_PROD_LGS8G75)
		FUNC1(priv, 0x34, &t);
	else
		FUNC1(priv, 0x95, &t);
	FUNC0("AVG Noise=0x%02X\n", t);
	*snr = 256 - t;
	*snr <<= 8;
	FUNC0("snr=0x%x\n", *snr);

	return 0;
}