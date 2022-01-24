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
struct workqueue_struct {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int /*<<< orphan*/  aud_input; int /*<<< orphan*/  vid_input; int /*<<< orphan*/  fw_wait; int /*<<< orphan*/  fw_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct workqueue_struct* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  cx25840_work_handler ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct workqueue_struct*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC16(struct i2c_client *client)
{
	FUNC0(wait);
	struct cx25840_state *state = FUNC15(FUNC9(client));
	struct workqueue_struct *q;

	/* Internal Reset */
	FUNC3(client, 0x102, ~0x01, 0x01);
	FUNC3(client, 0x102, ~0x01, 0x00);

	/* Stop microcontroller */
	FUNC3(client, 0x803, ~0x10, 0x00);

	/* DIF in reset? */
	FUNC5(client, 0x398, 0);

	/* Trust the default xtal, no division */
	/* This changes for the cx23888 products */
	FUNC5(client, 0x2, 0x76);

	/* Bring down the regulator for AUX clk */
	FUNC5(client, 0x1, 0x40);

	/* Disable DIF bypass */
	FUNC6(client, 0x33c, 0x00000001);

	/* DIF Src phase inc */
	FUNC6(client, 0x340, 0x0df7df83);

	/* Luma */
	FUNC6(client, 0x414, 0x00107d12);

	/* Chroma */
	FUNC6(client, 0x420, 0x3d008282);

	/* ADC2 input select */
	FUNC5(client, 0x102, 0x10);

	/* VIN1 & VIN5 */
	FUNC5(client, 0x103, 0x11);

	/* Enable format auto detect */
	FUNC5(client, 0x400, 0);
	/* Fast subchroma lock */
	/* White crush, Chroma AGC & Chroma Killer enabled */
	FUNC5(client, 0x401, 0xe8);

	/* Do the firmware load in a work handler to prevent.
	   Otherwise the kernel is blocked waiting for the
	   bit-banging i2c interface to finish uploading the
	   firmware. */
	FUNC1(&state->fw_work, cx25840_work_handler);
	FUNC10(&state->fw_wait);
	q = FUNC2("cx25840_fw");
	FUNC11(&state->fw_wait, &wait, TASK_UNINTERRUPTIBLE);
	FUNC12(q, &state->fw_work);
	FUNC13();
	FUNC8(&state->fw_wait, &wait);
	FUNC7(q);

	FUNC4(client);

	/* (re)set input */
	FUNC14(client, state->vid_input, state->aud_input);

	/* start microcontroller */
	FUNC3(client, 0x803, ~0x10, 0x10);
}