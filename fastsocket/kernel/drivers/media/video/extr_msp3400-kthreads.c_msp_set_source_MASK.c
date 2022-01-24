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
struct msp_state {scalar_t__ has_scart2_out; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 scalar_t__ msp_dolby ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 struct msp_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client, u16 src)
{
	struct msp_state *state = FUNC2(FUNC0(client));

	if (msp_dolby) {
		FUNC1(client, 0x0008, 0x0520); /* I2S1 */
		FUNC1(client, 0x0009, 0x0620); /* I2S2 */
	} else {
		FUNC1(client, 0x0008, src);
		FUNC1(client, 0x0009, src);
	}
	FUNC1(client, 0x000a, src);
	FUNC1(client, 0x000b, src);
	FUNC1(client, 0x000c, src);
	if (state->has_scart2_out)
		FUNC1(client, 0x0041, src);
}