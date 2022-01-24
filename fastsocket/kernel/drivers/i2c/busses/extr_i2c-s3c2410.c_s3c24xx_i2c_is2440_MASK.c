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
struct s3c24xx_i2c {int /*<<< orphan*/  dev; } ;
struct platform_device {int dummy; } ;
typedef  enum s3c24xx_i2c_type { ____Placeholder_s3c24xx_i2c_type } s3c24xx_i2c_type ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 int TYPE_S3C2440 ; 
 TYPE_1__* FUNC0 (struct platform_device*) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct s3c24xx_i2c *i2c)
{
	struct platform_device *pdev = FUNC1(i2c->dev);
	enum s3c24xx_i2c_type type;

	type = FUNC0(pdev)->driver_data;
	return type == TYPE_S3C2440;
}