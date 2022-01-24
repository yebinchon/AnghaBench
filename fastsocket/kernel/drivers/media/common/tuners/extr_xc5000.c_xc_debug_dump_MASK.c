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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct xc5000_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xc5000_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xc5000_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct xc5000_priv *priv)
{
	u16 adc_envelope;
	u32 freq_error_hz = 0;
	u16 lock_status;
	u32 hsync_freq_hz = 0;
	u16 frame_lines;
	u16 quality;
	u8 hw_majorversion = 0, hw_minorversion = 0;
	u8 fw_majorversion = 0, fw_minorversion = 0;
	u16 fw_buildversion = 0;

	/* Wait for stats to stabilize.
	 * Frame Lines needs two frame times after initial lock
	 * before it is valid.
	 */
	FUNC9(100);

	FUNC1(priv,  &adc_envelope);
	FUNC0(1, "*** ADC envelope (0-1023) = %d\n", adc_envelope);

	FUNC4(priv, &freq_error_hz);
	FUNC0(1, "*** Frequency error = %d Hz\n", freq_error_hz);

	FUNC6(priv,  &lock_status);
	FUNC0(1, "*** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\n",
		lock_status);

	FUNC8(priv,  &hw_majorversion, &hw_minorversion,
		&fw_majorversion, &fw_minorversion);
	FUNC2(priv,  &fw_buildversion);
	FUNC0(1, "*** HW: V%02x.%02x, FW: V%02x.%02x.%04x\n",
		hw_majorversion, hw_minorversion,
		fw_majorversion, fw_minorversion, fw_buildversion);

	FUNC5(priv,  &hsync_freq_hz);
	FUNC0(1, "*** Horizontal sync frequency = %d Hz\n", hsync_freq_hz);

	FUNC3(priv,  &frame_lines);
	FUNC0(1, "*** Frame lines = %d\n", frame_lines);

	FUNC7(priv,  &quality);
	FUNC0(1, "*** Quality (0:<8dB, 7:>56dB) = %d\n", quality);
}