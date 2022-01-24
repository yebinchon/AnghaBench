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
struct TYPE_2__ {int rev; } ;
struct ucode_cpu_info {TYPE_1__ cpu_sig; } ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct ucode_cpu_info* ucode_cpu_info ; 

__attribute__((used)) static ssize_t FUNC1(struct sys_device *dev,
			struct sysdev_attribute *attr, char *buf)
{
	struct ucode_cpu_info *uci = ucode_cpu_info + dev->id;

	return FUNC0(buf, "0x%x\n", uci->cpu_sig.rev);
}