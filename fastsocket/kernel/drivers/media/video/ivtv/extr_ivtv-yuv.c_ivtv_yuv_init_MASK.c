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
struct yuv_playback_info {int reg_2834; int reg_2838; int reg_283c; int reg_2840; int reg_2844; int reg_2848; int reg_2854; int reg_285c; int reg_2864; int reg_2870; int reg_2874; int reg_2898; int reg_2890; int reg_289c; int reg_2918; int reg_291c; int reg_2920; int reg_2924; int reg_2928; int reg_292c; int reg_2930; int reg_2934; int reg_2938; int reg_293c; int reg_2940; int reg_2944; int reg_2948; int reg_294c; int reg_2950; int reg_2954; int reg_2958; int reg_295c; int reg_2960; int reg_2964; int reg_2968; int reg_296c; int reg_2970; int v_filter_1; int v_filter_2; int h_filter; int osd_x_offset; int osd_y_offset; int decode_height; int osd_vis_w; int osd_vis_h; int /*<<< orphan*/  next_dma_frame; scalar_t__ blanking_dmaptr; scalar_t__ blanking_ptr; } ;
struct ivtv {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/  osd_info; struct yuv_playback_info yuv_info; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IVTV_F_I_DECODING_YUV ; 
 int /*<<< orphan*/  IVTV_REG_VDM ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ivtv *itv)
{
	struct yuv_playback_info *yi = &itv->yuv_info;

	FUNC1("ivtv_yuv_init\n");

	/* Take a snapshot of the current register settings */
	yi->reg_2834 = FUNC5(0x02834);
	yi->reg_2838 = FUNC5(0x02838);
	yi->reg_283c = FUNC5(0x0283c);
	yi->reg_2840 = FUNC5(0x02840);
	yi->reg_2844 = FUNC5(0x02844);
	yi->reg_2848 = FUNC5(0x02848);
	yi->reg_2854 = FUNC5(0x02854);
	yi->reg_285c = FUNC5(0x0285c);
	yi->reg_2864 = FUNC5(0x02864);
	yi->reg_2870 = FUNC5(0x02870);
	yi->reg_2874 = FUNC5(0x02874);
	yi->reg_2898 = FUNC5(0x02898);
	yi->reg_2890 = FUNC5(0x02890);

	yi->reg_289c = FUNC5(0x0289c);
	yi->reg_2918 = FUNC5(0x02918);
	yi->reg_291c = FUNC5(0x0291c);
	yi->reg_2920 = FUNC5(0x02920);
	yi->reg_2924 = FUNC5(0x02924);
	yi->reg_2928 = FUNC5(0x02928);
	yi->reg_292c = FUNC5(0x0292c);
	yi->reg_2930 = FUNC5(0x02930);
	yi->reg_2934 = FUNC5(0x02934);
	yi->reg_2938 = FUNC5(0x02938);
	yi->reg_293c = FUNC5(0x0293c);
	yi->reg_2940 = FUNC5(0x02940);
	yi->reg_2944 = FUNC5(0x02944);
	yi->reg_2948 = FUNC5(0x02948);
	yi->reg_294c = FUNC5(0x0294c);
	yi->reg_2950 = FUNC5(0x02950);
	yi->reg_2954 = FUNC5(0x02954);
	yi->reg_2958 = FUNC5(0x02958);
	yi->reg_295c = FUNC5(0x0295c);
	yi->reg_2960 = FUNC5(0x02960);
	yi->reg_2964 = FUNC5(0x02964);
	yi->reg_2968 = FUNC5(0x02968);
	yi->reg_296c = FUNC5(0x0296c);
	yi->reg_2970 = FUNC5(0x02970);

	yi->v_filter_1 = -1;
	yi->v_filter_2 = -1;
	yi->h_filter = -1;

	/* Set some valid size info */
	yi->osd_x_offset = FUNC5(0x02a04) & 0x00000FFF;
	yi->osd_y_offset = (FUNC5(0x02a04) >> 16) & 0x00000FFF;

	/* Bit 2 of reg 2878 indicates current decoder output format
	   0 : NTSC    1 : PAL */
	if (FUNC5(0x2878) & 4)
		yi->decode_height = 576;
	else
		yi->decode_height = 480;

	if (!itv->osd_info) {
		yi->osd_vis_w = 720 - yi->osd_x_offset;
		yi->osd_vis_h = yi->decode_height - yi->osd_y_offset;
	} else {
		/* If no visible size set, assume full size */
		if (!yi->osd_vis_w)
			yi->osd_vis_w = 720 - yi->osd_x_offset;

		if (!yi->osd_vis_h) {
			yi->osd_vis_h = yi->decode_height - yi->osd_y_offset;
		} else if (yi->osd_vis_h + yi->osd_y_offset > yi->decode_height) {
			/* If output video standard has changed, requested height may
			   not be legal */
			FUNC0("Clipping yuv output - fb size (%d) exceeds video standard limit (%d)\n",
					yi->osd_vis_h + yi->osd_y_offset,
					yi->decode_height);
			yi->osd_vis_h = yi->decode_height - yi->osd_y_offset;
		}
	}

	/* We need a buffer for blanking when Y plane is offset - non-fatal if we can't get one */
	yi->blanking_ptr = FUNC3(720 * 16, GFP_KERNEL|__GFP_NOWARN);
	if (yi->blanking_ptr) {
		yi->blanking_dmaptr = FUNC4(itv->pdev, yi->blanking_ptr, 720*16, PCI_DMA_TODEVICE);
	} else {
		yi->blanking_dmaptr = 0;
		FUNC0("Failed to allocate yuv blanking buffer\n");
	}

	/* Enable YUV decoder output */
	FUNC7(0x01, IVTV_REG_VDM);

	FUNC6(IVTV_F_I_DECODING_YUV, &itv->i_flags);
	FUNC2(&yi->next_dma_frame, 0);
}