; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_phy_initn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_phy_initn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_11__*, %struct.b43_phy }
%struct.TYPE_11__ = type { i32, i64, i64, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.ssb_sprom* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.ssb_sprom = type { i32, i32 }
%struct.b43_phy = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i32, i32, i32*, i32, i32, i64, i32, i32, i32, %struct.TYPE_16__*, i32*, i64, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.nphy_txgains = type { i32 }

@B43_BFL_EXTLNA = common dso_local global i32 0, align 4
@IEEE80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S0 = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B32S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC3 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC4 = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_CAOVER = common dso_local global i32 0, align 4
@B43_NPHY_RFSEQMODE_TROVER = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER1 = common dso_local global i32 0, align 4
@B43_NPHY_AFECTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3 = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE = common dso_local global i32 0, align 4
@B43_NPHY_BPHY_CTL3_SCALE_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_AFESEQ_TX2RX_PUD_20M = common dso_local global i32 0, align 4
@B43_NPHY_AFESEQ_TX2RX_PUD_40M = common dso_local global i32 0, align 4
@B43_BFL2_SKWRKFEM_BRD = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@BCMA_BOARD_TYPE_BCM943224M93 = common dso_local global i64 0, align 8
@B43_NPHY_TXREALFD = common dso_local global i32 0, align 4
@B43_NPHY_MIMO_CRSTXEXT = common dso_local global i32 0, align 4
@B43_NPHY_PLOAD_CSENSE_EXTLEN = common dso_local global i32 0, align 4
@B43_NPHY_TXRIFS_FRDEL = common dso_local global i32 0, align 4
@B43_NPHY_DUP40_GFBL = common dso_local global i32 0, align 4
@B43_NPHY_DUP40_BL = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN0 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_TABLE_ADJ0 = common dso_local global i32 0, align 4
@B43_NPHY_PAPD_EN1 = common dso_local global i32 0, align 4
@B43_NPHY_EPS_TABLE_ADJ1 = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTCCA = common dso_local global i32 0, align 4
@B43_RFSEQ_RX2TX = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_TXMACIF_HOLDOFF = common dso_local global i32 0, align 4
@B43_NPHY_TXMACDELAY = common dso_local global i32 0, align 4
@BCMA_CC_CHIPCTL = common dso_local global i32 0, align 4
@SSB_CHIPCO_CHIPCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_initn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_initn(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nphy_txgains, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nphy_txgains, align 4
  %14 = alloca %struct.nphy_txgains, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  %19 = load %struct.ssb_sprom*, %struct.ssb_sprom** %18, align 8
  store %struct.ssb_sprom* %19, %struct.ssb_sprom** %3, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 2
  store %struct.b43_phy* %21, %struct.b43_phy** %4, align 8
  %22 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 1
  %24 = load %struct.b43_phy_n*, %struct.b43_phy_n** %23, align 8
  store %struct.b43_phy_n* %24, %struct.b43_phy_n** %5, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %51

30:                                               ; preds = %1
  %31 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %32 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @B43_BFL_EXTLNA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @b43_current_band(i32 %40)
  %42 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %50 [
  ]

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %37, %30, %1
  %52 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %53 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %52, i32 0, i32 17
  store i64 0, i64* %53, align 8
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %55 = call i32 @b43_nphy_tables_init(%struct.b43_wldev* %54)
  %56 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %57 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %59 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %61 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sge i32 %63, 3
  br i1 %64, label %65, label %78

65:                                               ; preds = %51
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %68 = call i32 @b43_phy_write(%struct.b43_wldev* %66, i32 %67, i32 0)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %71 = call i32 @b43_phy_write(%struct.b43_wldev* %69, i32 %70, i32 0)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = load i32, i32* @B43_NPHY_TXF_40CO_B1S0, align 4
  %74 = call i32 @b43_phy_write(%struct.b43_wldev* %72, i32 %73, i32 0)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i32, i32* @B43_NPHY_TXF_40CO_B32S1, align 4
  %77 = call i32 @b43_phy_write(%struct.b43_wldev* %75, i32 %76, i32 0)
  br label %82

78:                                               ; preds = %51
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %81 = call i32 @b43_phy_write(%struct.b43_wldev* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %78, %65
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %85 = call i32 @b43_phy_write(%struct.b43_wldev* %83, i32 %84, i32 0)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %87 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %88 = call i32 @b43_phy_write(%struct.b43_wldev* %86, i32 %87, i32 0)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %92, 6
  br i1 %93, label %94, label %101

94:                                               ; preds = %82
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = load i32, i32* @B43_NPHY_RFCTL_INTC3, align 4
  %97 = call i32 @b43_phy_write(%struct.b43_wldev* %95, i32 %96, i32 0)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = load i32, i32* @B43_NPHY_RFCTL_INTC4, align 4
  %100 = call i32 @b43_phy_write(%struct.b43_wldev* %98, i32 %99, i32 0)
  br label %101

101:                                              ; preds = %94, %82
  %102 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %103 = load i32, i32* @B43_NPHY_RFSEQMODE, align 4
  %104 = load i32, i32* @B43_NPHY_RFSEQMODE_CAOVER, align 4
  %105 = load i32, i32* @B43_NPHY_RFSEQMODE_TROVER, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = call i32 @b43_phy_mask(%struct.b43_wldev* %102, i32 %103, i32 %107)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %110 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 3
  br i1 %113, label %114, label %118

114:                                              ; preds = %101
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %116 = load i32, i32* @B43_NPHY_AFECTL_OVER1, align 4
  %117 = call i32 @b43_phy_write(%struct.b43_wldev* %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %114, %101
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %120 = load i32, i32* @B43_NPHY_AFECTL_OVER, align 4
  %121 = call i32 @b43_phy_write(%struct.b43_wldev* %119, i32 %120, i32 0)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sle i32 %125, 2
  br i1 %126, label %127, label %143

127:                                              ; preds = %118
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 59, i32 64
  store i32 %134, i32* %8, align 4
  %135 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %136 = load i32, i32* @B43_NPHY_BPHY_CTL3, align 4
  %137 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @B43_NPHY_BPHY_CTL3_SCALE_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = call i32 @b43_phy_maskset(%struct.b43_wldev* %135, i32 %136, i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %127, %118
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %145 = load i32, i32* @B43_NPHY_AFESEQ_TX2RX_PUD_20M, align 4
  %146 = call i32 @b43_phy_write(%struct.b43_wldev* %144, i32 %145, i32 32)
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = load i32, i32* @B43_NPHY_AFESEQ_TX2RX_PUD_40M, align 4
  %149 = call i32 @b43_phy_write(%struct.b43_wldev* %147, i32 %148, i32 32)
  %150 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %151 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @B43_BFL2_SKWRKFEM_BRD, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %143
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %158 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %157, i32 0, i32 1
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %166 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @BCMA_BOARD_TYPE_BCM943224M93, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %164, %143
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %174 = load i32, i32* @B43_NPHY_TXREALFD, align 4
  %175 = call i32 @b43_phy_write(%struct.b43_wldev* %173, i32 %174, i32 160)
  br label %180

176:                                              ; preds = %164, %156
  %177 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %178 = load i32, i32* @B43_NPHY_TXREALFD, align 4
  %179 = call i32 @b43_phy_write(%struct.b43_wldev* %177, i32 %178, i32 184)
  br label %180

180:                                              ; preds = %176, %172
  %181 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %182 = load i32, i32* @B43_NPHY_MIMO_CRSTXEXT, align 4
  %183 = call i32 @b43_phy_write(%struct.b43_wldev* %181, i32 %182, i32 200)
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = load i32, i32* @B43_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %186 = call i32 @b43_phy_write(%struct.b43_wldev* %184, i32 %185, i32 80)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %188 = load i32, i32* @B43_NPHY_TXRIFS_FRDEL, align 4
  %189 = call i32 @b43_phy_write(%struct.b43_wldev* %187, i32 %188, i32 48)
  %190 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %191 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %192 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %191, i32 0, i32 16
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @b43_nphy_update_mimo_config(%struct.b43_wldev* %190, i32 %193)
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %196 = call i32 @b43_nphy_update_txrx_chain(%struct.b43_wldev* %195)
  %197 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %198 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %199, 2
  br i1 %200, label %201, label %208

201:                                              ; preds = %180
  %202 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %203 = load i32, i32* @B43_NPHY_DUP40_GFBL, align 4
  %204 = call i32 @b43_phy_write(%struct.b43_wldev* %202, i32 %203, i32 2728)
  %205 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %206 = load i32, i32* @B43_NPHY_DUP40_BL, align 4
  %207 = call i32 @b43_phy_write(%struct.b43_wldev* %205, i32 %206, i32 2468)
  br label %208

208:                                              ; preds = %201, %180
  %209 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %210 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @b43_current_band(i32 %211)
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %9, align 4
  %214 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %215 = call i64 @b43_nphy_ipa(%struct.b43_wldev* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %208
  %218 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %219 = load i32, i32* @B43_NPHY_PAPD_EN0, align 4
  %220 = call i32 @b43_phy_set(%struct.b43_wldev* %218, i32 %219, i32 1)
  %221 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %222 = load i32, i32* @B43_NPHY_EPS_TABLE_ADJ0, align 4
  %223 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %224 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = shl i32 %227, 7
  %229 = call i32 @b43_phy_maskset(%struct.b43_wldev* %221, i32 %222, i32 127, i32 %228)
  %230 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %231 = load i32, i32* @B43_NPHY_PAPD_EN1, align 4
  %232 = call i32 @b43_phy_set(%struct.b43_wldev* %230, i32 %231, i32 1)
  %233 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %234 = load i32, i32* @B43_NPHY_EPS_TABLE_ADJ1, align 4
  %235 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %236 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 7
  %241 = call i32 @b43_phy_maskset(%struct.b43_wldev* %233, i32 %234, i32 127, i32 %240)
  %242 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %243 = call i32 @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev* %242)
  br label %253

244:                                              ; preds = %208
  %245 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %246 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp sge i32 %247, 5
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %251 = call i32 @b43_nphy_ext_pa_set_tx_dig_filters(%struct.b43_wldev* %250)
  br label %252

252:                                              ; preds = %249, %244
  br label %253

253:                                              ; preds = %252, %217
  %254 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %255 = call i32 @b43_nphy_workarounds(%struct.b43_wldev* %254)
  %256 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %257 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %256, i32 1)
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %259 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %260 = call i32 @b43_phy_read(%struct.b43_wldev* %258, i32 %259)
  store i32 %260, i32* %8, align 4
  %261 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %262 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @B43_NPHY_BBCFG_RSTCCA, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @b43_phy_write(%struct.b43_wldev* %261, i32 %262, i32 %265)
  %267 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %268 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @B43_NPHY_BBCFG_RSTCCA, align 4
  %271 = xor i32 %270, -1
  %272 = and i32 %269, %271
  %273 = call i32 @b43_phy_write(%struct.b43_wldev* %267, i32 %268, i32 %272)
  %274 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %275 = call i32 @b43_phy_force_clock(%struct.b43_wldev* %274, i32 0)
  %276 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %277 = call i32 @b43_mac_phy_clock_set(%struct.b43_wldev* %276, i32 1)
  %278 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %279 = call i32 @b43_nphy_pa_override(%struct.b43_wldev* %278, i32 0)
  %280 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %281 = load i32, i32* @B43_RFSEQ_RX2TX, align 4
  %282 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %280, i32 %281)
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %284 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %285 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %283, i32 %284)
  %286 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %287 = call i32 @b43_nphy_pa_override(%struct.b43_wldev* %286, i32 1)
  %288 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %289 = call i32 @b43_nphy_classifier(%struct.b43_wldev* %288, i32 0, i32 0)
  %290 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %292 = call i32 @b43_nphy_read_clip_detection(%struct.b43_wldev* %290, i32* %291)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %294 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i64 @b43_current_band(i32 %295)
  %297 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %253
  %300 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %301 = call i32 @b43_nphy_bphy_init(%struct.b43_wldev* %300)
  br label %302

302:                                              ; preds = %299, %253
  %303 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %304 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %6, align 4
  %306 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %307 = call i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %306, i32 0)
  %308 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %309 = call i32 @b43_nphy_tx_power_fix(%struct.b43_wldev* %308)
  %310 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %311 = call i32 @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev* %310)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %313 = call i32 @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev* %312)
  %314 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %315 = call i32 @b43_nphy_tx_gain_table_upload(%struct.b43_wldev* %314)
  %316 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %317 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 3
  br i1 %319, label %320, label %326

320:                                              ; preds = %302
  %321 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %322 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %323 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @b43_nphy_set_rx_core_state(%struct.b43_wldev* %321, i32 %324)
  br label %326

326:                                              ; preds = %320, %302
  %327 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %328 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = icmp sgt i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  br label %332

332:                                              ; preds = %331, %326
  store i32 0, i32* %10, align 4
  %333 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %334 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp sge i32 %335, 3
  br i1 %336, label %337, label %370

337:                                              ; preds = %332
  %338 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %339 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i64 @b43_current_band(i32 %340)
  %342 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %337
  %345 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %346 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %345, i32 0, i32 15
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  store i32 %351, i32* %10, align 4
  br label %360

352:                                              ; preds = %337
  %353 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %354 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %353, i32 0, i32 14
  %355 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  %358 = xor i1 %357, true
  %359 = zext i1 %358 to i32
  store i32 %359, i32* %10, align 4
  br label %360

360:                                              ; preds = %352, %344
  %361 = load i32, i32* %10, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %365 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %364)
  br label %369

366:                                              ; preds = %360
  %367 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %368 = call i32 @b43_nphy_restore_rssi_cal(%struct.b43_wldev* %367)
  br label %369

369:                                              ; preds = %366, %363
  br label %373

370:                                              ; preds = %332
  %371 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %372 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %371)
  br label %373

373:                                              ; preds = %370, %369
  %374 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %375 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, 6
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %491, label %379

379:                                              ; preds = %373
  %380 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %381 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i64 @b43_current_band(i32 %382)
  %384 = load i64, i64* @IEEE80211_BAND_2GHZ, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %394

386:                                              ; preds = %379
  %387 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %388 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %387, i32 0, i32 13
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = icmp ne i32 %390, 0
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  store i32 %393, i32* %12, align 4
  br label %402

394:                                              ; preds = %379
  %395 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %396 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %395, i32 0, i32 12
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  %400 = xor i1 %399, true
  %401 = zext i1 %400 to i32
  store i32 %401, i32* %12, align 4
  br label %402

402:                                              ; preds = %394, %386
  %403 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %404 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %403, i32 0, i32 11
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %402
  store i32 0, i32* %12, align 4
  br label %408

408:                                              ; preds = %407, %402
  %409 = load i32, i32* %12, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %487

411:                                              ; preds = %408
  %412 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %413 = call i32 @b43_nphy_get_tx_gains(%struct.b43_wldev* %412)
  %414 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %13, i32 0, i32 0
  store i32 %413, i32* %414, align 4
  %415 = bitcast %struct.nphy_txgains* %7 to i8*
  %416 = bitcast %struct.nphy_txgains* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %415, i8* align 4 %416, i64 4, i1 false)
  %417 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %418 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 2
  br i1 %420, label %421, label %424

421:                                              ; preds = %411
  %422 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %423 = call i32 @b43_nphy_superswitch_init(%struct.b43_wldev* %422, i32 1)
  br label %424

424:                                              ; preds = %421, %411
  %425 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %426 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %425, i32 0, i32 8
  %427 = load i32, i32* %426, align 8
  %428 = icmp ne i32 %427, 2
  br i1 %428, label %429, label %479

429:                                              ; preds = %424
  %430 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %431 = call i32 @b43_nphy_rssi_cal(%struct.b43_wldev* %430)
  %432 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %433 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp sge i32 %434, 3
  br i1 %435, label %436, label %462

436:                                              ; preds = %429
  %437 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %438 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %437, i32 0, i32 9
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i64 0
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %444 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %443, i32 0, i32 10
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  store i32 %442, i32* %446, align 4
  %447 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %448 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %447, i32 0, i32 9
  %449 = load %struct.TYPE_16__*, %struct.TYPE_16__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %449, i64 1
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %454 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %453, i32 0, i32 10
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 1
  store i32 %452, i32* %456, align 4
  %457 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %458 = call i32 @b43_nphy_get_tx_gains(%struct.b43_wldev* %457)
  %459 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %14, i32 0, i32 0
  store i32 %458, i32* %459, align 4
  %460 = bitcast %struct.nphy_txgains* %7 to i8*
  %461 = bitcast %struct.nphy_txgains* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %460, i8* align 4 %461, i64 4, i1 false)
  br label %462

462:                                              ; preds = %436, %429
  %463 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %464 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %7, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev* %463, i32 %465, i32 1, i32 0)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %478, label %468

468:                                              ; preds = %462
  %469 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %470 = getelementptr inbounds %struct.nphy_txgains, %struct.nphy_txgains* %7, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = call i64 @b43_nphy_cal_rx_iq(%struct.b43_wldev* %469, i32 %471, i32 2, i32 0)
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %468
  %475 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %476 = call i32 @b43_nphy_save_cal(%struct.b43_wldev* %475)
  br label %477

477:                                              ; preds = %474, %468
  br label %478

478:                                              ; preds = %477, %462
  br label %486

479:                                              ; preds = %424
  %480 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %481 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %479
  br label %485

485:                                              ; preds = %484, %479
  br label %486

486:                                              ; preds = %485, %478
  br label %490

487:                                              ; preds = %408
  %488 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %489 = call i32 @b43_nphy_restore_cal(%struct.b43_wldev* %488)
  br label %490

490:                                              ; preds = %487, %486
  br label %491

491:                                              ; preds = %490, %373
  %492 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %493 = call i32 @b43_nphy_tx_pwr_ctrl_coef_setup(%struct.b43_wldev* %492)
  %494 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %495 = load i32, i32* %6, align 4
  %496 = call i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev* %494, i32 %495)
  %497 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %498 = load i32, i32* @B43_NPHY_TXMACIF_HOLDOFF, align 4
  %499 = call i32 @b43_phy_write(%struct.b43_wldev* %497, i32 %498, i32 21)
  %500 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %501 = load i32, i32* @B43_NPHY_TXMACDELAY, align 4
  %502 = call i32 @b43_phy_write(%struct.b43_wldev* %500, i32 %501, i32 800)
  %503 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %504 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp sge i32 %505, 3
  br i1 %506, label %507, label %516

507:                                              ; preds = %491
  %508 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %509 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = icmp sle i32 %510, 6
  br i1 %511, label %512, label %516

512:                                              ; preds = %507
  %513 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %514 = load i32, i32* @B43_NPHY_PLOAD_CSENSE_EXTLEN, align 4
  %515 = call i32 @b43_phy_write(%struct.b43_wldev* %513, i32 %514, i32 20)
  br label %516

516:                                              ; preds = %512, %507, %491
  %517 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %518 = call i32 @b43_nphy_tx_lp_fbw(%struct.b43_wldev* %517)
  %519 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %520 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp sge i32 %521, 3
  br i1 %522, label %523, label %526

523:                                              ; preds = %516
  %524 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %525 = call i32 @b43_nphy_spur_workaround(%struct.b43_wldev* %524)
  br label %526

526:                                              ; preds = %523, %516
  ret i32 0
}

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_nphy_tables_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_update_mimo_config(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_update_txrx_chain(%struct.b43_wldev*) #1

declare dso_local i64 @b43_nphy_ipa(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_int_pa_set_tx_dig_filters(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_ext_pa_set_tx_dig_filters(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_workarounds(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_force_clock(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_mac_phy_clock_set(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_pa_override(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_classifier(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_read_clip_detection(%struct.b43_wldev*, i32*) #1

declare dso_local i32 @b43_nphy_bphy_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctrl(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_tx_power_fix(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctl_idle_tssi(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_power_ctl_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_gain_table_upload(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_set_rx_core_state(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_rssi_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_restore_rssi_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_get_tx_gains(%struct.b43_wldev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @b43_nphy_superswitch_init(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_nphy_cal_tx_iq_lo(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @b43_nphy_cal_rx_iq(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_nphy_save_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_restore_cal(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_pwr_ctrl_coef_setup(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_tx_lp_fbw(%struct.b43_wldev*) #1

declare dso_local i32 @b43_nphy_spur_workaround(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
