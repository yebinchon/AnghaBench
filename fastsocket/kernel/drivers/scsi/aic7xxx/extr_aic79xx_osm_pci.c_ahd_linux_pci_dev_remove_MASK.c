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
typedef  int /*<<< orphan*/  u_long ;
struct pci_dev {int dummy; } ;
struct ahd_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {scalar_t__ host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 struct ahd_softc* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct pci_dev *pdev)
{
	struct ahd_softc *ahd = FUNC4(pdev);
	u_long s;

	if (ahd->platform_data && ahd->platform_data->host)
			FUNC5(ahd->platform_data->host);

	FUNC2(ahd, &s);
	FUNC1(ahd, FALSE);
	FUNC3(ahd, &s);
	FUNC0(ahd);
}