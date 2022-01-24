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
typedef  int uint8_t ;
struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_3__ {int* regs; } ;
struct ch7006_priv {struct ch7006_mode* mode; TYPE_1__ state; } ;
struct TYPE_4__ {scalar_t__ clock; } ;
struct ch7006_mode {TYPE_2__ mode; } ;

/* Variables and functions */
 int CH7006_FREQ0 ; 
 int CH7006_MAXM ; 
 int CH7006_MAXN ; 
 size_t CH7006_PLLM ; 
 int /*<<< orphan*/  CH7006_PLLM_0 ; 
 size_t CH7006_PLLN ; 
 int /*<<< orphan*/  CH7006_PLLN_0 ; 
 size_t CH7006_PLLOV ; 
 int /*<<< orphan*/  CH7006_PLLOV_M_8 ; 
 int /*<<< orphan*/  CH7006_PLLOV_N_8 ; 
 size_t CH7006_PLL_CONTROL ; 
 int CH7006_PLL_CONTROL_CAPACITOR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*,int,int,int,int) ; 
 struct i2c_client* FUNC3 (struct drm_encoder*) ; 
 struct ch7006_priv* FUNC4 (struct drm_encoder*) ; 

void FUNC5(struct drm_encoder *encoder)
{
	struct i2c_client *client = FUNC3(encoder);
	struct ch7006_priv *priv = FUNC4(encoder);
	uint8_t *regs = priv->state.regs;
	struct ch7006_mode *mode = priv->mode;
	int n, best_n = 0;
	int m, best_m = 0;
	int freq, best_freq = 0;

	for (n = 0; n < CH7006_MAXN; n++) {
		for (m = 0; m < CH7006_MAXM; m++) {
			freq = CH7006_FREQ0*(n+2)/(m+2);

			if (FUNC0(freq - mode->mode.clock) <
			    FUNC0(best_freq - mode->mode.clock)) {
				best_freq = freq;
				best_n = n;
				best_m = m;
			}
		}
	}

	regs[CH7006_PLLOV] = FUNC1(CH7006_PLLOV_N_8, best_n) |
		FUNC1(CH7006_PLLOV_M_8, best_m);

	regs[CH7006_PLLM] = FUNC1(CH7006_PLLM_0, best_m);
	regs[CH7006_PLLN] = FUNC1(CH7006_PLLN_0, best_n);

	if (best_n < 108)
		regs[CH7006_PLL_CONTROL] |= CH7006_PLL_CONTROL_CAPACITOR;
	else
		regs[CH7006_PLL_CONTROL] &= ~CH7006_PLL_CONTROL_CAPACITOR;

	FUNC2(client, "n=%d m=%d f=%d c=%d\n",
		   best_n, best_m, best_freq, best_n < 108);
}