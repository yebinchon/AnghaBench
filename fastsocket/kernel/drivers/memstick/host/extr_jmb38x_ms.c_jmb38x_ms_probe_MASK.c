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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;
struct memstick_host {int dummy; } ;
struct jmb38x_ms {int host_cnt; int /*<<< orphan*/ ** hosts; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (struct jmb38x_ms*,int) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct jmb38x_ms*) ; 
 struct jmb38x_ms* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct jmb38x_ms*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *pdev,
			   const struct pci_device_id *dev_id)
{
	struct jmb38x_ms *jm;
	int pci_dev_busy = 0;
	int rc, cnt;

	rc = FUNC12(pdev, FUNC0(32));
	if (rc)
		return rc;

	rc = FUNC8(pdev);
	if (rc)
		return rc;

	FUNC14(pdev);

	rc = FUNC11(pdev, DRIVER_NAME);
	if (rc) {
		pci_dev_busy = 1;
		goto err_out;
	}

	FUNC9(pdev, 0xac, &rc);
	FUNC15(pdev, 0xac, rc | 0x00470000);

	cnt = FUNC2(pdev);
	if (!cnt) {
		rc = -ENODEV;
		pci_dev_busy = 1;
		goto err_out;
	}

	jm = FUNC5(sizeof(struct jmb38x_ms)
		     + cnt * sizeof(struct memstick_host *), GFP_KERNEL);
	if (!jm) {
		rc = -ENOMEM;
		goto err_out_int;
	}

	jm->pdev = pdev;
	jm->host_cnt = cnt;
	FUNC13(pdev, jm);

	for (cnt = 0; cnt < jm->host_cnt; ++cnt) {
		jm->hosts[cnt] = FUNC1(jm, cnt);
		if (!jm->hosts[cnt])
			break;

		rc = FUNC6(jm->hosts[cnt]);

		if (rc) {
			FUNC3(jm->hosts[cnt]);
			jm->hosts[cnt] = NULL;
			break;
		}
	}

	if (cnt)
		return 0;

	rc = -ENODEV;

	FUNC13(pdev, NULL);
	FUNC4(jm);
err_out_int:
	FUNC10(pdev);
err_out:
	if (!pci_dev_busy)
		FUNC7(pdev);
	return rc;
}