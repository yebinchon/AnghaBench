#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct bdx_priv {TYPE_2__* ndev; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EIO ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bdx_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  regINIT_SEMAPHORE ; 
 int /*<<< orphan*/  regINIT_STATUS ; 
 int /*<<< orphan*/  regVIC ; 
 int /*<<< orphan*/  regVPC ; 
 int /*<<< orphan*/  FUNC7 (struct firmware const*) ; 
 int FUNC8 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct bdx_priv *priv)
{
	const struct firmware *fw = NULL;
	int master, i;
	int rc;

	ENTER;
	master = FUNC2(priv, regINIT_SEMAPHORE);
	if (!FUNC2(priv, regINIT_STATUS) && master) {
		rc = FUNC8(&fw, "tehuti/firmware.bin", &priv->pdev->dev);
		if (rc)
			goto out;
		FUNC5(priv, (char *)fw->data, fw->size);
		FUNC6(100);
	}
	for (i = 0; i < 200; i++) {
		if (FUNC2(priv, regINIT_STATUS)) {
			rc = 0;
			goto out;
		}
		FUNC6(2);
	}
	rc = -EIO;
out:
	if (master)
		FUNC4(priv, regINIT_SEMAPHORE, 1);
	if (fw)
		FUNC7(fw);

	if (rc) {
		FUNC1("%s: firmware loading failed\n", priv->ndev->name);
		if (rc == -EIO)
			FUNC0("VPC = 0x%x VIC = 0x%x INIT_STATUS = 0x%x i=%d\n",
			    FUNC2(priv, regVPC),
			    FUNC2(priv, regVIC),
			    FUNC2(priv, regINIT_STATUS), i);
		FUNC3(rc);
	} else {
		FUNC0("%s: firmware loading success\n", priv->ndev->name);
		FUNC3(0);
	}
}