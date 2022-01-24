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
struct TYPE_3__ {void* savePIPEB_DP_LINK_N; void* savePIPEA_DP_LINK_N; void* savePIPEB_DP_LINK_M; void* savePIPEA_DP_LINK_M; void* savePIPEB_GMCH_DATA_N; void* savePIPEA_GMCH_DATA_N; void* savePIPEB_GMCH_DATA_M; void* savePIPEA_GMCH_DATA_M; void* saveDP_D; void* saveDP_C; void* saveDP_B; void* saveADPA; void** saveFENCE; void* savePIPEBSTAT; void* saveDSPBTILEOFF; void* saveDSPBSURF; void* saveDSPBADDR; void* saveDSPBPOS; void* saveDSPBSIZE; void* saveDSPBSTRIDE; void* saveDSPBCNTR; void* saveTRANS_VSYNC_B; void* saveTRANS_VBLANK_B; void* saveTRANS_VTOTAL_B; void* saveTRANS_HSYNC_B; void* saveTRANS_HBLANK_B; void* saveTRANS_HTOTAL_B; void* saveTRANSBCONF; void* savePFB_WIN_POS; void* savePFB_WIN_SZ; void* savePFB_CTL_1; void* saveFDI_RXB_CTL; void* saveFDI_TXB_CTL; void* savePIPEB_LINK_N1; void* savePIPEB_LINK_M1; void* savePIPEB_DATA_N1; void* savePIPEB_DATA_M1; void* saveBCLRPAT_B; void* saveVSYNC_B; void* saveVBLANK_B; void* saveVTOTAL_B; void* saveHSYNC_B; void* saveHBLANK_B; void* saveHTOTAL_B; void* saveDPLL_B_MD; void* saveDPLL_B; void* saveFPB1; void* saveFPB0; void* savePIPEBSRC; void* savePIPEBCONF; void* savePIPEASTAT; void* saveDSPATILEOFF; void* saveDSPASURF; void* saveDSPAADDR; void* saveDSPAPOS; void* saveDSPASIZE; void* saveDSPASTRIDE; void* saveDSPACNTR; void* saveTRANS_VSYNC_A; void* saveTRANS_VBLANK_A; void* saveTRANS_VTOTAL_A; void* saveTRANS_HSYNC_A; void* saveTRANS_HBLANK_A; void* saveTRANS_HTOTAL_A; void* saveTRANSACONF; void* savePFA_WIN_POS; void* savePFA_WIN_SZ; void* savePFA_CTL_1; void* saveFDI_RXA_CTL; void* saveFDI_TXA_CTL; void* savePIPEA_LINK_N1; void* savePIPEA_LINK_M1; void* savePIPEA_DATA_N1; void* savePIPEA_DATA_M1; void* saveBCLRPAT_A; void* saveVSYNC_A; void* saveVBLANK_A; void* saveVTOTAL_A; void* saveHSYNC_A; void* saveHBLANK_A; void* saveHTOTAL_A; void* saveDPLL_A_MD; void* saveDPLL_A; void* saveFPA1; void* saveFPA0; void* savePIPEASRC; void* savePIPEACONF; void* saveDISP_ARB_CTL; void* savePCH_DREF_CONTROL; void* saveCURSIZE; void* saveCURBBASE; void* saveCURBPOS; void* saveCURBCNTR; void* saveCURABASE; void* saveCURAPOS; void* saveCURACNTR; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA ; 
 int /*<<< orphan*/  CURSIZE ; 
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int /*<<< orphan*/  DP_B ; 
 int /*<<< orphan*/  DP_C ; 
 int /*<<< orphan*/  DP_D ; 
 int /*<<< orphan*/  FENCE_REG_830_0 ; 
 int /*<<< orphan*/  FENCE_REG_945_8 ; 
 int /*<<< orphan*/  FENCE_REG_965_0 ; 
 int /*<<< orphan*/  FENCE_REG_SANDYBRIDGE_0 ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  PCH_ADPA ; 
 int /*<<< orphan*/  PCH_DREF_CONTROL ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  PIPE_B ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  _BCLRPAT_A ; 
 int /*<<< orphan*/  _BCLRPAT_B ; 
 int /*<<< orphan*/  _CURABASE ; 
 int /*<<< orphan*/  _CURACNTR ; 
 int /*<<< orphan*/  _CURAPOS ; 
 int /*<<< orphan*/  _CURBBASE ; 
 int /*<<< orphan*/  _CURBCNTR ; 
 int /*<<< orphan*/  _CURBPOS ; 
 int /*<<< orphan*/  _DPLL_A ; 
 int /*<<< orphan*/  _DPLL_A_MD ; 
 int /*<<< orphan*/  _DPLL_B ; 
 int /*<<< orphan*/  _DPLL_B_MD ; 
 int /*<<< orphan*/  _DSPAADDR ; 
 int /*<<< orphan*/  _DSPACNTR ; 
 int /*<<< orphan*/  _DSPAPOS ; 
 int /*<<< orphan*/  _DSPASIZE ; 
 int /*<<< orphan*/  _DSPASTRIDE ; 
 int /*<<< orphan*/  _DSPASURF ; 
 int /*<<< orphan*/  _DSPATILEOFF ; 
 int /*<<< orphan*/  _DSPBADDR ; 
 int /*<<< orphan*/  _DSPBCNTR ; 
 int /*<<< orphan*/  _DSPBPOS ; 
 int /*<<< orphan*/  _DSPBSIZE ; 
 int /*<<< orphan*/  _DSPBSTRIDE ; 
 int /*<<< orphan*/  _DSPBSURF ; 
 int /*<<< orphan*/  _DSPBTILEOFF ; 
 int /*<<< orphan*/  _FDI_RXA_CTL ; 
 int /*<<< orphan*/  _FDI_RXB_CTL ; 
 int /*<<< orphan*/  _FDI_TXA_CTL ; 
 int /*<<< orphan*/  _FDI_TXB_CTL ; 
 int /*<<< orphan*/  _FPA0 ; 
 int /*<<< orphan*/  _FPA1 ; 
 int /*<<< orphan*/  _FPB0 ; 
 int /*<<< orphan*/  _FPB1 ; 
 int /*<<< orphan*/  _HBLANK_A ; 
 int /*<<< orphan*/  _HBLANK_B ; 
 int /*<<< orphan*/  _HSYNC_A ; 
 int /*<<< orphan*/  _HSYNC_B ; 
 int /*<<< orphan*/  _HTOTAL_A ; 
 int /*<<< orphan*/  _HTOTAL_B ; 
 int /*<<< orphan*/  _PCH_DPLL_A ; 
 int /*<<< orphan*/  _PCH_DPLL_B ; 
 int /*<<< orphan*/  _PCH_FPA0 ; 
 int /*<<< orphan*/  _PCH_FPA1 ; 
 int /*<<< orphan*/  _PCH_FPB0 ; 
 int /*<<< orphan*/  _PCH_FPB1 ; 
 int /*<<< orphan*/  _PFA_CTL_1 ; 
 int /*<<< orphan*/  _PFA_WIN_POS ; 
 int /*<<< orphan*/  _PFA_WIN_SZ ; 
 int /*<<< orphan*/  _PFB_CTL_1 ; 
 int /*<<< orphan*/  _PFB_WIN_POS ; 
 int /*<<< orphan*/  _PFB_WIN_SZ ; 
 int /*<<< orphan*/  _PIPEACONF ; 
 int /*<<< orphan*/  _PIPEASRC ; 
 int /*<<< orphan*/  _PIPEASTAT ; 
 int /*<<< orphan*/  _PIPEA_DATA_M1 ; 
 int /*<<< orphan*/  _PIPEA_DATA_N1 ; 
 int /*<<< orphan*/  _PIPEA_DP_LINK_M ; 
 int /*<<< orphan*/  _PIPEA_DP_LINK_N ; 
 int /*<<< orphan*/  _PIPEA_GMCH_DATA_M ; 
 int /*<<< orphan*/  _PIPEA_GMCH_DATA_N ; 
 int /*<<< orphan*/  _PIPEA_LINK_M1 ; 
 int /*<<< orphan*/  _PIPEA_LINK_N1 ; 
 int /*<<< orphan*/  _PIPEBCONF ; 
 int /*<<< orphan*/  _PIPEBSRC ; 
 int /*<<< orphan*/  _PIPEBSTAT ; 
 int /*<<< orphan*/  _PIPEB_DATA_M1 ; 
 int /*<<< orphan*/  _PIPEB_DATA_N1 ; 
 int /*<<< orphan*/  _PIPEB_DP_LINK_M ; 
 int /*<<< orphan*/  _PIPEB_DP_LINK_N ; 
 int /*<<< orphan*/  _PIPEB_GMCH_DATA_M ; 
 int /*<<< orphan*/  _PIPEB_GMCH_DATA_N ; 
 int /*<<< orphan*/  _PIPEB_LINK_M1 ; 
 int /*<<< orphan*/  _PIPEB_LINK_N1 ; 
 int /*<<< orphan*/  _TRANSACONF ; 
 int /*<<< orphan*/  _TRANSBCONF ; 
 int /*<<< orphan*/  _TRANS_HBLANK_A ; 
 int /*<<< orphan*/  _TRANS_HBLANK_B ; 
 int /*<<< orphan*/  _TRANS_HSYNC_A ; 
 int /*<<< orphan*/  _TRANS_HSYNC_B ; 
 int /*<<< orphan*/  _TRANS_HTOTAL_A ; 
 int /*<<< orphan*/  _TRANS_HTOTAL_B ; 
 int /*<<< orphan*/  _TRANS_VBLANK_A ; 
 int /*<<< orphan*/  _TRANS_VBLANK_B ; 
 int /*<<< orphan*/  _TRANS_VSYNC_A ; 
 int /*<<< orphan*/  _TRANS_VSYNC_B ; 
 int /*<<< orphan*/  _TRANS_VTOTAL_A ; 
 int /*<<< orphan*/  _TRANS_VTOTAL_B ; 
 int /*<<< orphan*/  _VBLANK_A ; 
 int /*<<< orphan*/  _VBLANK_B ; 
 int /*<<< orphan*/  _VSYNC_A ; 
 int /*<<< orphan*/  _VSYNC_B ; 
 int /*<<< orphan*/  _VTOTAL_A ; 
 int /*<<< orphan*/  _VTOTAL_B ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,int /*<<< orphan*/ ) ; 

void FUNC10(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int i;

	/* Cursor state */
	dev_priv->regfile.saveCURACNTR = FUNC1(_CURACNTR);
	dev_priv->regfile.saveCURAPOS = FUNC1(_CURAPOS);
	dev_priv->regfile.saveCURABASE = FUNC1(_CURABASE);
	dev_priv->regfile.saveCURBCNTR = FUNC1(_CURBCNTR);
	dev_priv->regfile.saveCURBPOS = FUNC1(_CURBPOS);
	dev_priv->regfile.saveCURBBASE = FUNC1(_CURBBASE);
	if (FUNC5(dev))
		dev_priv->regfile.saveCURSIZE = FUNC1(CURSIZE);

	if (FUNC0(dev)) {
		dev_priv->regfile.savePCH_DREF_CONTROL = FUNC1(PCH_DREF_CONTROL);
		dev_priv->regfile.saveDISP_ARB_CTL = FUNC1(DISP_ARB_CTL);
	}

	/* Pipe & plane A info */
	dev_priv->regfile.savePIPEACONF = FUNC1(_PIPEACONF);
	dev_priv->regfile.savePIPEASRC = FUNC1(_PIPEASRC);
	if (FUNC0(dev)) {
		dev_priv->regfile.saveFPA0 = FUNC1(_PCH_FPA0);
		dev_priv->regfile.saveFPA1 = FUNC1(_PCH_FPA1);
		dev_priv->regfile.saveDPLL_A = FUNC1(_PCH_DPLL_A);
	} else {
		dev_priv->regfile.saveFPA0 = FUNC1(_FPA0);
		dev_priv->regfile.saveFPA1 = FUNC1(_FPA1);
		dev_priv->regfile.saveDPLL_A = FUNC1(_DPLL_A);
	}
	if (FUNC3(dev)->gen >= 4 && !FUNC0(dev))
		dev_priv->regfile.saveDPLL_A_MD = FUNC1(_DPLL_A_MD);
	dev_priv->regfile.saveHTOTAL_A = FUNC1(_HTOTAL_A);
	dev_priv->regfile.saveHBLANK_A = FUNC1(_HBLANK_A);
	dev_priv->regfile.saveHSYNC_A = FUNC1(_HSYNC_A);
	dev_priv->regfile.saveVTOTAL_A = FUNC1(_VTOTAL_A);
	dev_priv->regfile.saveVBLANK_A = FUNC1(_VBLANK_A);
	dev_priv->regfile.saveVSYNC_A = FUNC1(_VSYNC_A);
	if (!FUNC0(dev))
		dev_priv->regfile.saveBCLRPAT_A = FUNC1(_BCLRPAT_A);

	if (FUNC0(dev)) {
		dev_priv->regfile.savePIPEA_DATA_M1 = FUNC1(_PIPEA_DATA_M1);
		dev_priv->regfile.savePIPEA_DATA_N1 = FUNC1(_PIPEA_DATA_N1);
		dev_priv->regfile.savePIPEA_LINK_M1 = FUNC1(_PIPEA_LINK_M1);
		dev_priv->regfile.savePIPEA_LINK_N1 = FUNC1(_PIPEA_LINK_N1);

		dev_priv->regfile.saveFDI_TXA_CTL = FUNC1(_FDI_TXA_CTL);
		dev_priv->regfile.saveFDI_RXA_CTL = FUNC1(_FDI_RXA_CTL);

		dev_priv->regfile.savePFA_CTL_1 = FUNC1(_PFA_CTL_1);
		dev_priv->regfile.savePFA_WIN_SZ = FUNC1(_PFA_WIN_SZ);
		dev_priv->regfile.savePFA_WIN_POS = FUNC1(_PFA_WIN_POS);

		dev_priv->regfile.saveTRANSACONF = FUNC1(_TRANSACONF);
		dev_priv->regfile.saveTRANS_HTOTAL_A = FUNC1(_TRANS_HTOTAL_A);
		dev_priv->regfile.saveTRANS_HBLANK_A = FUNC1(_TRANS_HBLANK_A);
		dev_priv->regfile.saveTRANS_HSYNC_A = FUNC1(_TRANS_HSYNC_A);
		dev_priv->regfile.saveTRANS_VTOTAL_A = FUNC1(_TRANS_VTOTAL_A);
		dev_priv->regfile.saveTRANS_VBLANK_A = FUNC1(_TRANS_VBLANK_A);
		dev_priv->regfile.saveTRANS_VSYNC_A = FUNC1(_TRANS_VSYNC_A);
	}

	dev_priv->regfile.saveDSPACNTR = FUNC1(_DSPACNTR);
	dev_priv->regfile.saveDSPASTRIDE = FUNC1(_DSPASTRIDE);
	dev_priv->regfile.saveDSPASIZE = FUNC1(_DSPASIZE);
	dev_priv->regfile.saveDSPAPOS = FUNC1(_DSPAPOS);
	dev_priv->regfile.saveDSPAADDR = FUNC1(_DSPAADDR);
	if (FUNC3(dev)->gen >= 4) {
		dev_priv->regfile.saveDSPASURF = FUNC1(_DSPASURF);
		dev_priv->regfile.saveDSPATILEOFF = FUNC1(_DSPATILEOFF);
	}
	FUNC9(dev, PIPE_A);
	dev_priv->regfile.savePIPEASTAT = FUNC1(_PIPEASTAT);

	/* Pipe & plane B info */
	dev_priv->regfile.savePIPEBCONF = FUNC1(_PIPEBCONF);
	dev_priv->regfile.savePIPEBSRC = FUNC1(_PIPEBSRC);
	if (FUNC0(dev)) {
		dev_priv->regfile.saveFPB0 = FUNC1(_PCH_FPB0);
		dev_priv->regfile.saveFPB1 = FUNC1(_PCH_FPB1);
		dev_priv->regfile.saveDPLL_B = FUNC1(_PCH_DPLL_B);
	} else {
		dev_priv->regfile.saveFPB0 = FUNC1(_FPB0);
		dev_priv->regfile.saveFPB1 = FUNC1(_FPB1);
		dev_priv->regfile.saveDPLL_B = FUNC1(_DPLL_B);
	}
	if (FUNC3(dev)->gen >= 4 && !FUNC0(dev))
		dev_priv->regfile.saveDPLL_B_MD = FUNC1(_DPLL_B_MD);
	dev_priv->regfile.saveHTOTAL_B = FUNC1(_HTOTAL_B);
	dev_priv->regfile.saveHBLANK_B = FUNC1(_HBLANK_B);
	dev_priv->regfile.saveHSYNC_B = FUNC1(_HSYNC_B);
	dev_priv->regfile.saveVTOTAL_B = FUNC1(_VTOTAL_B);
	dev_priv->regfile.saveVBLANK_B = FUNC1(_VBLANK_B);
	dev_priv->regfile.saveVSYNC_B = FUNC1(_VSYNC_B);
	if (!FUNC0(dev))
		dev_priv->regfile.saveBCLRPAT_B = FUNC1(_BCLRPAT_B);

	if (FUNC0(dev)) {
		dev_priv->regfile.savePIPEB_DATA_M1 = FUNC1(_PIPEB_DATA_M1);
		dev_priv->regfile.savePIPEB_DATA_N1 = FUNC1(_PIPEB_DATA_N1);
		dev_priv->regfile.savePIPEB_LINK_M1 = FUNC1(_PIPEB_LINK_M1);
		dev_priv->regfile.savePIPEB_LINK_N1 = FUNC1(_PIPEB_LINK_N1);

		dev_priv->regfile.saveFDI_TXB_CTL = FUNC1(_FDI_TXB_CTL);
		dev_priv->regfile.saveFDI_RXB_CTL = FUNC1(_FDI_RXB_CTL);

		dev_priv->regfile.savePFB_CTL_1 = FUNC1(_PFB_CTL_1);
		dev_priv->regfile.savePFB_WIN_SZ = FUNC1(_PFB_WIN_SZ);
		dev_priv->regfile.savePFB_WIN_POS = FUNC1(_PFB_WIN_POS);

		dev_priv->regfile.saveTRANSBCONF = FUNC1(_TRANSBCONF);
		dev_priv->regfile.saveTRANS_HTOTAL_B = FUNC1(_TRANS_HTOTAL_B);
		dev_priv->regfile.saveTRANS_HBLANK_B = FUNC1(_TRANS_HBLANK_B);
		dev_priv->regfile.saveTRANS_HSYNC_B = FUNC1(_TRANS_HSYNC_B);
		dev_priv->regfile.saveTRANS_VTOTAL_B = FUNC1(_TRANS_VTOTAL_B);
		dev_priv->regfile.saveTRANS_VBLANK_B = FUNC1(_TRANS_VBLANK_B);
		dev_priv->regfile.saveTRANS_VSYNC_B = FUNC1(_TRANS_VSYNC_B);
	}

	dev_priv->regfile.saveDSPBCNTR = FUNC1(_DSPBCNTR);
	dev_priv->regfile.saveDSPBSTRIDE = FUNC1(_DSPBSTRIDE);
	dev_priv->regfile.saveDSPBSIZE = FUNC1(_DSPBSIZE);
	dev_priv->regfile.saveDSPBPOS = FUNC1(_DSPBPOS);
	dev_priv->regfile.saveDSPBADDR = FUNC1(_DSPBADDR);
	if (FUNC3(dev)->gen >= 4) {
		dev_priv->regfile.saveDSPBSURF = FUNC1(_DSPBSURF);
		dev_priv->regfile.saveDSPBTILEOFF = FUNC1(_DSPBTILEOFF);
	}
	FUNC9(dev, PIPE_B);
	dev_priv->regfile.savePIPEBSTAT = FUNC1(_PIPEBSTAT);

	/* Fences */
	switch (FUNC3(dev)->gen) {
	case 7:
	case 6:
		for (i = 0; i < 16; i++)
			dev_priv->regfile.saveFENCE[i] = FUNC2(FENCE_REG_SANDYBRIDGE_0 + (i * 8));
		break;
	case 5:
	case 4:
		for (i = 0; i < 16; i++)
			dev_priv->regfile.saveFENCE[i] = FUNC2(FENCE_REG_965_0 + (i * 8));
		break;
	case 3:
		if (FUNC6(dev) || FUNC7(dev) || FUNC4(dev))
			for (i = 0; i < 8; i++)
				dev_priv->regfile.saveFENCE[i+8] = FUNC1(FENCE_REG_945_8 + (i * 4));
	case 2:
		for (i = 0; i < 8; i++)
			dev_priv->regfile.saveFENCE[i] = FUNC1(FENCE_REG_830_0 + (i * 4));
		break;
	}

	/* CRT state */
	if (FUNC0(dev))
		dev_priv->regfile.saveADPA = FUNC1(PCH_ADPA);
	else
		dev_priv->regfile.saveADPA = FUNC1(ADPA);

	/* Display Port state */
	if (FUNC8(dev)) {
		dev_priv->regfile.saveDP_B = FUNC1(DP_B);
		dev_priv->regfile.saveDP_C = FUNC1(DP_C);
		dev_priv->regfile.saveDP_D = FUNC1(DP_D);
		dev_priv->regfile.savePIPEA_GMCH_DATA_M = FUNC1(_PIPEA_GMCH_DATA_M);
		dev_priv->regfile.savePIPEB_GMCH_DATA_M = FUNC1(_PIPEB_GMCH_DATA_M);
		dev_priv->regfile.savePIPEA_GMCH_DATA_N = FUNC1(_PIPEA_GMCH_DATA_N);
		dev_priv->regfile.savePIPEB_GMCH_DATA_N = FUNC1(_PIPEB_GMCH_DATA_N);
		dev_priv->regfile.savePIPEA_DP_LINK_M = FUNC1(_PIPEA_DP_LINK_M);
		dev_priv->regfile.savePIPEB_DP_LINK_M = FUNC1(_PIPEB_DP_LINK_M);
		dev_priv->regfile.savePIPEA_DP_LINK_N = FUNC1(_PIPEA_DP_LINK_N);
		dev_priv->regfile.savePIPEB_DP_LINK_N = FUNC1(_PIPEB_DP_LINK_N);
	}
	/* FIXME: regfile.save TV & SDVO state */

	return;
}