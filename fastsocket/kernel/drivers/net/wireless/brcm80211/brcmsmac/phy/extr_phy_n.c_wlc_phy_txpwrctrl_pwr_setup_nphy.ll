; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_pwr_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_txpwrctrl_pwr_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32*, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCTL_PHYLOCK = common dso_local global i32 0, align 4
@maccontrol = common dso_local global i32 0, align 4
@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX_TX_SSI_MUX = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4
@NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7 = common dso_local global i32 0, align 4
@NPHY_TxPwrCtrlCmd_pwrIndex_init = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_txpwrctrl_pwr_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_txpwrctrl_pwr_setup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [64 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @D11REV_IS(i32 %22, i32 11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @D11REV_IS(i32 %30, i32 12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %25, %1
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MCTL_PHYLOCK, align 4
  %40 = load i32, i32* @MCTL_PHYLOCK, align 4
  %41 = call i32 @wlapi_bmac_mctrl(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @maccontrol, align 4
  %46 = call i32 @D11REGOFFS(i32 %45)
  %47 = call i32 @bcma_read32(i32 %44, i32 %46)
  %48 = call i32 @udelay(i32 1)
  br label %49

49:                                               ; preds = %33, %25
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %55, i32 1)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %59 = call i32 @or_phy_reg(%struct.brcms_phy* %58, i32 290, i32 1)
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @NREV_GE(i32 %63, i32 3)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %68 = call i32 @and_phy_reg(%struct.brcms_phy* %67, i32 487, i32 -32769)
  br label %72

69:                                               ; preds = %57
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %71 = call i32 @or_phy_reg(%struct.brcms_phy* %70, i32 487, i32 32768)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 3
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @D11REV_IS(i32 %77, i32 11)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %82 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %81, i32 0, i32 3
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @D11REV_IS(i32 %85, i32 12)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %80, %72
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %90 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %89, i32 0, i32 3
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MCTL_PHYLOCK, align 4
  %95 = call i32 @wlapi_bmac_mctrl(i32 %93, i32 %94, i32 0)
  br label %96

96:                                               ; preds = %88, %80
  %97 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %98 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %124

103:                                              ; preds = %96
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %104, i32 0, i32 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %109, i32* %110, align 4
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -424, i32* %118, align 4
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -424, i32* %119, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 5612, i32* %120, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 5612, i32* %121, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -1393, i32* %122, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1393, i32* %123, align 4
  br label %378

124:                                              ; preds = %96
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = call i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy* %125, i32 0)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  switch i32 %127, label %356 [
    i32 131, label %128
    i32 129, label %185
    i32 128, label %242
    i32 130, label %299
  ]

128:                                              ; preds = %124
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %130 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %129, i32 0, i32 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %134, i32* %135, align 4
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %136, i32 0, i32 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %141, i32* %142, align 4
  %143 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %144 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %143, i32 0, i32 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %148, i32* %149, align 4
  %150 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %151 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %150, i32 0, i32 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %155, i32* %156, align 4
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %162, i32* %163, align 4
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %165 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %164, i32 0, i32 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %169, i32* %170, align 4
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %172 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %171, i32 0, i32 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %176, i32* %177, align 4
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %178, i32 0, i32 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %183, i32* %184, align 4
  br label %377

185:                                              ; preds = %124
  %186 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %187 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %186, i32 0, i32 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %191, i32* %192, align 4
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %193, i32 0, i32 8
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %198, i32* %199, align 4
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 8
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %205, i32* %206, align 4
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %208 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %207, i32 0, i32 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %212, i32* %213, align 4
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %215 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %214, i32 0, i32 8
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 0
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %219, i32* %220, align 4
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 8
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 1
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %226, i32* %227, align 4
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %229 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %228, i32 0, i32 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %233, i32* %234, align 4
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %235, i32 0, i32 8
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i64 1
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %240, i32* %241, align 4
  br label %377

242:                                              ; preds = %124
  %243 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %244 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %243, i32 0, i32 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i64 0
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %248, i32* %249, align 4
  %250 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %251 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %250, i32 0, i32 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 1
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %255, i32* %256, align 4
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %258 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %257, i32 0, i32 8
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %262, i32* %263, align 4
  %264 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %265 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %264, i32 0, i32 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 1
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %269, i32* %270, align 4
  %271 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %272 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %271, i32 0, i32 8
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i64 0
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %276, i32* %277, align 4
  %278 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %279 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %278, i32 0, i32 8
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i64 1
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %283, i32* %284, align 4
  %285 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %286 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %285, i32 0, i32 8
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 10
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %290, i32* %291, align 4
  %292 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %293 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %292, i32 0, i32 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 1
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %297, i32* %298, align 4
  br label %377

299:                                              ; preds = %124
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %301 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %300, i32 0, i32 8
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i64 0
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %305, i32* %306, align 4
  %307 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %308 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %307, i32 0, i32 8
  %309 = load %struct.TYPE_5__*, %struct.TYPE_5__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %309, i64 1
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %312, i32* %313, align 4
  %314 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %315 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %314, i32 0, i32 8
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 11
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %319, i32* %320, align 4
  %321 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %322 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %321, i32 0, i32 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 1
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %326, i32* %327, align 4
  %328 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %329 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %328, i32 0, i32 8
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 12
  %333 = load i32, i32* %332, align 4
  %334 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %333, i32* %334, align 4
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %336 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %335, i32 0, i32 8
  %337 = load %struct.TYPE_5__*, %struct.TYPE_5__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %337, i64 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 12
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %340, i32* %341, align 4
  %342 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %343 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %342, i32 0, i32 8
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 13
  %347 = load i32, i32* %346, align 4
  %348 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %347, i32* %348, align 4
  %349 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %350 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %349, i32 0, i32 8
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i64 1
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 13
  %354 = load i32, i32* %353, align 4
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %354, i32* %355, align 4
  br label %377

356:                                              ; preds = %124
  %357 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %358 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %357, i32 0, i32 8
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i64 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %362, i32* %363, align 4
  %364 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %365 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %364, i32 0, i32 8
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i64 1
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %369, i32* %370, align 4
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 -424, i32* %371, align 4
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 -424, i32* %372, align 4
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 5612, i32* %373, align 4
  %374 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 5612, i32* %374, align 4
  %375 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 -1393, i32* %375, align 4
  %376 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 -1393, i32* %376, align 4
  br label %377

377:                                              ; preds = %356, %299, %242, %185, %128
  br label %378

378:                                              ; preds = %377, %103
  %379 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %380 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %379, i32 0, i32 7
  %381 = load i64, i64* %380, align 8
  %382 = trunc i64 %381 to i32
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %382, i32* %383, align 4
  %384 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %385 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %384, i32 0, i32 7
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %387, i32* %388, align 4
  %389 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %390 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call i64 @NREV_GE(i32 %392, i32 3)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %487

395:                                              ; preds = %378
  %396 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %397 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %396, i32 0, i32 6
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %395
  %402 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %403 = call i32 @or_phy_reg(%struct.brcms_phy* %402, i32 489, i32 16384)
  br label %404

404:                                              ; preds = %401, %395
  %405 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %406 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i64 @NREV_GE(i32 %408, i32 7)
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %445

411:                                              ; preds = %404
  store i32 0, i32* %17, align 4
  br label %412

412:                                              ; preds = %441, %411
  %413 = load i32, i32* %17, align 4
  %414 = icmp sle i32 %413, 1
  br i1 %414, label %415, label %444

415:                                              ; preds = %412
  %416 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %417 = call i64 @PHY_IPA(%struct.brcms_phy* %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %440

419:                                              ; preds = %415
  %420 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %421 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = call i64 @CHSPEC_IS2G(i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %432

425:                                              ; preds = %419
  %426 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %427 = load i32, i32* @RADIO_2057, align 4
  %428 = load i32, i32* @TX, align 4
  %429 = load i32, i32* %17, align 4
  %430 = load i32, i32* @TX_SSI_MUX, align 4
  %431 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %426, i32 %427, i32 %428, i32 %429, i32 %430, i32 14)
  br label %439

432:                                              ; preds = %419
  %433 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %434 = load i32, i32* @RADIO_2057, align 4
  %435 = load i32, i32* @TX, align 4
  %436 = load i32, i32* %17, align 4
  %437 = load i32, i32* @TX_SSI_MUX, align 4
  %438 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 12)
  br label %439

439:                                              ; preds = %432, %425
  br label %440

440:                                              ; preds = %439, %415
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %17, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %17, align 4
  br label %412

444:                                              ; preds = %412
  br label %486

445:                                              ; preds = %404
  %446 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %447 = call i64 @PHY_IPA(%struct.brcms_phy* %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %474

449:                                              ; preds = %445
  %450 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %451 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %452 = load i32, i32* @RADIO_2056_TX0, align 4
  %453 = or i32 %451, %452
  %454 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %455 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 4
  %457 = call i64 @CHSPEC_IS5G(i32 %456)
  %458 = icmp ne i64 %457, 0
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i32 12, i32 14
  %461 = call i32 @write_radio_reg(%struct.brcms_phy* %450, i32 %453, i32 %460)
  %462 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %463 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %464 = load i32, i32* @RADIO_2056_TX1, align 4
  %465 = or i32 %463, %464
  %466 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %467 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 4
  %469 = call i64 @CHSPEC_IS5G(i32 %468)
  %470 = icmp ne i64 %469, 0
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i32 12, i32 14
  %473 = call i32 @write_radio_reg(%struct.brcms_phy* %462, i32 %465, i32 %472)
  br label %485

474:                                              ; preds = %445
  %475 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %476 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %477 = load i32, i32* @RADIO_2056_TX0, align 4
  %478 = or i32 %476, %477
  %479 = call i32 @write_radio_reg(%struct.brcms_phy* %475, i32 %478, i32 17)
  %480 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %481 = load i32, i32* @RADIO_2056_TX_TX_SSI_MUX, align 4
  %482 = load i32, i32* @RADIO_2056_TX1, align 4
  %483 = or i32 %481, %482
  %484 = call i32 @write_radio_reg(%struct.brcms_phy* %480, i32 %483, i32 17)
  br label %485

485:                                              ; preds = %474, %449
  br label %486

486:                                              ; preds = %485, %444
  br label %487

487:                                              ; preds = %486, %378
  %488 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %489 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %488, i32 0, i32 3
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 4
  %493 = call i64 @D11REV_IS(i32 %492, i32 11)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %503, label %495

495:                                              ; preds = %487
  %496 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %497 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %496, i32 0, i32 3
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %497, align 8
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = call i64 @D11REV_IS(i32 %500, i32 12)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %519

503:                                              ; preds = %495, %487
  %504 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %505 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %504, i32 0, i32 3
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @MCTL_PHYLOCK, align 4
  %510 = load i32, i32* @MCTL_PHYLOCK, align 4
  %511 = call i32 @wlapi_bmac_mctrl(i32 %508, i32 %509, i32 %510)
  %512 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %513 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* @maccontrol, align 4
  %516 = call i32 @D11REGOFFS(i32 %515)
  %517 = call i32 @bcma_read32(i32 %514, i32 %516)
  %518 = call i32 @udelay(i32 1)
  br label %519

519:                                              ; preds = %503, %495
  %520 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %521 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = call i64 @NREV_GE(i32 %523, i32 7)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %519
  %527 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %528 = load i32, i32* @NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7, align 4
  %529 = shl i32 %528, 0
  %530 = call i32 @mod_phy_reg(%struct.brcms_phy* %527, i32 487, i32 127, i32 %529)
  br label %536

531:                                              ; preds = %519
  %532 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %533 = load i32, i32* @NPHY_TxPwrCtrlCmd_pwrIndex_init, align 4
  %534 = shl i32 %533, 0
  %535 = call i32 @mod_phy_reg(%struct.brcms_phy* %532, i32 487, i32 127, i32 %534)
  br label %536

536:                                              ; preds = %531, %526
  %537 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %538 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = call i64 @NREV_GE(i32 %540, i32 7)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %548

543:                                              ; preds = %536
  %544 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %545 = load i32, i32* @NPHY_TxPwrCtrlCmd_pwrIndex_init_rev7, align 4
  %546 = shl i32 %545, 0
  %547 = call i32 @mod_phy_reg(%struct.brcms_phy* %544, i32 546, i32 255, i32 %546)
  br label %561

548:                                              ; preds = %536
  %549 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %550 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %549, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = call i64 @NREV_GT(i32 %552, i32 1)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %560

555:                                              ; preds = %548
  %556 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %557 = load i32, i32* @NPHY_TxPwrCtrlCmd_pwrIndex_init, align 4
  %558 = shl i32 %557, 0
  %559 = call i32 @mod_phy_reg(%struct.brcms_phy* %556, i32 546, i32 255, i32 %558)
  br label %560

560:                                              ; preds = %555, %548
  br label %561

561:                                              ; preds = %560, %543
  %562 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %563 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %562, i32 0, i32 3
  %564 = load %struct.TYPE_7__*, %struct.TYPE_7__** %563, align 8
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i32 0, i32 2
  %566 = load i32, i32* %565, align 4
  %567 = call i64 @D11REV_IS(i32 %566, i32 11)
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %577, label %569

569:                                              ; preds = %561
  %570 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %571 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %570, i32 0, i32 3
  %572 = load %struct.TYPE_7__*, %struct.TYPE_7__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 4
  %575 = call i64 @D11REV_IS(i32 %574, i32 12)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %585

577:                                              ; preds = %569, %561
  %578 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %579 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %578, i32 0, i32 3
  %580 = load %struct.TYPE_7__*, %struct.TYPE_7__** %579, align 8
  %581 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %580, i32 0, i32 1
  %582 = load i32, i32* %581, align 4
  %583 = load i32, i32* @MCTL_PHYLOCK, align 4
  %584 = call i32 @wlapi_bmac_mctrl(i32 %582, i32 %583, i32 0)
  br label %585

585:                                              ; preds = %577, %569
  %586 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %587 = call i32 @write_phy_reg(%struct.brcms_phy* %586, i32 488, i32 1008)
  %588 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %589 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %590 = load i32, i32* %589, align 4
  %591 = shl i32 %590, 0
  %592 = or i32 32768, %591
  %593 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %594 = load i32, i32* %593, align 4
  %595 = shl i32 %594, 8
  %596 = or i32 %592, %595
  %597 = call i32 @write_phy_reg(%struct.brcms_phy* %588, i32 489, i32 %596)
  %598 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %599 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %600 = load i32, i32* %599, align 4
  %601 = shl i32 %600, 0
  %602 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %603 = load i32, i32* %602, align 4
  %604 = shl i32 %603, 8
  %605 = or i32 %601, %604
  %606 = call i32 @write_phy_reg(%struct.brcms_phy* %598, i32 490, i32 %605)
  store i32 64, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %607 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  store i32 %607, i32* %13, align 4
  br label %608

608:                                              ; preds = %690, %585
  %609 = load i32, i32* %13, align 4
  %610 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %611 = icmp sle i32 %609, %610
  br i1 %611, label %612, label %693

612:                                              ; preds = %608
  store i32 0, i32* %3, align 4
  br label %613

613:                                              ; preds = %680, %612
  %614 = load i32, i32* %3, align 4
  %615 = load i32, i32* %14, align 4
  %616 = icmp slt i32 %614, %615
  br i1 %616, label %617, label %683

617:                                              ; preds = %613
  %618 = load i32, i32* %13, align 4
  %619 = sub nsw i32 %618, 26
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = mul nsw i32 16, %622
  %624 = load i32, i32* %13, align 4
  %625 = sub nsw i32 %624, 26
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %626
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* %3, align 4
  %630 = mul nsw i32 %628, %629
  %631 = add nsw i32 %623, %630
  %632 = mul nsw i32 8, %631
  store i32 %632, i32* %8, align 4
  %633 = load i32, i32* %13, align 4
  %634 = sub nsw i32 %633, 26
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* %3, align 4
  %639 = mul nsw i32 %637, %638
  %640 = add nsw i32 32768, %639
  store i32 %640, i32* %9, align 4
  %641 = load i32, i32* %8, align 4
  %642 = mul nsw i32 4, %641
  %643 = load i32, i32* %9, align 4
  %644 = sdiv i32 %643, 2
  %645 = add nsw i32 %642, %644
  %646 = load i32, i32* %9, align 4
  %647 = sdiv i32 %645, %646
  %648 = call i32 @max(i32 %647, i32 -8)
  store i32 %648, i32* %10, align 4
  %649 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %650 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %649, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = call i64 @NREV_LT(i32 %652, i32 3)
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %675

655:                                              ; preds = %617
  %656 = load i32, i32* %3, align 4
  %657 = load i32, i32* %13, align 4
  %658 = sub nsw i32 %657, 26
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %659
  %661 = load i32, i32* %660, align 4
  %662 = sub nsw i32 31, %661
  %663 = add nsw i32 %662, 1
  %664 = icmp sle i32 %656, %663
  br i1 %664, label %665, label %674

665:                                              ; preds = %655
  %666 = load i32, i32* %10, align 4
  %667 = load i32, i32* %13, align 4
  %668 = sub nsw i32 %667, 26
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %669
  %671 = load i32, i32* %670, align 4
  %672 = add nsw i32 %671, 1
  %673 = call i32 @max(i32 %666, i32 %672)
  store i32 %673, i32* %10, align 4
  br label %674

674:                                              ; preds = %665, %655
  br label %675

675:                                              ; preds = %674, %617
  %676 = load i32, i32* %10, align 4
  %677 = load i32, i32* %3, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 %678
  store i32 %676, i32* %679, align 4
  br label %680

680:                                              ; preds = %675
  %681 = load i32, i32* %3, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %3, align 4
  br label %613

683:                                              ; preds = %613
  %684 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %685 = load i32, i32* %13, align 4
  %686 = load i32, i32* %14, align 4
  %687 = load i32, i32* %15, align 4
  %688 = getelementptr inbounds [64 x i32], [64 x i32]* %16, i64 0, i64 0
  %689 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %684, i32 %685, i32 %686, i32 %687, i32 32, i32* %688)
  br label %690

690:                                              ; preds = %683
  %691 = load i32, i32* %13, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %13, align 4
  br label %608

693:                                              ; preds = %608
  %694 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %695 = call i32 @wlc_phy_txpwr_limit_to_tbl_nphy(%struct.brcms_phy* %694)
  %696 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %697 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %698 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %699 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %698, i32 0, i32 0
  %700 = load i32*, i32** %699, align 8
  %701 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %696, i32 %697, i32 84, i32 64, i32 8, i32* %700)
  %702 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %703 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %704 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %705 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %704, i32 0, i32 0
  %706 = load i32*, i32** %705, align 8
  %707 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %702, i32 %703, i32 84, i32 64, i32 8, i32* %706)
  %708 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %709 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %708, i32 0, i32 1
  %710 = load i64, i64* %709, align 8
  %711 = icmp ne i64 %710, 0
  br i1 %711, label %712, label %715

712:                                              ; preds = %693
  %713 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %714 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %713, i32 0)
  br label %715

715:                                              ; preds = %712, %693
  ret void
}

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @wlapi_bmac_mctrl(i32, i32, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_get_chan_freq_range_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @PHY_IPA(%struct.brcms_phy*) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @NREV_GT(i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_txpwr_limit_to_tbl_nphy(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
