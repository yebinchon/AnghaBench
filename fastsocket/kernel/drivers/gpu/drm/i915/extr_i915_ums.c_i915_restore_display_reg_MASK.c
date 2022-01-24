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
struct TYPE_3__ {int savePIPEA_GMCH_DATA_M; int savePIPEB_GMCH_DATA_M; int savePIPEA_GMCH_DATA_N; int savePIPEB_GMCH_DATA_N; int savePIPEA_DP_LINK_M; int savePIPEB_DP_LINK_M; int savePIPEA_DP_LINK_N; int savePIPEB_DP_LINK_N; int* saveFENCE; int savePCH_DREF_CONTROL; int saveDISP_ARB_CTL; int saveDPLL_A; int saveFPA0; int saveFPA1; int saveDPLL_A_MD; int saveHTOTAL_A; int saveHBLANK_A; int saveHSYNC_A; int saveVTOTAL_A; int saveVBLANK_A; int saveVSYNC_A; int saveBCLRPAT_A; int savePIPEA_DATA_M1; int savePIPEA_DATA_N1; int savePIPEA_LINK_M1; int savePIPEA_LINK_N1; int saveFDI_RXA_CTL; int saveFDI_TXA_CTL; int savePFA_CTL_1; int savePFA_WIN_SZ; int savePFA_WIN_POS; int saveTRANSACONF; int saveTRANS_HTOTAL_A; int saveTRANS_HBLANK_A; int saveTRANS_HSYNC_A; int saveTRANS_VTOTAL_A; int saveTRANS_VBLANK_A; int saveTRANS_VSYNC_A; int saveDSPASIZE; int saveDSPAPOS; int savePIPEASRC; int saveDSPAADDR; int saveDSPASTRIDE; int saveDSPASURF; int saveDSPATILEOFF; int savePIPEACONF; int saveDSPACNTR; int saveDPLL_B; int saveFPB0; int saveFPB1; int saveDPLL_B_MD; int saveHTOTAL_B; int saveHBLANK_B; int saveHSYNC_B; int saveVTOTAL_B; int saveVBLANK_B; int saveVSYNC_B; int saveBCLRPAT_B; int savePIPEB_DATA_M1; int savePIPEB_DATA_N1; int savePIPEB_LINK_M1; int savePIPEB_LINK_N1; int saveFDI_RXB_CTL; int saveFDI_TXB_CTL; int savePFB_CTL_1; int savePFB_WIN_SZ; int savePFB_WIN_POS; int saveTRANSBCONF; int saveTRANS_HTOTAL_B; int saveTRANS_HBLANK_B; int saveTRANS_HSYNC_B; int saveTRANS_VTOTAL_B; int saveTRANS_VBLANK_B; int saveTRANS_VSYNC_B; int saveDSPBSIZE; int saveDSPBPOS; int savePIPEBSRC; int saveDSPBADDR; int saveDSPBSTRIDE; int saveDSPBSURF; int saveDSPBTILEOFF; int savePIPEBCONF; int saveDSPBCNTR; int saveCURAPOS; int saveCURACNTR; int saveCURABASE; int saveCURBPOS; int saveCURBCNTR; int saveCURBBASE; int saveCURSIZE; int saveADPA; int saveDP_B; int saveDP_C; int saveDP_D; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int ADPA ; 
 int CURSIZE ; 
 int DISP_ARB_CTL ; 
 int DPLL_VCO_ENABLE ; 
 int DP_B ; 
 int DP_C ; 
 int DP_D ; 
 int /*<<< orphan*/  FENCE_REG_830_0 ; 
 int /*<<< orphan*/  FENCE_REG_945_8 ; 
 int /*<<< orphan*/  FENCE_REG_965_0 ; 
 int /*<<< orphan*/  FENCE_REG_SANDYBRIDGE_0 ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int PCH_ADPA ; 
 int PCH_DREF_CONTROL ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 
 int _BCLRPAT_A ; 
 int _BCLRPAT_B ; 
 int _CURABASE ; 
 int _CURACNTR ; 
 int _CURAPOS ; 
 int _CURBBASE ; 
 int _CURBCNTR ; 
 int _CURBPOS ; 
 int _DPLL_A ; 
 int _DPLL_A_MD ; 
 int _DPLL_B ; 
 int _DPLL_B_MD ; 
 int _DSPAADDR ; 
 int _DSPACNTR ; 
 int _DSPAPOS ; 
 int _DSPASIZE ; 
 int _DSPASTRIDE ; 
 int _DSPASURF ; 
 int _DSPATILEOFF ; 
 int _DSPBADDR ; 
 int _DSPBCNTR ; 
 int _DSPBPOS ; 
 int _DSPBSIZE ; 
 int _DSPBSTRIDE ; 
 int _DSPBSURF ; 
 int _DSPBTILEOFF ; 
 int _FDI_RXA_CTL ; 
 int _FDI_RXB_CTL ; 
 int _FDI_TXA_CTL ; 
 int _FDI_TXB_CTL ; 
 int _FPA0 ; 
 int _FPA1 ; 
 int _FPB0 ; 
 int _FPB1 ; 
 int _HBLANK_A ; 
 int _HBLANK_B ; 
 int _HSYNC_A ; 
 int _HSYNC_B ; 
 int _HTOTAL_A ; 
 int _HTOTAL_B ; 
 int _PCH_DPLL_A ; 
 int _PCH_DPLL_B ; 
 int _PCH_FPA0 ; 
 int _PCH_FPA1 ; 
 int _PCH_FPB0 ; 
 int _PCH_FPB1 ; 
 int _PFA_CTL_1 ; 
 int _PFA_WIN_POS ; 
 int _PFA_WIN_SZ ; 
 int _PFB_CTL_1 ; 
 int _PFB_WIN_POS ; 
 int _PFB_WIN_SZ ; 
 int _PIPEACONF ; 
 int _PIPEASRC ; 
 int _PIPEA_DATA_M1 ; 
 int _PIPEA_DATA_N1 ; 
 int _PIPEA_DP_LINK_M ; 
 int _PIPEA_DP_LINK_N ; 
 int _PIPEA_GMCH_DATA_M ; 
 int _PIPEA_GMCH_DATA_N ; 
 int _PIPEA_LINK_M1 ; 
 int _PIPEA_LINK_N1 ; 
 int _PIPEBCONF ; 
 int _PIPEBSRC ; 
 int _PIPEB_DATA_M1 ; 
 int _PIPEB_DATA_N1 ; 
 int _PIPEB_DP_LINK_M ; 
 int _PIPEB_DP_LINK_N ; 
 int _PIPEB_GMCH_DATA_M ; 
 int _PIPEB_GMCH_DATA_N ; 
 int _PIPEB_LINK_M1 ; 
 int _PIPEB_LINK_N1 ; 
 int _TRANSACONF ; 
 int _TRANSBCONF ; 
 int _TRANS_HBLANK_A ; 
 int _TRANS_HBLANK_B ; 
 int _TRANS_HSYNC_A ; 
 int _TRANS_HSYNC_B ; 
 int _TRANS_HTOTAL_A ; 
 int _TRANS_HTOTAL_B ; 
 int _TRANS_VBLANK_A ; 
 int _TRANS_VBLANK_B ; 
 int _TRANS_VSYNC_A ; 
 int _TRANS_VSYNC_B ; 
 int _TRANS_VTOTAL_A ; 
 int _TRANS_VTOTAL_B ; 
 int _VBLANK_A ; 
 int _VBLANK_B ; 
 int _VSYNC_A ; 
 int _VSYNC_B ; 
 int _VTOTAL_A ; 
 int _VTOTAL_B ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int dpll_a_reg, fpa0_reg, fpa1_reg;
	int dpll_b_reg, fpb0_reg, fpb1_reg;
	int i;

	/* Display port ratios (must be done before clock is set) */
	if (FUNC10(dev)) {
		FUNC2(_PIPEA_GMCH_DATA_M, dev_priv->regfile.savePIPEA_GMCH_DATA_M);
		FUNC2(_PIPEB_GMCH_DATA_M, dev_priv->regfile.savePIPEB_GMCH_DATA_M);
		FUNC2(_PIPEA_GMCH_DATA_N, dev_priv->regfile.savePIPEA_GMCH_DATA_N);
		FUNC2(_PIPEB_GMCH_DATA_N, dev_priv->regfile.savePIPEB_GMCH_DATA_N);
		FUNC2(_PIPEA_DP_LINK_M, dev_priv->regfile.savePIPEA_DP_LINK_M);
		FUNC2(_PIPEB_DP_LINK_M, dev_priv->regfile.savePIPEB_DP_LINK_M);
		FUNC2(_PIPEA_DP_LINK_N, dev_priv->regfile.savePIPEA_DP_LINK_N);
		FUNC2(_PIPEB_DP_LINK_N, dev_priv->regfile.savePIPEB_DP_LINK_N);
	}

	/* Fences */
	switch (FUNC4(dev)->gen) {
	case 7:
	case 6:
		for (i = 0; i < 16; i++)
			FUNC3(FENCE_REG_SANDYBRIDGE_0 + (i * 8), dev_priv->regfile.saveFENCE[i]);
		break;
	case 5:
	case 4:
		for (i = 0; i < 16; i++)
			FUNC3(FENCE_REG_965_0 + (i * 8), dev_priv->regfile.saveFENCE[i]);
		break;
	case 3:
	case 2:
		if (FUNC7(dev) || FUNC8(dev) || FUNC5(dev))
			for (i = 0; i < 8; i++)
				FUNC2(FENCE_REG_945_8 + (i * 4), dev_priv->regfile.saveFENCE[i+8]);
		for (i = 0; i < 8; i++)
			FUNC2(FENCE_REG_830_0 + (i * 4), dev_priv->regfile.saveFENCE[i]);
		break;
	}


	if (FUNC0(dev)) {
		dpll_a_reg = _PCH_DPLL_A;
		dpll_b_reg = _PCH_DPLL_B;
		fpa0_reg = _PCH_FPA0;
		fpb0_reg = _PCH_FPB0;
		fpa1_reg = _PCH_FPA1;
		fpb1_reg = _PCH_FPB1;
	} else {
		dpll_a_reg = _DPLL_A;
		dpll_b_reg = _DPLL_B;
		fpa0_reg = _FPA0;
		fpb0_reg = _FPB0;
		fpa1_reg = _FPA1;
		fpb1_reg = _FPB1;
	}

	if (FUNC0(dev)) {
		FUNC2(PCH_DREF_CONTROL, dev_priv->regfile.savePCH_DREF_CONTROL);
		FUNC2(DISP_ARB_CTL, dev_priv->regfile.saveDISP_ARB_CTL);
	}

	/* Pipe & plane A info */
	/* Prime the clock */
	if (dev_priv->regfile.saveDPLL_A & DPLL_VCO_ENABLE) {
		FUNC2(dpll_a_reg, dev_priv->regfile.saveDPLL_A &
			   ~DPLL_VCO_ENABLE);
		FUNC9(dpll_a_reg);
		FUNC12(150);
	}
	FUNC2(fpa0_reg, dev_priv->regfile.saveFPA0);
	FUNC2(fpa1_reg, dev_priv->regfile.saveFPA1);
	/* Actually enable it */
	FUNC2(dpll_a_reg, dev_priv->regfile.saveDPLL_A);
	FUNC9(dpll_a_reg);
	FUNC12(150);
	if (FUNC4(dev)->gen >= 4 && !FUNC0(dev)) {
		FUNC2(_DPLL_A_MD, dev_priv->regfile.saveDPLL_A_MD);
		FUNC9(_DPLL_A_MD);
	}
	FUNC12(150);

	/* Restore mode */
	FUNC2(_HTOTAL_A, dev_priv->regfile.saveHTOTAL_A);
	FUNC2(_HBLANK_A, dev_priv->regfile.saveHBLANK_A);
	FUNC2(_HSYNC_A, dev_priv->regfile.saveHSYNC_A);
	FUNC2(_VTOTAL_A, dev_priv->regfile.saveVTOTAL_A);
	FUNC2(_VBLANK_A, dev_priv->regfile.saveVBLANK_A);
	FUNC2(_VSYNC_A, dev_priv->regfile.saveVSYNC_A);
	if (!FUNC0(dev))
		FUNC2(_BCLRPAT_A, dev_priv->regfile.saveBCLRPAT_A);

	if (FUNC0(dev)) {
		FUNC2(_PIPEA_DATA_M1, dev_priv->regfile.savePIPEA_DATA_M1);
		FUNC2(_PIPEA_DATA_N1, dev_priv->regfile.savePIPEA_DATA_N1);
		FUNC2(_PIPEA_LINK_M1, dev_priv->regfile.savePIPEA_LINK_M1);
		FUNC2(_PIPEA_LINK_N1, dev_priv->regfile.savePIPEA_LINK_N1);

		FUNC2(_FDI_RXA_CTL, dev_priv->regfile.saveFDI_RXA_CTL);
		FUNC2(_FDI_TXA_CTL, dev_priv->regfile.saveFDI_TXA_CTL);

		FUNC2(_PFA_CTL_1, dev_priv->regfile.savePFA_CTL_1);
		FUNC2(_PFA_WIN_SZ, dev_priv->regfile.savePFA_WIN_SZ);
		FUNC2(_PFA_WIN_POS, dev_priv->regfile.savePFA_WIN_POS);

		FUNC2(_TRANSACONF, dev_priv->regfile.saveTRANSACONF);
		FUNC2(_TRANS_HTOTAL_A, dev_priv->regfile.saveTRANS_HTOTAL_A);
		FUNC2(_TRANS_HBLANK_A, dev_priv->regfile.saveTRANS_HBLANK_A);
		FUNC2(_TRANS_HSYNC_A, dev_priv->regfile.saveTRANS_HSYNC_A);
		FUNC2(_TRANS_VTOTAL_A, dev_priv->regfile.saveTRANS_VTOTAL_A);
		FUNC2(_TRANS_VBLANK_A, dev_priv->regfile.saveTRANS_VBLANK_A);
		FUNC2(_TRANS_VSYNC_A, dev_priv->regfile.saveTRANS_VSYNC_A);
	}

	/* Restore plane info */
	FUNC2(_DSPASIZE, dev_priv->regfile.saveDSPASIZE);
	FUNC2(_DSPAPOS, dev_priv->regfile.saveDSPAPOS);
	FUNC2(_PIPEASRC, dev_priv->regfile.savePIPEASRC);
	FUNC2(_DSPAADDR, dev_priv->regfile.saveDSPAADDR);
	FUNC2(_DSPASTRIDE, dev_priv->regfile.saveDSPASTRIDE);
	if (FUNC4(dev)->gen >= 4) {
		FUNC2(_DSPASURF, dev_priv->regfile.saveDSPASURF);
		FUNC2(_DSPATILEOFF, dev_priv->regfile.saveDSPATILEOFF);
	}

	FUNC2(_PIPEACONF, dev_priv->regfile.savePIPEACONF);

	FUNC11(dev, PIPE_A);
	/* Enable the plane */
	FUNC2(_DSPACNTR, dev_priv->regfile.saveDSPACNTR);
	FUNC2(_DSPAADDR, FUNC1(_DSPAADDR));

	/* Pipe & plane B info */
	if (dev_priv->regfile.saveDPLL_B & DPLL_VCO_ENABLE) {
		FUNC2(dpll_b_reg, dev_priv->regfile.saveDPLL_B &
			   ~DPLL_VCO_ENABLE);
		FUNC9(dpll_b_reg);
		FUNC12(150);
	}
	FUNC2(fpb0_reg, dev_priv->regfile.saveFPB0);
	FUNC2(fpb1_reg, dev_priv->regfile.saveFPB1);
	/* Actually enable it */
	FUNC2(dpll_b_reg, dev_priv->regfile.saveDPLL_B);
	FUNC9(dpll_b_reg);
	FUNC12(150);
	if (FUNC4(dev)->gen >= 4 && !FUNC0(dev)) {
		FUNC2(_DPLL_B_MD, dev_priv->regfile.saveDPLL_B_MD);
		FUNC9(_DPLL_B_MD);
	}
	FUNC12(150);

	/* Restore mode */
	FUNC2(_HTOTAL_B, dev_priv->regfile.saveHTOTAL_B);
	FUNC2(_HBLANK_B, dev_priv->regfile.saveHBLANK_B);
	FUNC2(_HSYNC_B, dev_priv->regfile.saveHSYNC_B);
	FUNC2(_VTOTAL_B, dev_priv->regfile.saveVTOTAL_B);
	FUNC2(_VBLANK_B, dev_priv->regfile.saveVBLANK_B);
	FUNC2(_VSYNC_B, dev_priv->regfile.saveVSYNC_B);
	if (!FUNC0(dev))
		FUNC2(_BCLRPAT_B, dev_priv->regfile.saveBCLRPAT_B);

	if (FUNC0(dev)) {
		FUNC2(_PIPEB_DATA_M1, dev_priv->regfile.savePIPEB_DATA_M1);
		FUNC2(_PIPEB_DATA_N1, dev_priv->regfile.savePIPEB_DATA_N1);
		FUNC2(_PIPEB_LINK_M1, dev_priv->regfile.savePIPEB_LINK_M1);
		FUNC2(_PIPEB_LINK_N1, dev_priv->regfile.savePIPEB_LINK_N1);

		FUNC2(_FDI_RXB_CTL, dev_priv->regfile.saveFDI_RXB_CTL);
		FUNC2(_FDI_TXB_CTL, dev_priv->regfile.saveFDI_TXB_CTL);

		FUNC2(_PFB_CTL_1, dev_priv->regfile.savePFB_CTL_1);
		FUNC2(_PFB_WIN_SZ, dev_priv->regfile.savePFB_WIN_SZ);
		FUNC2(_PFB_WIN_POS, dev_priv->regfile.savePFB_WIN_POS);

		FUNC2(_TRANSBCONF, dev_priv->regfile.saveTRANSBCONF);
		FUNC2(_TRANS_HTOTAL_B, dev_priv->regfile.saveTRANS_HTOTAL_B);
		FUNC2(_TRANS_HBLANK_B, dev_priv->regfile.saveTRANS_HBLANK_B);
		FUNC2(_TRANS_HSYNC_B, dev_priv->regfile.saveTRANS_HSYNC_B);
		FUNC2(_TRANS_VTOTAL_B, dev_priv->regfile.saveTRANS_VTOTAL_B);
		FUNC2(_TRANS_VBLANK_B, dev_priv->regfile.saveTRANS_VBLANK_B);
		FUNC2(_TRANS_VSYNC_B, dev_priv->regfile.saveTRANS_VSYNC_B);
	}

	/* Restore plane info */
	FUNC2(_DSPBSIZE, dev_priv->regfile.saveDSPBSIZE);
	FUNC2(_DSPBPOS, dev_priv->regfile.saveDSPBPOS);
	FUNC2(_PIPEBSRC, dev_priv->regfile.savePIPEBSRC);
	FUNC2(_DSPBADDR, dev_priv->regfile.saveDSPBADDR);
	FUNC2(_DSPBSTRIDE, dev_priv->regfile.saveDSPBSTRIDE);
	if (FUNC4(dev)->gen >= 4) {
		FUNC2(_DSPBSURF, dev_priv->regfile.saveDSPBSURF);
		FUNC2(_DSPBTILEOFF, dev_priv->regfile.saveDSPBTILEOFF);
	}

	FUNC2(_PIPEBCONF, dev_priv->regfile.savePIPEBCONF);

	FUNC11(dev, PIPE_B);
	/* Enable the plane */
	FUNC2(_DSPBCNTR, dev_priv->regfile.saveDSPBCNTR);
	FUNC2(_DSPBADDR, FUNC1(_DSPBADDR));

	/* Cursor state */
	FUNC2(_CURAPOS, dev_priv->regfile.saveCURAPOS);
	FUNC2(_CURACNTR, dev_priv->regfile.saveCURACNTR);
	FUNC2(_CURABASE, dev_priv->regfile.saveCURABASE);
	FUNC2(_CURBPOS, dev_priv->regfile.saveCURBPOS);
	FUNC2(_CURBCNTR, dev_priv->regfile.saveCURBCNTR);
	FUNC2(_CURBBASE, dev_priv->regfile.saveCURBBASE);
	if (FUNC6(dev))
		FUNC2(CURSIZE, dev_priv->regfile.saveCURSIZE);

	/* CRT state */
	if (FUNC0(dev))
		FUNC2(PCH_ADPA, dev_priv->regfile.saveADPA);
	else
		FUNC2(ADPA, dev_priv->regfile.saveADPA);

	/* Display Port state */
	if (FUNC10(dev)) {
		FUNC2(DP_B, dev_priv->regfile.saveDP_B);
		FUNC2(DP_C, dev_priv->regfile.saveDP_C);
		FUNC2(DP_D, dev_priv->regfile.saveDP_D);
	}
	/* FIXME: restore TV & SDVO state */

	return;
}