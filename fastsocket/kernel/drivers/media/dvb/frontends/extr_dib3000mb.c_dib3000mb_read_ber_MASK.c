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
typedef  int u32 ;
struct dvb_frontend {struct dib3000_state* demodulator_priv; } ;
struct dib3000_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB3000MB_REG_BER_LSB ; 
 int /*<<< orphan*/  DIB3000MB_REG_BER_MSB ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend* fe, u32 *ber)
{
	struct dib3000_state* state = fe->demodulator_priv;

	*ber = ((FUNC0(DIB3000MB_REG_BER_MSB) << 16) | FUNC0(DIB3000MB_REG_BER_LSB));
	return 0;
}