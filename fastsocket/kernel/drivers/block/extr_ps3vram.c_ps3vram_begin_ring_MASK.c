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
typedef  int u32 ;
struct ps3vram_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ps3vram_priv*,int) ; 

__attribute__((used)) static void FUNC1(struct ps3vram_priv *priv, u32 chan, u32 tag,
			       u32 size)
{
	FUNC0(priv, (size << 18) | (chan << 13) | tag);
}