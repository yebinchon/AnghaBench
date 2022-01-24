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
struct tw9910_priv {TYPE_1__* info; } ;
struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {unsigned long buswidth; } ;

/* Variables and functions */
 unsigned long SOCAM_DATA_ACTIVE_HIGH ; 
 unsigned long SOCAM_HSYNC_ACTIVE_HIGH ; 
 unsigned long SOCAM_HSYNC_ACTIVE_LOW ; 
 unsigned long SOCAM_MASTER ; 
 unsigned long SOCAM_PCLK_SAMPLE_RISING ; 
 unsigned long SOCAM_VSYNC_ACTIVE_HIGH ; 
 unsigned long SOCAM_VSYNC_ACTIVE_LOW ; 
 unsigned long FUNC0 (struct soc_camera_link*,unsigned long) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_camera_device*) ; 
 struct soc_camera_link* FUNC3 (struct soc_camera_device*) ; 
 struct tw9910_priv* FUNC4 (struct i2c_client*) ; 

__attribute__((used)) static unsigned long FUNC5(struct soc_camera_device *icd)
{
	struct i2c_client *client = FUNC1(FUNC2(icd));
	struct tw9910_priv *priv = FUNC4(client);
	struct soc_camera_link *icl = FUNC3(icd);
	unsigned long flags = SOCAM_PCLK_SAMPLE_RISING | SOCAM_MASTER |
		SOCAM_VSYNC_ACTIVE_HIGH | SOCAM_HSYNC_ACTIVE_HIGH |
		SOCAM_VSYNC_ACTIVE_LOW  | SOCAM_HSYNC_ACTIVE_LOW  |
		SOCAM_DATA_ACTIVE_HIGH | priv->info->buswidth;

	return FUNC0(icl, flags);
}