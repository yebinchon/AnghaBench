#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int dummy; } ;
struct e1000_adapter {int int_mode; int flags; int num_vectors; int /*<<< orphan*/  pdev; TYPE_1__* msix_entries; } ;
struct TYPE_3__ {int entry; } ;

/* Variables and functions */
#define  E1000E_INT_MODE_LEGACY 130 
#define  E1000E_INT_MODE_MSI 129 
#define  E1000E_INT_MODE_MSIX 128 
 int FLAG_HAS_MSIX ; 
 int FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void FUNC5(struct e1000_adapter *adapter)
{
	int err;
	int i;

	switch (adapter->int_mode) {
	case E1000E_INT_MODE_MSIX:
		if (adapter->flags & FLAG_HAS_MSIX) {
			adapter->num_vectors = 3; /* RxQ0, TxQ0 and other */
			adapter->msix_entries = FUNC2(adapter->num_vectors,
						      sizeof(struct msix_entry),
						      GFP_KERNEL);
			if (adapter->msix_entries) {
				for (i = 0; i < adapter->num_vectors; i++)
					adapter->msix_entries[i].entry = i;

				err = FUNC4(adapter->pdev,
						      adapter->msix_entries,
						      adapter->num_vectors);
				if (err == 0)
					return;
			}
			/* MSI-X failed, so fall through and try MSI */
			FUNC1("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
			FUNC0(adapter);
		}
		adapter->int_mode = E1000E_INT_MODE_MSI;
		/* Fall through */
	case E1000E_INT_MODE_MSI:
		if (!FUNC3(adapter->pdev)) {
			adapter->flags |= FLAG_MSI_ENABLED;
		} else {
			adapter->int_mode = E1000E_INT_MODE_LEGACY;
			FUNC1("Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\n");
		}
		/* Fall through */
	case E1000E_INT_MODE_LEGACY:
		/* Don't do anything; this is the system default */
		break;
	}

	/* store the number of vectors being used */
	adapter->num_vectors = 1;
}