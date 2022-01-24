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
typedef  int /*<<< orphan*/  u16 ;
struct p54s_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct p54s_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct p54s_priv *priv, u16 reg, u32 bits)
{
	int i;

	for (i = 0; i < 2000; i++) {
		u32 buffer = FUNC0(priv, reg);
		if ((buffer & bits) == bits)
			return 1;
	}
	return 0;
}