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
struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct ov772x_priv {TYPE_1__* info; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int OV772X_FLAG_8BIT ; 
 unsigned long SOCAM_DATAWIDTH_10 ; 
 unsigned long SOCAM_DATAWIDTH_8 ; 
 unsigned long SOCAM_DATA_ACTIVE_HIGH ; 
 unsigned long SOCAM_HSYNC_ACTIVE_HIGH ; 
 unsigned long SOCAM_MASTER ; 
 unsigned long SOCAM_PCLK_SAMPLE_RISING ; 
 unsigned long SOCAM_VSYNC_ACTIVE_HIGH ; 
 struct ov772x_priv* FUNC0 (struct i2c_client*) ; 
 unsigned long FUNC1 (struct soc_camera_link*,unsigned long) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_camera_device*) ; 
 struct soc_camera_link* FUNC4 (struct soc_camera_device*) ; 

__attribute__((used)) static unsigned long FUNC5(struct soc_camera_device *icd)
{
	struct i2c_client *client = FUNC2(FUNC3(icd));
	struct ov772x_priv *priv = FUNC0(client);
	struct soc_camera_link *icl = FUNC4(icd);
	unsigned long flags = SOCAM_PCLK_SAMPLE_RISING | SOCAM_MASTER |
		SOCAM_VSYNC_ACTIVE_HIGH | SOCAM_HSYNC_ACTIVE_HIGH |
		SOCAM_DATA_ACTIVE_HIGH;

	if (priv->info->flags & OV772X_FLAG_8BIT)
		flags |= SOCAM_DATAWIDTH_8;
	else
		flags |= SOCAM_DATAWIDTH_10;

	return FUNC1(icl, flags);
}