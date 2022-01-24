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
struct tw9910_priv {int revision; } ;
struct tw9910_hsync_ctrl {int start; int end; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSBEGIN ; 
 int /*<<< orphan*/  HSEND ; 
 int /*<<< orphan*/  HSLOWCTL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct tw9910_priv* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			    const struct tw9910_hsync_ctrl *hsync)
{
	struct tw9910_priv *priv = FUNC1(client);
	int ret;

	/* bit 10 - 3 */
	ret = FUNC0(client, HSBEGIN,
					(hsync->start & 0x07F8) >> 3);
	if (ret < 0)
		return ret;

	/* bit 10 - 3 */
	ret = FUNC0(client, HSEND,
					(hsync->end & 0x07F8) >> 3);
	if (ret < 0)
		return ret;

	/* So far only revisions 0 and 1 have been seen */
	/* bit 2 - 0 */
	if (1 == priv->revision)
		ret = FUNC2(client, HSLOWCTL, 0x77,
				      (hsync->start & 0x0007) << 4 |
				      (hsync->end   & 0x0007));

	return ret;
}