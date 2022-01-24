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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int dummy; } ;
struct iommu {int /*<<< orphan*/  nr_tlb_entries; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct dentry* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iommu_debug_root ; 
 int /*<<< orphan*/  mem ; 
 int /*<<< orphan*/  mmap ; 
 int /*<<< orphan*/  pagetable ; 
 struct iommu* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  regs ; 
 int /*<<< orphan*/  tlb ; 
 struct platform_device* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  ver ; 

__attribute__((used)) static int FUNC6(struct device *dev, void *data)
{
	struct platform_device *pdev = FUNC5(dev);
	struct iommu *obj = FUNC4(pdev);
	struct dentry *d, *parent;

	if (!obj || !obj->dev)
		return -EINVAL;

	d = FUNC2(obj->name, iommu_debug_root);
	if (!d)
		return -ENOMEM;
	parent = d;

	d = FUNC3("nr_tlb_entries", 400, parent,
			      (u8 *)&obj->nr_tlb_entries);
	if (!d)
		return -ENOMEM;

	FUNC1(ver);
	FUNC1(regs);
	FUNC1(tlb);
	FUNC0(pagetable);
	FUNC1(mmap);
	FUNC0(mem);

	return 0;
}