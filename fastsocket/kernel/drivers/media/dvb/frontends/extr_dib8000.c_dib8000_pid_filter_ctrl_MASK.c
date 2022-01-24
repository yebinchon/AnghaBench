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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int) ; 
 int FUNC1 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

int FUNC3(struct dvb_frontend *fe, u8 onoff)
{
	struct dib8000_state *st = fe->demodulator_priv;
    u16 val = FUNC0(st, 299) & 0xffef;
    val |= (onoff & 0x1) << 4;

    FUNC2("pid filter enabled %d", onoff);
    return FUNC1(st, 299, val);
}