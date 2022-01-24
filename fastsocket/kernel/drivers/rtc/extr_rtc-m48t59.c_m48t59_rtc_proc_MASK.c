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
typedef  int u8 ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {struct m48t59_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T59_FLAGS ; 
 int M48T59_FLAGS_BF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct m48t59_private* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct seq_file *seq)
{
	struct platform_device *pdev = FUNC5(dev);
	struct m48t59_plat_data *pdata = pdev->dev.platform_data;
	struct m48t59_private *m48t59 = FUNC1(pdev);
	unsigned long flags;
	u8 val;

	FUNC3(&m48t59->lock, flags);
	val = FUNC0(M48T59_FLAGS);
	FUNC4(&m48t59->lock, flags);

	FUNC2(seq, "battery\t\t: %s\n",
		 (val & M48T59_FLAGS_BF) ? "low" : "normal");
	return 0;
}