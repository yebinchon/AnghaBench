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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct atmel_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct atmel_private *priv, u16 packet_loc, u16 msdu_size)
{
	int i = msdu_size - 4;
	u32 netcrc, crc = 0xffffffff;

	if (msdu_size < 4)
		return 0;

	FUNC0(priv->dev, (void *)&netcrc, packet_loc + i, 4);

	FUNC2(priv->dev, packet_loc);
	while (i--) {
		u8 octet = FUNC1(priv->dev, DR);
		crc = FUNC3(crc, &octet, 1);
	}

	return (crc ^ 0xffffffff) == netcrc;
}