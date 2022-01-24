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
typedef  int v4l2_std_id ;
typedef  long u64 ;
typedef  long u32 ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int std; int vbi_line_offset; } ;

/* Variables and functions */
 int V4L2_STD_625_50 ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_PAL_60 ; 
 int V4L2_STD_PAL_M ; 
 int V4L2_STD_PAL_Nc ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  cx25840_debug ; 
 long FUNC0 (struct i2c_client*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct cx25840_state*) ; 
 struct cx25840_state* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int,...) ; 

void FUNC7(struct i2c_client *client)
{
	struct cx25840_state *state = FUNC5(FUNC3(client));
	v4l2_std_id std = state->std;
	int hblank, hactive, burst, vblank, vactive, sc;
	int vblank656, src_decimation;
	int luma_lpf, uv_lpf, comb;
	u32 pll_int, pll_frac, pll_post;

	/* datasheet startup, step 8d */
	if (std & ~V4L2_STD_NTSC)
		FUNC2(client, 0x49f, 0x11);
	else
		FUNC2(client, 0x49f, 0x14);

	if (std & V4L2_STD_625_50) {
		hblank = 132;
		hactive = 720;
		burst = 93;
		vblank = 36;
		vactive = 580;
		vblank656 = 40;
		src_decimation = 0x21f;
		luma_lpf = 2;

		if (std & V4L2_STD_SECAM) {
			uv_lpf = 0;
			comb = 0;
			sc = 0x0a425f;
		} else if (std == V4L2_STD_PAL_Nc) {
			uv_lpf = 1;
			comb = 0x20;
			sc = 556453;
		} else {
			uv_lpf = 1;
			comb = 0x20;
			sc = 688739;
		}
	} else {
		hactive = 720;
		hblank = 122;
		vactive = 487;
		luma_lpf = 1;
		uv_lpf = 1;

		src_decimation = 0x21f;
		if (std == V4L2_STD_PAL_60) {
			vblank = 26;
			vblank656 = 26;
			burst = 0x5b;
			luma_lpf = 2;
			comb = 0x20;
			sc = 688739;
		} else if (std == V4L2_STD_PAL_M) {
			vblank = 20;
			vblank656 = 24;
			burst = 0x61;
			comb = 0x20;
			sc = 555452;
		} else {
			vblank = 26;
			vblank656 = 26;
			burst = 0x5b;
			comb = 0x66;
			sc = 556063;
		}
	}

	/* DEBUG: Displays configured PLL frequency */
	if (!FUNC4(state)) {
		pll_int = FUNC0(client, 0x108);
		pll_frac = FUNC1(client, 0x10c) & 0x1ffffff;
		pll_post = FUNC0(client, 0x109);
		FUNC6(1, cx25840_debug, client,
			"PLL regs = int: %u, frac: %u, post: %u\n",
			pll_int, pll_frac, pll_post);

		if (pll_post) {
			int fin, fsc;
			int pll = (28636363L * ((((u64)pll_int) << 25L) + pll_frac)) >> 25L;

			pll /= pll_post;
			FUNC6(1, cx25840_debug, client, "PLL = %d.%06d MHz\n",
					pll / 1000000, pll % 1000000);
			FUNC6(1, cx25840_debug, client, "PLL/8 = %d.%06d MHz\n",
					pll / 8000000, (pll / 8) % 1000000);

			fin = ((u64)src_decimation * pll) >> 12;
			FUNC6(1, cx25840_debug, client,
					"ADC Sampling freq = %d.%06d MHz\n",
					fin / 1000000, fin % 1000000);

			fsc = (((u64)sc) * pll) >> 24L;
			FUNC6(1, cx25840_debug, client,
					"Chroma sub-carrier freq = %d.%06d MHz\n",
					fsc / 1000000, fsc % 1000000);

			FUNC6(1, cx25840_debug, client, "hblank %i, hactive %i, "
				"vblank %i, vactive %i, vblank656 %i, src_dec %i, "
				"burst 0x%02x, luma_lpf %i, uv_lpf %i, comb 0x%02x, "
				"sc 0x%06x\n",
				hblank, hactive, vblank, vactive, vblank656,
				src_decimation, burst, luma_lpf, uv_lpf, comb, sc);
		}
	}

	/* Sets horizontal blanking delay and active lines */
	FUNC2(client, 0x470, hblank);
	FUNC2(client, 0x471,
			0xff & (((hblank >> 8) & 0x3) | (hactive << 4)));
	FUNC2(client, 0x472, hactive >> 4);

	/* Sets burst gate delay */
	FUNC2(client, 0x473, burst);

	/* Sets vertical blanking delay and active duration */
	FUNC2(client, 0x474, vblank);
	FUNC2(client, 0x475,
			0xff & (((vblank >> 8) & 0x3) | (vactive << 4)));
	FUNC2(client, 0x476, vactive >> 4);
	FUNC2(client, 0x477, vblank656);

	/* Sets src decimation rate */
	FUNC2(client, 0x478, 0xff & src_decimation);
	FUNC2(client, 0x479, 0xff & (src_decimation >> 8));

	/* Sets Luma and UV Low pass filters */
	FUNC2(client, 0x47a, luma_lpf << 6 | ((uv_lpf << 4) & 0x30));

	/* Enables comb filters */
	FUNC2(client, 0x47b, comb);

	/* Sets SC Step*/
	FUNC2(client, 0x47c, sc);
	FUNC2(client, 0x47d, 0xff & sc >> 8);
	FUNC2(client, 0x47e, 0xff & sc >> 16);

	/* Sets VBI parameters */
	if (std & V4L2_STD_625_50) {
		FUNC2(client, 0x47f, 0x01);
		state->vbi_line_offset = 5;
	} else {
		FUNC2(client, 0x47f, 0x00);
		state->vbi_line_offset = 8;
	}
}