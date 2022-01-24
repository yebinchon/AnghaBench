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
struct firmware {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
struct device {int dummy; } ;
struct adapter {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 char* TPSRAM_NAME ; 
 int /*<<< orphan*/  TP_VERSION_MAJOR ; 
 int /*<<< orphan*/  TP_VERSION_MICRO ; 
 int /*<<< orphan*/  TP_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 char FUNC7 (struct adapter*) ; 

__attribute__((used)) static int FUNC8(struct adapter *adap)
{
	const struct firmware *tpsram;
	char buf[64];
	struct device *dev = &adap->pdev->dev;
	int ret;
	char rev;

	rev = FUNC7(adap);
	if (!rev)
		return 0;

	FUNC4(buf, sizeof(buf), TPSRAM_NAME, rev);

	ret = FUNC3(&tpsram, buf, dev);
	if (ret < 0) {
		FUNC0(dev, "could not load TP SRAM: unable to load %s\n",
			buf);
		return ret;
	}

	ret = FUNC5(adap, tpsram->data, tpsram->size);
	if (ret)
		goto release_tpsram;

	ret = FUNC6(adap, tpsram->data);
	if (ret == 0)
		FUNC1(dev,
			 "successful update of protocol engine "
			 "to %d.%d.%d\n",
			 TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
	else
		FUNC0(dev, "failed to update of protocol engine %d.%d.%d\n",
			TP_VERSION_MAJOR, TP_VERSION_MINOR, TP_VERSION_MICRO);
	if (ret)
		FUNC0(dev, "loading protocol SRAM failed\n");

release_tpsram:
	FUNC2(tpsram);

	return ret;
}