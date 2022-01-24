#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  temperature; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct iwl_priv {int /*<<< orphan*/  temperature; TYPE_2__ statistics; } ;
typedef  int s32 ;

/* Variables and functions */
 int IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iwl_priv *priv)
{
	u32 vt = 0;
	s32 offset =  FUNC1(priv);

	vt = FUNC3(priv->statistics.common.temperature);
	vt = vt / IWL_5150_VOLTAGE_TO_TEMPERATURE_COEFF + offset;
	/* now vt hold the temperature in Kelvin */
	priv->temperature = FUNC0(vt);
	FUNC2(priv);
}