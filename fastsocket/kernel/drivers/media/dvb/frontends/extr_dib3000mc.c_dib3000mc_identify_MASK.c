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
typedef  int u16 ;
struct dib3000mc_state {int dev_id; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (struct dib3000mc_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct dib3000mc_state *state)
{
	u16 value;
	if ((value = FUNC0(state, 1025)) != 0x01b3) {
		FUNC1("-E-  DiB3000MC/P: wrong Vendor ID (read=0x%x)\n",value);
		return -EREMOTEIO;
	}

	value = FUNC0(state, 1026);
	if (value != 0x3001 && value != 0x3002) {
		FUNC1("-E-  DiB3000MC/P: wrong Device ID (%x)\n",value);
		return -EREMOTEIO;
	}
	state->dev_id = value;

	FUNC1("-I-  found DiB3000MC/P: %x\n",state->dev_id);

	return 0;
}