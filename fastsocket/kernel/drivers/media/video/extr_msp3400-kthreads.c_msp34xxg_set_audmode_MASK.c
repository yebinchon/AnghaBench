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
struct msp_state {int std; int rxsubchans; scalar_t__ audmode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ V4L2_TUNER_MODE_LANG1_LANG2 ; 
 scalar_t__ V4L2_TUNER_MODE_LANG2 ; 
 int V4L2_TUNER_SUB_SAP ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct i2c_client *client)
{
	struct msp_state *state = FUNC3(FUNC0(client));

	if (state->std == 0x20) {
	       if ((state->rxsubchans & V4L2_TUNER_SUB_SAP) &&
		   (state->audmode == V4L2_TUNER_MODE_LANG1_LANG2 ||
		    state->audmode == V4L2_TUNER_MODE_LANG2)) {
			FUNC2(client, 0x20, 0x21);
	       } else {
			FUNC2(client, 0x20, 0x20);
	       }
	}

	FUNC1(client);
}