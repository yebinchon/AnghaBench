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
struct hfc_multi {scalar_t__ pci_membase; } ;

/* Variables and functions */
 scalar_t__ A_FIFO_DATA0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct hfc_multi *hc, u_char *data, int len)
{
	while (len>>2) {
		FUNC3(FUNC1(*(u32 *)data),
			hc->pci_membase + A_FIFO_DATA0);
		data += 4;
		len -= 4;
	}
	while (len>>1) {
		FUNC4(FUNC0(*(u16 *)data),
			hc->pci_membase + A_FIFO_DATA0);
		data += 2;
		len -= 2;
	}
	while (len) {
		FUNC2(*data, hc->pci_membase + A_FIFO_DATA0);
		data++;
		len--;
	}
}