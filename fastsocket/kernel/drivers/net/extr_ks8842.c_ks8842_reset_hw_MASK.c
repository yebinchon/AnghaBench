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
struct ks8842_adapter {int dummy; } ;

/* Variables and functions */
 int ENABLED_IRQS ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_ISR ; 
 int /*<<< orphan*/  REG_P1CR2 ; 
 int /*<<< orphan*/  REG_P1CR4 ; 
 int /*<<< orphan*/  REG_QRFCR ; 
 int /*<<< orphan*/  REG_RXCR ; 
 int /*<<< orphan*/  REG_RXFDPR ; 
 int /*<<< orphan*/  REG_SGCR1 ; 
 int /*<<< orphan*/  REG_SGCR2 ; 
 int /*<<< orphan*/  REG_SW_ID_AND_ENABLE ; 
 int /*<<< orphan*/  REG_TXCR ; 
 int /*<<< orphan*/  REG_TXFDPR ; 
 int /*<<< orphan*/  FUNC0 (struct ks8842_adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8842_adapter*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8842_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks8842_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ks8842_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ks8842_adapter*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ks8842_adapter *adapter)
{
	/* reset the HW */
	FUNC4(adapter);

	/* Enable QMU Transmit flow control / transmit padding / Transmit CRC */
	FUNC5(adapter, 16, 0x000E, REG_TXCR);

	/* enable the receiver, uni + multi + broadcast + flow ctrl
		+ crc strip */
	FUNC5(adapter, 16, 0x8 | 0x20 | 0x40 | 0x80 | 0x400,
		REG_RXCR);

	/* TX frame pointer autoincrement */
	FUNC5(adapter, 17, 0x4000, REG_TXFDPR);

	/* RX frame pointer autoincrement */
	FUNC5(adapter, 17, 0x4000, REG_RXFDPR);

	/* RX 2 kb high watermark */
	FUNC5(adapter, 0, 0x1000, REG_QRFCR);

	/* aggresive back off in half duplex */
	FUNC1(adapter, 32, 1 << 8, REG_SGCR1);

	/* enable no excessive collison drop */
	FUNC1(adapter, 32, 1 << 3, REG_SGCR2);

	/* Enable port 1 force flow control / back pressure / transmit / recv */
	FUNC5(adapter, 48, 0x1E07, REG_P1CR2);

	/* restart port auto-negotiation */
	FUNC1(adapter, 49, 1 << 13, REG_P1CR4);
	/* only advertise 10Mbps */
	FUNC0(adapter, 49, 3 << 2, REG_P1CR4);

	/* Enable the transmitter */
	FUNC3(adapter);

	/* Enable the receiver */
	FUNC2(adapter);

	/* clear all interrupts */
	FUNC5(adapter, 18, 0xffff, REG_ISR);

	/* enable interrupts */
	FUNC5(adapter, 18, ENABLED_IRQS, REG_IER);

	/* enable the switch */
	FUNC5(adapter, 32, 0x1, REG_SW_ID_AND_ENABLE);
}