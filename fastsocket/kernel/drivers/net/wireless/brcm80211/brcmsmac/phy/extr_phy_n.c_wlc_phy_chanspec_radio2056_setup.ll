; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_radio2056_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chanspec_radio2056_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_regs = type { i64, i64 }
%struct.brcms_phy = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.chan_info_nphy_radio205x = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RADIO_2056_SYN_PLL_VCOCAL1 = common dso_local global i32 0, align 4
@RADIO_2056_SYN = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_VCOCAL2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_REFDIV = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_MMD2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_MMD1 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_LOOPFILTER1 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_LOOPFILTER2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_LOOPFILTER3 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_LOOPFILTER4 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_LOOPFILTER5 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RESERVED_ADDR27 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RESERVED_ADDR28 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RESERVED_ADDR29 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_LOGEN_VCOBUF1 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_LOGEN_MIXER2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_LOGEN_BUF3 = common dso_local global i32 0, align 4
@RADIO_2056_SYN_LOGEN_BUF4 = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAA_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_RX_LNAG_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_INTPAA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX_INTPAG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PADA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PADG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PGAA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PGAG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_MIXA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_MIXG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@regs_SYN_2056 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_A1 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev5 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev6 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev7 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev8 = common dso_local global %struct.radio_regs* null, align 8
@regs_SYN_2056_rev11 = common dso_local global %struct.radio_regs* null, align 8
@RADIO_2056_SYN_PLL_CP2 = common dso_local global i32 0, align 4
@BFL2_GPLL_WAR = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM4716 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM47162 = common dso_local global i64 0, align 8
@BFL2_GPLL_WAR2 = common dso_local global i32 0, align 4
@BFL2_APLL_WAR = common dso_local global i32 0, align 4
@RADIO_2056 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@PADG_IDAC = common dso_local global i32 0, align 4
@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8
@BCMA_CHIP_ID_BCM43225 = common dso_local global i64 0, align 8
@BCMA_PKG_ID_BCM43224_FAB_SMIC = common dso_local global i64 0, align 8
@INTPAG_IMAIN_STAT = common dso_local global i32 0, align 4
@INTPAG_IAUX_STAT = common dso_local global i32 0, align 4
@INTPAG_CASCBIAS = common dso_local global i32 0, align 4
@INTPAG_BOOST_TUNE = common dso_local global i32 0, align 4
@PGAG_BOOST_TUNE = common dso_local global i32 0, align 4
@PADG_BOOST_TUNE = common dso_local global i32 0, align 4
@MIXG_BOOST_TUNE = common dso_local global i32 0, align 4
@WL_CHANSPEC_BW_40 = common dso_local global i64 0, align 8
@PA_SPARE1 = common dso_local global i32 0, align 4
@INTPAA_BOOST_TUNE = common dso_local global i32 0, align 4
@PADA_BOOST_TUNE = common dso_local global i32 0, align 4
@PGAA_BOOST_TUNE = common dso_local global i32 0, align 4
@MIXA_BOOST_TUNE = common dso_local global i32 0, align 4
@TXSPARE1 = common dso_local global i32 0, align 4
@PA_SPARE2 = common dso_local global i32 0, align 4
@PADA_CASCBIAS = common dso_local global i32 0, align 4
@INTPAA_IAUX_STAT = common dso_local global i32 0, align 4
@INTPAA_IMAIN_STAT = common dso_local global i32 0, align 4
@INTPAA_CASCBIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.chan_info_nphy_radio205x*)* @wlc_phy_chanspec_radio2056_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_chanspec_radio2056_setup(%struct.brcms_phy* %0, %struct.chan_info_nphy_radio205x* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.chan_info_nphy_radio205x*, align 8
  %5 = alloca %struct.radio_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.chan_info_nphy_radio205x* %1, %struct.chan_info_nphy_radio205x** %4, align 8
  store %struct.radio_regs* null, %struct.radio_regs** %5, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = load i32, i32* @RADIO_2056_SYN_PLL_VCOCAL1, align 4
  %23 = load i32, i32* @RADIO_2056_SYN, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %26 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @write_radio_reg(%struct.brcms_phy* %21, i32 %24, i32 %27)
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = load i32, i32* @RADIO_2056_SYN_PLL_VCOCAL2, align 4
  %31 = load i32, i32* @RADIO_2056_SYN, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %34 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @write_radio_reg(%struct.brcms_phy* %29, i32 %32, i32 %35)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* @RADIO_2056_SYN_PLL_REFDIV, align 4
  %39 = load i32, i32* @RADIO_2056_SYN, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %42 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @write_radio_reg(%struct.brcms_phy* %37, i32 %40, i32 %43)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %46 = load i32, i32* @RADIO_2056_SYN_PLL_MMD2, align 4
  %47 = load i32, i32* @RADIO_2056_SYN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %50 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @write_radio_reg(%struct.brcms_phy* %45, i32 %48, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %54 = load i32, i32* @RADIO_2056_SYN_PLL_MMD1, align 4
  %55 = load i32, i32* @RADIO_2056_SYN, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %58 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write_radio_reg(%struct.brcms_phy* %53, i32 %56, i32 %59)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER1, align 4
  %63 = load i32, i32* @RADIO_2056_SYN, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %66 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @write_radio_reg(%struct.brcms_phy* %61, i32 %64, i32 %67)
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %70 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER2, align 4
  %71 = load i32, i32* @RADIO_2056_SYN, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %74 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @write_radio_reg(%struct.brcms_phy* %69, i32 %72, i32 %75)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER3, align 4
  %79 = load i32, i32* @RADIO_2056_SYN, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %82 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @write_radio_reg(%struct.brcms_phy* %77, i32 %80, i32 %83)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %86 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER4, align 4
  %87 = load i32, i32* @RADIO_2056_SYN, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %90 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @write_radio_reg(%struct.brcms_phy* %85, i32 %88, i32 %91)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER5, align 4
  %95 = load i32, i32* @RADIO_2056_SYN, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %98 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @write_radio_reg(%struct.brcms_phy* %93, i32 %96, i32 %99)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = load i32, i32* @RADIO_2056_SYN_RESERVED_ADDR27, align 4
  %103 = load i32, i32* @RADIO_2056_SYN, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %106 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @write_radio_reg(%struct.brcms_phy* %101, i32 %104, i32 %107)
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = load i32, i32* @RADIO_2056_SYN_RESERVED_ADDR28, align 4
  %111 = load i32, i32* @RADIO_2056_SYN, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %114 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @write_radio_reg(%struct.brcms_phy* %109, i32 %112, i32 %115)
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %118 = load i32, i32* @RADIO_2056_SYN_RESERVED_ADDR29, align 4
  %119 = load i32, i32* @RADIO_2056_SYN, align 4
  %120 = or i32 %118, %119
  %121 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %122 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @write_radio_reg(%struct.brcms_phy* %117, i32 %120, i32 %123)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %126 = load i32, i32* @RADIO_2056_SYN_LOGEN_VCOBUF1, align 4
  %127 = load i32, i32* @RADIO_2056_SYN, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %130 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @write_radio_reg(%struct.brcms_phy* %125, i32 %128, i32 %131)
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %134 = load i32, i32* @RADIO_2056_SYN_LOGEN_MIXER2, align 4
  %135 = load i32, i32* @RADIO_2056_SYN, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %138 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %137, i32 0, i32 14
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @write_radio_reg(%struct.brcms_phy* %133, i32 %136, i32 %139)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = load i32, i32* @RADIO_2056_SYN_LOGEN_BUF3, align 4
  %143 = load i32, i32* @RADIO_2056_SYN, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %146 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @write_radio_reg(%struct.brcms_phy* %141, i32 %144, i32 %147)
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = load i32, i32* @RADIO_2056_SYN_LOGEN_BUF4, align 4
  %151 = load i32, i32* @RADIO_2056_SYN, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %154 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %153, i32 0, i32 16
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @write_radio_reg(%struct.brcms_phy* %149, i32 %152, i32 %155)
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %158 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %159 = load i32, i32* @RADIO_2056_RX0, align 4
  %160 = or i32 %158, %159
  %161 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %162 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %161, i32 0, i32 17
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @write_radio_reg(%struct.brcms_phy* %157, i32 %160, i32 %163)
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %166 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %167 = load i32, i32* @RADIO_2056_RX0, align 4
  %168 = or i32 %166, %167
  %169 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %170 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %169, i32 0, i32 18
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @write_radio_reg(%struct.brcms_phy* %165, i32 %168, i32 %171)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %174 = load i32, i32* @RADIO_2056_TX_INTPAA_BOOST_TUNE, align 4
  %175 = load i32, i32* @RADIO_2056_TX0, align 4
  %176 = or i32 %174, %175
  %177 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %178 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %177, i32 0, i32 19
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @write_radio_reg(%struct.brcms_phy* %173, i32 %176, i32 %179)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %182 = load i32, i32* @RADIO_2056_TX_INTPAG_BOOST_TUNE, align 4
  %183 = load i32, i32* @RADIO_2056_TX0, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %186 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %185, i32 0, i32 20
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @write_radio_reg(%struct.brcms_phy* %181, i32 %184, i32 %187)
  %189 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %190 = load i32, i32* @RADIO_2056_TX_PADA_BOOST_TUNE, align 4
  %191 = load i32, i32* @RADIO_2056_TX0, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %194 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %193, i32 0, i32 21
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @write_radio_reg(%struct.brcms_phy* %189, i32 %192, i32 %195)
  %197 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %198 = load i32, i32* @RADIO_2056_TX_PADG_BOOST_TUNE, align 4
  %199 = load i32, i32* @RADIO_2056_TX0, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %202 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %201, i32 0, i32 22
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @write_radio_reg(%struct.brcms_phy* %197, i32 %200, i32 %203)
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %206 = load i32, i32* @RADIO_2056_TX_PGAA_BOOST_TUNE, align 4
  %207 = load i32, i32* @RADIO_2056_TX0, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %210 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %209, i32 0, i32 23
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @write_radio_reg(%struct.brcms_phy* %205, i32 %208, i32 %211)
  %213 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %214 = load i32, i32* @RADIO_2056_TX_PGAG_BOOST_TUNE, align 4
  %215 = load i32, i32* @RADIO_2056_TX0, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %218 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %217, i32 0, i32 24
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @write_radio_reg(%struct.brcms_phy* %213, i32 %216, i32 %219)
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %222 = load i32, i32* @RADIO_2056_TX_MIXA_BOOST_TUNE, align 4
  %223 = load i32, i32* @RADIO_2056_TX0, align 4
  %224 = or i32 %222, %223
  %225 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %226 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %225, i32 0, i32 25
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @write_radio_reg(%struct.brcms_phy* %221, i32 %224, i32 %227)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %230 = load i32, i32* @RADIO_2056_TX_MIXG_BOOST_TUNE, align 4
  %231 = load i32, i32* @RADIO_2056_TX0, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %234 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %233, i32 0, i32 26
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @write_radio_reg(%struct.brcms_phy* %229, i32 %232, i32 %235)
  %237 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %238 = load i32, i32* @RADIO_2056_RX_LNAA_TUNE, align 4
  %239 = load i32, i32* @RADIO_2056_RX1, align 4
  %240 = or i32 %238, %239
  %241 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %242 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %241, i32 0, i32 27
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @write_radio_reg(%struct.brcms_phy* %237, i32 %240, i32 %243)
  %245 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %246 = load i32, i32* @RADIO_2056_RX_LNAG_TUNE, align 4
  %247 = load i32, i32* @RADIO_2056_RX1, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %250 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %249, i32 0, i32 28
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @write_radio_reg(%struct.brcms_phy* %245, i32 %248, i32 %251)
  %253 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %254 = load i32, i32* @RADIO_2056_TX_INTPAA_BOOST_TUNE, align 4
  %255 = load i32, i32* @RADIO_2056_TX1, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %258 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %257, i32 0, i32 29
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @write_radio_reg(%struct.brcms_phy* %253, i32 %256, i32 %259)
  %261 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %262 = load i32, i32* @RADIO_2056_TX_INTPAG_BOOST_TUNE, align 4
  %263 = load i32, i32* @RADIO_2056_TX1, align 4
  %264 = or i32 %262, %263
  %265 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %266 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %265, i32 0, i32 30
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @write_radio_reg(%struct.brcms_phy* %261, i32 %264, i32 %267)
  %269 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %270 = load i32, i32* @RADIO_2056_TX_PADA_BOOST_TUNE, align 4
  %271 = load i32, i32* @RADIO_2056_TX1, align 4
  %272 = or i32 %270, %271
  %273 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %274 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %273, i32 0, i32 31
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @write_radio_reg(%struct.brcms_phy* %269, i32 %272, i32 %275)
  %277 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %278 = load i32, i32* @RADIO_2056_TX_PADG_BOOST_TUNE, align 4
  %279 = load i32, i32* @RADIO_2056_TX1, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %282 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %281, i32 0, i32 32
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @write_radio_reg(%struct.brcms_phy* %277, i32 %280, i32 %283)
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %286 = load i32, i32* @RADIO_2056_TX_PGAA_BOOST_TUNE, align 4
  %287 = load i32, i32* @RADIO_2056_TX1, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %290 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %289, i32 0, i32 33
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @write_radio_reg(%struct.brcms_phy* %285, i32 %288, i32 %291)
  %293 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %294 = load i32, i32* @RADIO_2056_TX_PGAG_BOOST_TUNE, align 4
  %295 = load i32, i32* @RADIO_2056_TX1, align 4
  %296 = or i32 %294, %295
  %297 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %298 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %297, i32 0, i32 34
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @write_radio_reg(%struct.brcms_phy* %293, i32 %296, i32 %299)
  %301 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %302 = load i32, i32* @RADIO_2056_TX_MIXA_BOOST_TUNE, align 4
  %303 = load i32, i32* @RADIO_2056_TX1, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %306 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %305, i32 0, i32 35
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @write_radio_reg(%struct.brcms_phy* %301, i32 %304, i32 %307)
  %309 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %310 = load i32, i32* @RADIO_2056_TX_MIXG_BOOST_TUNE, align 4
  %311 = load i32, i32* @RADIO_2056_TX1, align 4
  %312 = or i32 %310, %311
  %313 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %4, align 8
  %314 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %313, i32 0, i32 36
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @write_radio_reg(%struct.brcms_phy* %309, i32 %312, i32 %315)
  %317 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %318 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i64 @NREV_IS(i32 %320, i32 3)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %2
  %324 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056, align 8
  store %struct.radio_regs* %324, %struct.radio_regs** %5, align 8
  br label %351

325:                                              ; preds = %2
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %327 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i64 @NREV_IS(i32 %329, i32 4)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %325
  %333 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_A1, align 8
  store %struct.radio_regs* %333, %struct.radio_regs** %5, align 8
  br label %350

334:                                              ; preds = %325
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %336 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  switch i32 %338, label %349 [
    i32 5, label %339
    i32 6, label %341
    i32 7, label %343
    i32 9, label %343
    i32 8, label %345
    i32 11, label %347
  ]

339:                                              ; preds = %334
  %340 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev5, align 8
  store %struct.radio_regs* %340, %struct.radio_regs** %5, align 8
  br label %349

341:                                              ; preds = %334
  %342 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev6, align 8
  store %struct.radio_regs* %342, %struct.radio_regs** %5, align 8
  br label %349

343:                                              ; preds = %334, %334
  %344 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev7, align 8
  store %struct.radio_regs* %344, %struct.radio_regs** %5, align 8
  br label %349

345:                                              ; preds = %334
  %346 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev8, align 8
  store %struct.radio_regs* %346, %struct.radio_regs** %5, align 8
  br label %349

347:                                              ; preds = %334
  %348 = load %struct.radio_regs*, %struct.radio_regs** @regs_SYN_2056_rev11, align 8
  store %struct.radio_regs* %348, %struct.radio_regs** %5, align 8
  br label %349

349:                                              ; preds = %334, %347, %345, %343, %341, %339
  br label %350

350:                                              ; preds = %349, %332
  br label %351

351:                                              ; preds = %350, %323
  %352 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %353 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = call i64 @CHSPEC_IS2G(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %368

357:                                              ; preds = %351
  %358 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %359 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %360 = load i32, i32* @RADIO_2056_SYN, align 4
  %361 = or i32 %359, %360
  %362 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %363 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %362, i64 71
  %364 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = trunc i64 %365 to i32
  %367 = call i32 @write_radio_reg(%struct.brcms_phy* %358, i32 %361, i32 %366)
  br label %379

368:                                              ; preds = %351
  %369 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %370 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %371 = load i32, i32* @RADIO_2056_SYN, align 4
  %372 = or i32 %370, %371
  %373 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %374 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %373, i64 71
  %375 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = trunc i64 %376 to i32
  %378 = call i32 @write_radio_reg(%struct.brcms_phy* %369, i32 %372, i32 %377)
  br label %379

379:                                              ; preds = %368, %357
  %380 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %381 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %380, i32 0, i32 2
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @BFL2_GPLL_WAR, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %444

388:                                              ; preds = %379
  %389 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %390 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = call i64 @CHSPEC_IS2G(i32 %391)
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %443

394:                                              ; preds = %388
  %395 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %396 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER1, align 4
  %397 = load i32, i32* @RADIO_2056_SYN, align 4
  %398 = or i32 %396, %397
  %399 = call i32 @write_radio_reg(%struct.brcms_phy* %395, i32 %398, i32 31)
  %400 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %401 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER2, align 4
  %402 = load i32, i32* @RADIO_2056_SYN, align 4
  %403 = or i32 %401, %402
  %404 = call i32 @write_radio_reg(%struct.brcms_phy* %400, i32 %403, i32 31)
  %405 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %406 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %405, i32 0, i32 2
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %420, label %412

412:                                              ; preds = %394
  %413 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %414 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %413, i32 0, i32 2
  %415 = load %struct.TYPE_4__*, %struct.TYPE_4__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %431

420:                                              ; preds = %412, %394
  %421 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %422 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER4, align 4
  %423 = load i32, i32* @RADIO_2056_SYN, align 4
  %424 = or i32 %422, %423
  %425 = call i32 @write_radio_reg(%struct.brcms_phy* %421, i32 %424, i32 20)
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %427 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %428 = load i32, i32* @RADIO_2056_SYN, align 4
  %429 = or i32 %427, %428
  %430 = call i32 @write_radio_reg(%struct.brcms_phy* %426, i32 %429, i32 0)
  br label %442

431:                                              ; preds = %412
  %432 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %433 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER4, align 4
  %434 = load i32, i32* @RADIO_2056_SYN, align 4
  %435 = or i32 %433, %434
  %436 = call i32 @write_radio_reg(%struct.brcms_phy* %432, i32 %435, i32 11)
  %437 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %438 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %439 = load i32, i32* @RADIO_2056_SYN, align 4
  %440 = or i32 %438, %439
  %441 = call i32 @write_radio_reg(%struct.brcms_phy* %437, i32 %440, i32 20)
  br label %442

442:                                              ; preds = %431, %420
  br label %443

443:                                              ; preds = %442, %388
  br label %444

444:                                              ; preds = %443, %379
  %445 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %446 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %445, i32 0, i32 2
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @BFL2_GPLL_WAR2, align 4
  %451 = and i32 %449, %450
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %480

453:                                              ; preds = %444
  %454 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %455 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 8
  %457 = call i64 @CHSPEC_IS2G(i32 %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %480

459:                                              ; preds = %453
  %460 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %461 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER1, align 4
  %462 = load i32, i32* @RADIO_2056_SYN, align 4
  %463 = or i32 %461, %462
  %464 = call i32 @write_radio_reg(%struct.brcms_phy* %460, i32 %463, i32 31)
  %465 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %466 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER2, align 4
  %467 = load i32, i32* @RADIO_2056_SYN, align 4
  %468 = or i32 %466, %467
  %469 = call i32 @write_radio_reg(%struct.brcms_phy* %465, i32 %468, i32 31)
  %470 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %471 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER4, align 4
  %472 = load i32, i32* @RADIO_2056_SYN, align 4
  %473 = or i32 %471, %472
  %474 = call i32 @write_radio_reg(%struct.brcms_phy* %470, i32 %473, i32 11)
  %475 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %476 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %477 = load i32, i32* @RADIO_2056_SYN, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @write_radio_reg(%struct.brcms_phy* %475, i32 %478, i32 32)
  br label %480

480:                                              ; preds = %459, %453, %444
  %481 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %482 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %481, i32 0, i32 2
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @BFL2_APLL_WAR, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %517

489:                                              ; preds = %480
  %490 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %491 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %490, i32 0, i32 4
  %492 = load i32, i32* %491, align 8
  %493 = call i64 @CHSPEC_IS5G(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %516

495:                                              ; preds = %489
  %496 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %497 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER1, align 4
  %498 = load i32, i32* @RADIO_2056_SYN, align 4
  %499 = or i32 %497, %498
  %500 = call i32 @write_radio_reg(%struct.brcms_phy* %496, i32 %499, i32 31)
  %501 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %502 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER2, align 4
  %503 = load i32, i32* @RADIO_2056_SYN, align 4
  %504 = or i32 %502, %503
  %505 = call i32 @write_radio_reg(%struct.brcms_phy* %501, i32 %504, i32 31)
  %506 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %507 = load i32, i32* @RADIO_2056_SYN_PLL_LOOPFILTER4, align 4
  %508 = load i32, i32* @RADIO_2056_SYN, align 4
  %509 = or i32 %507, %508
  %510 = call i32 @write_radio_reg(%struct.brcms_phy* %506, i32 %509, i32 5)
  %511 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %512 = load i32, i32* @RADIO_2056_SYN_PLL_CP2, align 4
  %513 = load i32, i32* @RADIO_2056_SYN, align 4
  %514 = or i32 %512, %513
  %515 = call i32 @write_radio_reg(%struct.brcms_phy* %511, i32 %514, i32 12)
  br label %516

516:                                              ; preds = %495, %489
  br label %517

517:                                              ; preds = %516, %480
  %518 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %519 = call i64 @PHY_IPA(%struct.brcms_phy* %518)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %680

521:                                              ; preds = %517
  %522 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %523 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %522, i32 0, i32 4
  %524 = load i32, i32* %523, align 8
  %525 = call i64 @CHSPEC_IS2G(i32 %524)
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %680

527:                                              ; preds = %521
  store i64 0, i64* %12, align 8
  br label %528

528:                                              ; preds = %676, %527
  %529 = load i64, i64* %12, align 8
  %530 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %531 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %530, i32 0, i32 3
  %532 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  %534 = icmp slt i64 %529, %533
  br i1 %534, label %535, label %679

535:                                              ; preds = %528
  %536 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %537 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %536, i32 0, i32 3
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = call i64 @NREV_GE(i32 %539, i32 5)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %641

542:                                              ; preds = %535
  %543 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %544 = load i32, i32* @RADIO_2056, align 4
  %545 = load i32, i32* @TX, align 4
  %546 = load i64, i64* %12, align 8
  %547 = load i32, i32* @PADG_IDAC, align 4
  %548 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %543, i32 %544, i32 %545, i64 %546, i32 %547, i32 204)
  %549 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %550 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %549, i32 0, i32 2
  %551 = load %struct.TYPE_4__*, %struct.TYPE_4__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 1
  %553 = load i64, i64* %552, align 8
  %554 = load i64, i64* @BCMA_CHIP_ID_BCM4716, align 8
  %555 = icmp eq i64 %553, %554
  br i1 %555, label %564, label %556

556:                                              ; preds = %542
  %557 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %558 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %557, i32 0, i32 2
  %559 = load %struct.TYPE_4__*, %struct.TYPE_4__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %559, i32 0, i32 1
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* @BCMA_CHIP_ID_BCM47162, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %556, %542
  store i32 64, i32* %10, align 4
  store i32 69, i32* %11, align 4
  store i32 5, i32* %6, align 4
  store i32 51, i32* %8, align 4
  store i32 119, i32* %7, align 4
  store i32 85, i32* %9, align 4
  br label %591

565:                                              ; preds = %556
  store i32 37, i32* %10, align 4
  store i32 32, i32* %11, align 4
  %566 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %567 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %566, i32 0, i32 2
  %568 = load %struct.TYPE_4__*, %struct.TYPE_4__** %567, align 8
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 1
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %581, label %573

573:                                              ; preds = %565
  %574 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %575 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %574, i32 0, i32 2
  %576 = load %struct.TYPE_4__*, %struct.TYPE_4__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %576, i32 0, i32 1
  %578 = load i64, i64* %577, align 8
  %579 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %580 = icmp eq i64 %578, %579
  br i1 %580, label %581, label %590

581:                                              ; preds = %573, %565
  %582 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %583 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %582, i32 0, i32 2
  %584 = load %struct.TYPE_4__*, %struct.TYPE_4__** %583, align 8
  %585 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %584, i32 0, i32 2
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @BCMA_PKG_ID_BCM43224_FAB_SMIC, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %590

589:                                              ; preds = %581
  store i32 42, i32* %10, align 4
  store i32 56, i32* %11, align 4
  br label %590

590:                                              ; preds = %589, %581, %573
  store i32 4, i32* %6, align 4
  store i32 3, i32* %8, align 4
  store i32 119, i32* %7, align 4
  store i32 101, i32* %9, align 4
  br label %591

591:                                              ; preds = %590, %564
  %592 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %593 = load i32, i32* @RADIO_2056, align 4
  %594 = load i32, i32* @TX, align 4
  %595 = load i64, i64* %12, align 8
  %596 = load i32, i32* @INTPAG_IMAIN_STAT, align 4
  %597 = load i32, i32* %10, align 4
  %598 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %592, i32 %593, i32 %594, i64 %595, i32 %596, i32 %597)
  %599 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %600 = load i32, i32* @RADIO_2056, align 4
  %601 = load i32, i32* @TX, align 4
  %602 = load i64, i64* %12, align 8
  %603 = load i32, i32* @INTPAG_IAUX_STAT, align 4
  %604 = load i32, i32* %10, align 4
  %605 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %599, i32 %600, i32 %601, i64 %602, i32 %603, i32 %604)
  %606 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %607 = load i32, i32* @RADIO_2056, align 4
  %608 = load i32, i32* @TX, align 4
  %609 = load i64, i64* %12, align 8
  %610 = load i32, i32* @INTPAG_CASCBIAS, align 4
  %611 = load i32, i32* %11, align 4
  %612 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %606, i32 %607, i32 %608, i64 %609, i32 %610, i32 %611)
  %613 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %614 = load i32, i32* @RADIO_2056, align 4
  %615 = load i32, i32* @TX, align 4
  %616 = load i64, i64* %12, align 8
  %617 = load i32, i32* @INTPAG_BOOST_TUNE, align 4
  %618 = load i32, i32* %6, align 4
  %619 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %613, i32 %614, i32 %615, i64 %616, i32 %617, i32 %618)
  %620 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %621 = load i32, i32* @RADIO_2056, align 4
  %622 = load i32, i32* @TX, align 4
  %623 = load i64, i64* %12, align 8
  %624 = load i32, i32* @PGAG_BOOST_TUNE, align 4
  %625 = load i32, i32* %8, align 4
  %626 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %620, i32 %621, i32 %622, i64 %623, i32 %624, i32 %625)
  %627 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %628 = load i32, i32* @RADIO_2056, align 4
  %629 = load i32, i32* @TX, align 4
  %630 = load i64, i64* %12, align 8
  %631 = load i32, i32* @PADG_BOOST_TUNE, align 4
  %632 = load i32, i32* %7, align 4
  %633 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %627, i32 %628, i32 %629, i64 %630, i32 %631, i32 %632)
  %634 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %635 = load i32, i32* @RADIO_2056, align 4
  %636 = load i32, i32* @TX, align 4
  %637 = load i64, i64* %12, align 8
  %638 = load i32, i32* @MIXG_BOOST_TUNE, align 4
  %639 = load i32, i32* %9, align 4
  %640 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %634, i32 %635, i32 %636, i64 %637, i32 %638, i32 %639)
  br label %669

641:                                              ; preds = %535
  %642 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %643 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = load i64, i64* @WL_CHANSPEC_BW_40, align 8
  %646 = icmp eq i64 %644, %645
  %647 = zext i1 %646 to i64
  %648 = select i1 %646, i32 64, i32 32
  store i32 %648, i32* %10, align 4
  %649 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %650 = load i32, i32* @RADIO_2056, align 4
  %651 = load i32, i32* @TX, align 4
  %652 = load i64, i64* %12, align 8
  %653 = load i32, i32* @INTPAG_IMAIN_STAT, align 4
  %654 = load i32, i32* %10, align 4
  %655 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %649, i32 %650, i32 %651, i64 %652, i32 %653, i32 %654)
  %656 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %657 = load i32, i32* @RADIO_2056, align 4
  %658 = load i32, i32* @TX, align 4
  %659 = load i64, i64* %12, align 8
  %660 = load i32, i32* @INTPAG_IAUX_STAT, align 4
  %661 = load i32, i32* %10, align 4
  %662 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %656, i32 %657, i32 %658, i64 %659, i32 %660, i32 %661)
  %663 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %664 = load i32, i32* @RADIO_2056, align 4
  %665 = load i32, i32* @TX, align 4
  %666 = load i64, i64* %12, align 8
  %667 = load i32, i32* @INTPAG_CASCBIAS, align 4
  %668 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %663, i32 %664, i32 %665, i64 %666, i32 %667, i32 48)
  br label %669

669:                                              ; preds = %641, %591
  %670 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %671 = load i32, i32* @RADIO_2056, align 4
  %672 = load i32, i32* @TX, align 4
  %673 = load i64, i64* %12, align 8
  %674 = load i32, i32* @PA_SPARE1, align 4
  %675 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %670, i32 %671, i32 %672, i64 %673, i32 %674, i32 238)
  br label %676

676:                                              ; preds = %669
  %677 = load i64, i64* %12, align 8
  %678 = add nsw i64 %677, 1
  store i64 %678, i64* %12, align 8
  br label %528

679:                                              ; preds = %528
  br label %680

680:                                              ; preds = %679, %521, %517
  %681 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %682 = call i64 @PHY_IPA(%struct.brcms_phy* %681)
  %683 = icmp ne i64 %682, 0
  br i1 %683, label %684, label %843

684:                                              ; preds = %680
  %685 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %686 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %685, i32 0, i32 3
  %687 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 8
  %689 = call i64 @NREV_IS(i32 %688, i32 6)
  %690 = icmp ne i64 %689, 0
  br i1 %690, label %691, label %843

691:                                              ; preds = %684
  %692 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %693 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %692, i32 0, i32 4
  %694 = load i32, i32* %693, align 8
  %695 = call i64 @CHSPEC_IS5G(i32 %694)
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %843

697:                                              ; preds = %691
  %698 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %699 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %698, i32 0, i32 4
  %700 = load i32, i32* %699, align 8
  %701 = call i32 @CHSPEC_CHANNEL(i32 %700)
  %702 = call i32 @CHAN5G_FREQ(i32 %701)
  store i32 %702, i32* %17, align 4
  %703 = load i32, i32* %17, align 4
  %704 = icmp slt i32 %703, 5150
  br i1 %704, label %705, label %706

705:                                              ; preds = %697
  store i32 10, i32* %13, align 4
  store i32 119, i32* %14, align 4
  store i32 15, i32* %15, align 4
  store i32 15, i32* %16, align 4
  br label %727

706:                                              ; preds = %697
  %707 = load i32, i32* %17, align 4
  %708 = icmp slt i32 %707, 5340
  br i1 %708, label %709, label %710

709:                                              ; preds = %706
  store i32 8, i32* %13, align 4
  store i32 119, i32* %14, align 4
  store i32 251, i32* %15, align 4
  store i32 15, i32* %16, align 4
  br label %726

710:                                              ; preds = %706
  %711 = load i32, i32* %17, align 4
  %712 = icmp slt i32 %711, 5650
  br i1 %712, label %713, label %714

713:                                              ; preds = %710
  store i32 0, i32* %13, align 4
  store i32 119, i32* %14, align 4
  store i32 11, i32* %15, align 4
  store i32 15, i32* %16, align 4
  br label %725

714:                                              ; preds = %710
  store i32 0, i32* %13, align 4
  store i32 119, i32* %14, align 4
  %715 = load i32, i32* %17, align 4
  %716 = icmp ne i32 %715, 5825
  br i1 %716, label %717, label %723

717:                                              ; preds = %714
  %718 = load i32, i32* %17, align 4
  %719 = sub nsw i32 %718, 18
  %720 = sub nsw i32 0, %719
  %721 = sdiv i32 %720, 36
  %722 = add nsw i32 %721, 168
  store i32 %722, i32* %15, align 4
  br label %724

723:                                              ; preds = %714
  store i32 6, i32* %15, align 4
  br label %724

724:                                              ; preds = %723, %717
  store i32 15, i32* %16, align 4
  br label %725

725:                                              ; preds = %724, %713
  br label %726

726:                                              ; preds = %725, %709
  br label %727

727:                                              ; preds = %726, %705
  store i64 0, i64* %20, align 8
  br label %728

728:                                              ; preds = %839, %727
  %729 = load i64, i64* %20, align 8
  %730 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %731 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %730, i32 0, i32 3
  %732 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %731, i32 0, i32 1
  %733 = load i64, i64* %732, align 8
  %734 = icmp slt i64 %729, %733
  br i1 %734, label %735, label %842

735:                                              ; preds = %728
  %736 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %737 = load i32, i32* @RADIO_2056, align 4
  %738 = load i32, i32* @TX, align 4
  %739 = load i64, i64* %20, align 8
  %740 = load i32, i32* @INTPAA_BOOST_TUNE, align 4
  %741 = load i32, i32* %13, align 4
  %742 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %736, i32 %737, i32 %738, i64 %739, i32 %740, i32 %741)
  %743 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %744 = load i32, i32* @RADIO_2056, align 4
  %745 = load i32, i32* @TX, align 4
  %746 = load i64, i64* %20, align 8
  %747 = load i32, i32* @PADA_BOOST_TUNE, align 4
  %748 = load i32, i32* %14, align 4
  %749 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %743, i32 %744, i32 %745, i64 %746, i32 %747, i32 %748)
  %750 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %751 = load i32, i32* @RADIO_2056, align 4
  %752 = load i32, i32* @TX, align 4
  %753 = load i64, i64* %20, align 8
  %754 = load i32, i32* @PGAA_BOOST_TUNE, align 4
  %755 = load i32, i32* %15, align 4
  %756 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %750, i32 %751, i32 %752, i64 %753, i32 %754, i32 %755)
  %757 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %758 = load i32, i32* @RADIO_2056, align 4
  %759 = load i32, i32* @TX, align 4
  %760 = load i64, i64* %20, align 8
  %761 = load i32, i32* @MIXA_BOOST_TUNE, align 4
  %762 = load i32, i32* %16, align 4
  %763 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %757, i32 %758, i32 %759, i64 %760, i32 %761, i32 %762)
  %764 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %765 = load i32, i32* @RADIO_2056, align 4
  %766 = load i32, i32* @TX, align 4
  %767 = load i64, i64* %20, align 8
  %768 = load i32, i32* @TXSPARE1, align 4
  %769 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %764, i32 %765, i32 %766, i64 %767, i32 %768, i32 48)
  %770 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %771 = load i32, i32* @RADIO_2056, align 4
  %772 = load i32, i32* @TX, align 4
  %773 = load i64, i64* %20, align 8
  %774 = load i32, i32* @PA_SPARE2, align 4
  %775 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %770, i32 %771, i32 %772, i64 %773, i32 %774, i32 238)
  %776 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %777 = load i32, i32* @RADIO_2056, align 4
  %778 = load i32, i32* @TX, align 4
  %779 = load i64, i64* %20, align 8
  %780 = load i32, i32* @PADA_CASCBIAS, align 4
  %781 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %776, i32 %777, i32 %778, i64 %779, i32 %780, i32 3)
  store i32 48, i32* %19, align 4
  %782 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %783 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %782, i32 0, i32 2
  %784 = load %struct.TYPE_4__*, %struct.TYPE_4__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %784, i32 0, i32 1
  %786 = load i64, i64* %785, align 8
  %787 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %788 = icmp eq i64 %786, %787
  br i1 %788, label %797, label %789

789:                                              ; preds = %735
  %790 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %791 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %790, i32 0, i32 2
  %792 = load %struct.TYPE_4__*, %struct.TYPE_4__** %791, align 8
  %793 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %792, i32 0, i32 1
  %794 = load i64, i64* %793, align 8
  %795 = load i64, i64* @BCMA_CHIP_ID_BCM43225, align 8
  %796 = icmp eq i64 %794, %795
  br i1 %796, label %797, label %806

797:                                              ; preds = %789, %735
  %798 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %799 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %798, i32 0, i32 2
  %800 = load %struct.TYPE_4__*, %struct.TYPE_4__** %799, align 8
  %801 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %800, i32 0, i32 2
  %802 = load i64, i64* %801, align 8
  %803 = load i64, i64* @BCMA_PKG_ID_BCM43224_FAB_SMIC, align 8
  %804 = icmp eq i64 %802, %803
  br i1 %804, label %805, label %806

805:                                              ; preds = %797
  store i32 53, i32* %19, align 4
  br label %806

806:                                              ; preds = %805, %797, %789
  %807 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %808 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %807, i32 0, i32 1
  %809 = load i32, i32* %808, align 8
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %812

811:                                              ; preds = %806
  br label %816

812:                                              ; preds = %806
  %813 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %814 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %813, i32 0, i32 1
  %815 = load i32, i32* %814, align 8
  br label %816

816:                                              ; preds = %812, %811
  %817 = phi i32 [ 48, %811 ], [ %815, %812 ]
  store i32 %817, i32* %18, align 4
  %818 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %819 = load i32, i32* @RADIO_2056, align 4
  %820 = load i32, i32* @TX, align 4
  %821 = load i64, i64* %20, align 8
  %822 = load i32, i32* @INTPAA_IAUX_STAT, align 4
  %823 = load i32, i32* %18, align 4
  %824 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %818, i32 %819, i32 %820, i64 %821, i32 %822, i32 %823)
  %825 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %826 = load i32, i32* @RADIO_2056, align 4
  %827 = load i32, i32* @TX, align 4
  %828 = load i64, i64* %20, align 8
  %829 = load i32, i32* @INTPAA_IMAIN_STAT, align 4
  %830 = load i32, i32* %18, align 4
  %831 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %825, i32 %826, i32 %827, i64 %828, i32 %829, i32 %830)
  %832 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %833 = load i32, i32* @RADIO_2056, align 4
  %834 = load i32, i32* @TX, align 4
  %835 = load i64, i64* %20, align 8
  %836 = load i32, i32* @INTPAA_CASCBIAS, align 4
  %837 = load i32, i32* %19, align 4
  %838 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %832, i32 %833, i32 %834, i64 %835, i32 %836, i32 %837)
  br label %839

839:                                              ; preds = %816
  %840 = load i64, i64* %20, align 8
  %841 = add nsw i64 %840, 1
  store i64 %841, i64* %20, align 8
  br label %728

842:                                              ; preds = %728
  br label %843

843:                                              ; preds = %842, %691, %684, %680
  %844 = call i32 @udelay(i32 50)
  %845 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %846 = call i32 @wlc_phy_radio205x_vcocal_nphy(%struct.brcms_phy* %845)
  ret void
}

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG2(%struct.brcms_phy*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @CHAN5G_FREQ(i32) #1

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_radio205x_vcocal_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
