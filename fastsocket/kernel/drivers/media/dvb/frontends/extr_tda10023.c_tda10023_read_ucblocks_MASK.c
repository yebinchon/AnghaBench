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
typedef  int u32 ;
struct tda10023_state {int dummy; } ;
struct dvb_frontend {struct tda10023_state* demodulator_priv; } ;

/* Variables and functions */
 int FUNC0 (struct tda10023_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tda10023_state*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, u32* ucblocks)
{
	struct tda10023_state* state = fe->demodulator_priv;
	u8 a,b,c,d;
	a= FUNC0 (state, 0x74);
	b= FUNC0 (state, 0x75);
	c= FUNC0 (state, 0x76);
	d= FUNC0 (state, 0x77);
	*ucblocks = a | (b<<8)|(c<<16)|(d<<24);

	FUNC1 (state, 0x10, 0x20,0x00);
	FUNC1 (state, 0x10, 0x20,0x20);
	FUNC1 (state, 0x13, 0x01, 0x00);

	return 0;
}