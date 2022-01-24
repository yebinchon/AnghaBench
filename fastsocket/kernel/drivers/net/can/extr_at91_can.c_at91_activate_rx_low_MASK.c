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
typedef  int /*<<< orphan*/  u32 ;
struct at91_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_MB_RX_LOW_MASK ; 
 int /*<<< orphan*/  AT91_TCR ; 
 int /*<<< orphan*/  FUNC0 (struct at91_priv const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(const struct at91_priv *priv)
{
	u32 mask = AT91_MB_RX_LOW_MASK;
	FUNC0(priv, AT91_TCR, mask);
}