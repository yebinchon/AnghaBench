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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct hfc_multi {scalar_t__ pci_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_FIFO_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(struct hfc_multi *hc, u_char *data, int len)
{
	FUNC5(A_FIFO_DATA0, (hc->pci_iobase)+4);
	while (len>>2) {
		*(u32 *)data = FUNC4(FUNC1(hc->pci_iobase));
		data += 4;
		len -= 4;
	}
	while (len>>1) {
		*(u16 *)data = FUNC3(FUNC2(hc->pci_iobase));
		data += 2;
		len -= 2;
	}
	while (len) {
		*data = FUNC0(hc->pci_iobase);
		data++;
		len--;
	}
}