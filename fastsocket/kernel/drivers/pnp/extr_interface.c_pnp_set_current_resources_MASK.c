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
struct pnp_dev {int status; scalar_t__ active; TYPE_1__* protocol; int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get ) (struct pnp_dev*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int PNP_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct pnp_dev*) ; 
 scalar_t__ FUNC9 (struct pnp_dev*) ; 
 int FUNC10 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pnp_dev*) ; 
 int /*<<< orphan*/  pnp_res_mutex ; 
 int /*<<< orphan*/  FUNC12 (char*,char**,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC16 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC17(struct device *dmdev,
					 struct device_attribute *attr,
					 const char *ubuf, size_t count)
{
	struct pnp_dev *dev = FUNC16(dmdev);
	char *buf = (void *)ubuf;
	int retval = 0;
	resource_size_t start, end;

	if (dev->status & PNP_ATTACHED) {
		retval = -EBUSY;
		FUNC0(&dev->dev, "in use; can't configure\n");
		goto done;
	}

	buf = FUNC13(buf);
	if (!FUNC14(buf, "disable", 7)) {
		retval = FUNC10(dev);
		goto done;
	}
	if (!FUNC14(buf, "activate", 8)) {
		retval = FUNC3(dev);
		goto done;
	}
	if (!FUNC14(buf, "fill", 4)) {
		if (dev->active)
			goto done;
		retval = FUNC8(dev);
		goto done;
	}
	if (!FUNC14(buf, "auto", 4)) {
		if (dev->active)
			goto done;
		FUNC11(dev);
		retval = FUNC8(dev);
		goto done;
	}
	if (!FUNC14(buf, "clear", 5)) {
		if (dev->active)
			goto done;
		FUNC11(dev);
		goto done;
	}
	if (!FUNC14(buf, "get", 3)) {
		FUNC1(&pnp_res_mutex);
		if (FUNC9(dev))
			dev->protocol->get(dev);
		FUNC2(&pnp_res_mutex);
		goto done;
	}
	if (!FUNC14(buf, "set", 3)) {
		if (dev->active)
			goto done;
		buf += 3;
		FUNC11(dev);
		FUNC1(&pnp_res_mutex);
		while (1) {
			buf = FUNC13(buf);
			if (!FUNC14(buf, "io", 2)) {
				buf = FUNC13(buf + 2);
				start = FUNC12(buf, &buf, 0);
				buf = FUNC13(buf);
				if (*buf == '-') {
					buf = FUNC13(buf + 1);
					end = FUNC12(buf, &buf, 0);
				} else
					end = start;
				FUNC5(dev, start, end, 0);
				continue;
			}
			if (!FUNC14(buf, "mem", 3)) {
				buf = FUNC13(buf + 3);
				start = FUNC12(buf, &buf, 0);
				buf = FUNC13(buf);
				if (*buf == '-') {
					buf = FUNC13(buf + 1);
					end = FUNC12(buf, &buf, 0);
				} else
					end = start;
				FUNC7(dev, start, end, 0);
				continue;
			}
			if (!FUNC14(buf, "irq", 3)) {
				buf = FUNC13(buf + 3);
				start = FUNC12(buf, &buf, 0);
				FUNC6(dev, start, 0);
				continue;
			}
			if (!FUNC14(buf, "dma", 3)) {
				buf = FUNC13(buf + 3);
				start = FUNC12(buf, &buf, 0);
				FUNC4(dev, start, 0);
				continue;
			}
			break;
		}
		FUNC2(&pnp_res_mutex);
		goto done;
	}

done:
	if (retval < 0)
		return retval;
	return count;
}