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
struct nvc0_graph_priv {int dummy; } ;
struct nvc0_graph_fuc {int /*<<< orphan*/ * data; int /*<<< orphan*/  size; } ;
struct nouveau_device {int chipset; TYPE_1__* pdev; } ;
struct firmware {int /*<<< orphan*/  data; int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  f ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nouveau_device* FUNC1 (struct nvc0_graph_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvc0_graph_priv*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,...) ; 

int
FUNC6(struct nvc0_graph_priv *priv, const char *fwname,
		   struct nvc0_graph_fuc *fuc)
{
	struct nouveau_device *device = FUNC1(priv);
	const struct firmware *fw;
	char f[32];
	int ret;

	FUNC5(f, sizeof(f), "nouveau/nv%02x_%s", device->chipset, fwname);
	ret = FUNC4(&fw, f, &device->pdev->dev);
	if (ret) {
		FUNC5(f, sizeof(f), "nouveau/%s", fwname);
		ret = FUNC4(&fw, f, &device->pdev->dev);
		if (ret) {
			FUNC2(priv, "failed to load %s\n", fwname);
			return ret;
		}
	}

	fuc->size = fw->size;
	fuc->data = FUNC0(fw->data, fuc->size, GFP_KERNEL);
	FUNC3(fw);
	return (fuc->data != NULL) ? 0 : -ENOMEM;
}