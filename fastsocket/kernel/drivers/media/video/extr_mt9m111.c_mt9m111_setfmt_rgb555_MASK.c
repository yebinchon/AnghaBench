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
struct mt9m111 {scalar_t__ swap_rgb_even_odd; scalar_t__ swap_rgb_red_blue; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int MT9M111_OUTFMT_RGB ; 
 int MT9M111_OUTFMT_RGB555 ; 
 int MT9M111_OUTFMT_SWAP_RGB_EVEN ; 
 int MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr ; 
 int FUNC0 (struct i2c_client*,int) ; 
 struct mt9m111* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC1(client);
	int val = 0;

	if (mt9m111->swap_rgb_red_blue)
		val |= MT9M111_OUTFMT_SWAP_YCbCr_Cb_Cr;
	if (mt9m111->swap_rgb_even_odd)
		val |= MT9M111_OUTFMT_SWAP_RGB_EVEN;
	val |= MT9M111_OUTFMT_RGB | MT9M111_OUTFMT_RGB555;

	return FUNC0(client, val);
}