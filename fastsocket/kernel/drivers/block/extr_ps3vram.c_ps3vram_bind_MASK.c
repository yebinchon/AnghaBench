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
struct ps3vram_priv {int dummy; } ;
struct ps3_system_bus_device {int dummy; } ;

/* Variables and functions */
 int DMA_NOTIFIER_HANDLE_BASE ; 
 int /*<<< orphan*/  DOWNLOAD_SUBCH ; 
 int NOTIFIER ; 
 int /*<<< orphan*/  UPLOAD_SUBCH ; 
 struct ps3vram_priv* FUNC0 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ps3vram_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ps3_system_bus_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps3vram_priv*,int) ; 

__attribute__((used)) static void FUNC4(struct ps3_system_bus_device *dev)
{
	struct ps3vram_priv *priv = FUNC0(dev);

	FUNC1(priv, UPLOAD_SUBCH, 0, 1);
	FUNC3(priv, 0x31337303);
	FUNC1(priv, UPLOAD_SUBCH, 0x180, 3);
	FUNC3(priv, DMA_NOTIFIER_HANDLE_BASE + NOTIFIER);
	FUNC3(priv, 0xfeed0001);	/* DMA system RAM instance */
	FUNC3(priv, 0xfeed0000);     /* DMA video RAM instance */

	FUNC1(priv, DOWNLOAD_SUBCH, 0, 1);
	FUNC3(priv, 0x3137c0de);
	FUNC1(priv, DOWNLOAD_SUBCH, 0x180, 3);
	FUNC3(priv, DMA_NOTIFIER_HANDLE_BASE + NOTIFIER);
	FUNC3(priv, 0xfeed0000);	/* DMA video RAM instance */
	FUNC3(priv, 0xfeed0001);	/* DMA system RAM instance */

	FUNC2(dev);
}