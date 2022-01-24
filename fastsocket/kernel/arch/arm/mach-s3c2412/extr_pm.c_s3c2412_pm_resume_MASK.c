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
struct sys_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S3C2412_PWRCFG ; 
 unsigned long S3C2412_PWRCFG_STANDBYWFI_IDLE ; 
 unsigned long S3C2412_PWRCFG_STANDBYWFI_MASK ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s3c2412_sleep ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sys_device *dev)
{
	unsigned long tmp;

	tmp = FUNC1(S3C2412_PWRCFG);
	tmp &= ~S3C2412_PWRCFG_STANDBYWFI_MASK;
	tmp |=  S3C2412_PWRCFG_STANDBYWFI_IDLE;
	FUNC2(tmp, S3C2412_PWRCFG);

	FUNC3(s3c2412_sleep, FUNC0(s3c2412_sleep));
	return 0;
}