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
typedef  int u64 ;
struct bdx_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bdx_priv*,int) ; 

__attribute__((used)) static u64 FUNC1(struct bdx_priv *priv, int reg)
{
	u64 val;

	val = FUNC0(priv, reg);
	val |= ((u64) FUNC0(priv, reg + 8)) << 32;
	return val;
}