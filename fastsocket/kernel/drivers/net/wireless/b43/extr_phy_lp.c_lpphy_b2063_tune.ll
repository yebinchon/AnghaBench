; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_b2063_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_b2063_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b206x_channel = type { i32, i32*, i32 }
%struct.b43_wldev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@lpphy_b2063_tune.chandata = internal global %struct.b206x_channel* null, align 8
@b2063_chantbl = common dso_local global %struct.b206x_channel* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@B2063_LOGEN_VCOBUF1 = common dso_local global i32 0, align 4
@B2063_LOGEN_MIXER2 = common dso_local global i32 0, align 4
@B2063_LOGEN_BUF2 = common dso_local global i32 0, align 4
@B2063_LOGEN_RCCR1 = common dso_local global i32 0, align 4
@B2063_A_RX_1ST3 = common dso_local global i32 0, align 4
@B2063_A_RX_2ND1 = common dso_local global i32 0, align 4
@B2063_A_RX_2ND4 = common dso_local global i32 0, align 4
@B2063_A_RX_2ND7 = common dso_local global i32 0, align 4
@B2063_A_RX_PS6 = common dso_local global i32 0, align 4
@B2063_TX_RF_CTL2 = common dso_local global i32 0, align 4
@B2063_TX_RF_CTL5 = common dso_local global i32 0, align 4
@B2063_PA_CTL11 = common dso_local global i32 0, align 4
@B2063_COMM15 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO_CALIB3 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO_CALIB6 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO_CALIB7 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO_CALIB5 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO_CALIB8 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_SG1 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_SG2 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_SG3 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_SG4 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_LF1 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_LF2 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_LF3 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_LF4 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_CP2 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_CP3 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_XTAL_12 = common dso_local global i32 0, align 4
@B2063_PLL_JTAG_PLL_VCO1 = common dso_local global i32 0, align 4
@B2063_PLL_SP2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @lpphy_b2063_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpphy_b2063_tune(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssb_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %31, align 8
  store %struct.ssb_bus* %32, %struct.ssb_bus** %6, align 8
  %33 = load %struct.ssb_bus*, %struct.ssb_bus** %6, align 8
  %34 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 26000000
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 2
  store i32 %42, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %43

43:                                               ; preds = %63, %2
  %44 = load i32, i32* %24, align 4
  %45 = load %struct.b206x_channel*, %struct.b206x_channel** @b2063_chantbl, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.b206x_channel* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.b206x_channel*, %struct.b206x_channel** @b2063_chantbl, align 8
  %50 = load i32, i32* %24, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %49, i64 %51
  %53 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.b206x_channel*, %struct.b206x_channel** @b2063_chantbl, align 8
  %59 = load i32, i32* %24, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %58, i64 %60
  store %struct.b206x_channel* %61, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  br label %66

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %24, align 4
  br label %43

66:                                               ; preds = %57, %43
  %67 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %68 = icmp ne %struct.b206x_channel* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @B43_WARN_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %424

76:                                               ; preds = %66
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %78 = load i32, i32* @B2063_LOGEN_VCOBUF1, align 4
  %79 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %80 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @b43_radio_write(%struct.b43_wldev* %77, i32 %78, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %86 = load i32, i32* @B2063_LOGEN_MIXER2, align 4
  %87 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %88 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @b43_radio_write(%struct.b43_wldev* %85, i32 %86, i32 %91)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %94 = load i32, i32* @B2063_LOGEN_BUF2, align 4
  %95 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %96 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @b43_radio_write(%struct.b43_wldev* %93, i32 %94, i32 %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %102 = load i32, i32* @B2063_LOGEN_RCCR1, align 4
  %103 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %104 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @b43_radio_write(%struct.b43_wldev* %101, i32 %102, i32 %107)
  %109 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %110 = load i32, i32* @B2063_A_RX_1ST3, align 4
  %111 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %112 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @b43_radio_write(%struct.b43_wldev* %109, i32 %110, i32 %115)
  %117 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %118 = load i32, i32* @B2063_A_RX_2ND1, align 4
  %119 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %120 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @b43_radio_write(%struct.b43_wldev* %117, i32 %118, i32 %123)
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %126 = load i32, i32* @B2063_A_RX_2ND4, align 4
  %127 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %128 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 6
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @b43_radio_write(%struct.b43_wldev* %125, i32 %126, i32 %131)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %134 = load i32, i32* @B2063_A_RX_2ND7, align 4
  %135 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %136 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @b43_radio_write(%struct.b43_wldev* %133, i32 %134, i32 %139)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %142 = load i32, i32* @B2063_A_RX_PS6, align 4
  %143 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %144 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @b43_radio_write(%struct.b43_wldev* %141, i32 %142, i32 %147)
  %149 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %150 = load i32, i32* @B2063_TX_RF_CTL2, align 4
  %151 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %152 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 9
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @b43_radio_write(%struct.b43_wldev* %149, i32 %150, i32 %155)
  %157 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %158 = load i32, i32* @B2063_TX_RF_CTL5, align 4
  %159 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %160 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 10
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @b43_radio_write(%struct.b43_wldev* %157, i32 %158, i32 %163)
  %165 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %166 = load i32, i32* @B2063_PA_CTL11, align 4
  %167 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %168 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 11
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @b43_radio_write(%struct.b43_wldev* %165, i32 %166, i32 %171)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %174 = load i32, i32* @B2063_COMM15, align 4
  %175 = call i32 @b43_radio_read(%struct.b43_wldev* %173, i32 %174)
  store i32 %175, i32* %16, align 4
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %177 = load i32, i32* @B2063_COMM15, align 4
  %178 = call i32 @b43_radio_set(%struct.b43_wldev* %176, i32 %177, i32 30)
  %179 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %180 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp sgt i32 %181, 4000
  br i1 %182, label %183, label %188

183:                                              ; preds = %76
  %184 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %185 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %193

188:                                              ; preds = %76
  %189 = load %struct.b206x_channel*, %struct.b206x_channel** @lpphy_b2063_tune.chandata, align 8
  %190 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = shl i32 %191, 2
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %188, %183
  %194 = load i32, i32* %7, align 4
  %195 = mul nsw i32 %194, 3
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @lpphy_qdiv_roundup(i32 %196, i32 1000000, i32 16)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %25, align 4
  %200 = mul nsw i32 1000000, %199
  %201 = call i32 @lpphy_qdiv_roundup(i32 %198, i32 %200, i32 16)
  store i32 %201, i32* %11, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @lpphy_qdiv_roundup(i32 %202, i32 3, i32 16)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %7, align 4
  %205 = mul nsw i32 8, %204
  %206 = load i32, i32* %25, align 4
  %207 = mul nsw i32 %206, 5000000
  %208 = sdiv i32 %205, %207
  %209 = add nsw i32 %208, 1
  %210 = ashr i32 %209, 1
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  %212 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %213 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB3, align 4
  %214 = call i32 @b43_radio_write(%struct.b43_wldev* %212, i32 %213, i32 2)
  %215 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %216 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB6, align 4
  %217 = load i32, i32* %13, align 4
  %218 = ashr i32 %217, 2
  %219 = call i32 @b43_radio_maskset(%struct.b43_wldev* %215, i32 %216, i32 65528, i32 %218)
  %220 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %221 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB7, align 4
  %222 = load i32, i32* %13, align 4
  %223 = shl i32 %222, 5
  %224 = call i32 @b43_radio_maskset(%struct.b43_wldev* %220, i32 %221, i32 65439, i32 %223)
  %225 = load i32, i32* %7, align 4
  %226 = mul nsw i32 8, %225
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  %230 = mul nsw i32 %227, %229
  %231 = sdiv i32 %226, %230
  %232 = add nsw i32 %231, 999999
  %233 = sdiv i32 %232, 1000000
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  %235 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %236 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB5, align 4
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @b43_radio_write(%struct.b43_wldev* %235, i32 %236, i32 %237)
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 16
  %242 = call i32 @lpphy_qdiv_roundup(i32 %239, i32 %241, i32 16)
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %245, 1
  %247 = mul nsw i32 %244, %246
  %248 = load i32, i32* %15, align 4
  %249 = mul nsw i32 %248, %247
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %15, align 4
  %252 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %253 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB7, align 4
  %254 = load i32, i32* %15, align 4
  %255 = ashr i32 %254, 8
  %256 = call i32 @b43_radio_maskset(%struct.b43_wldev* %252, i32 %253, i32 240, i32 %255)
  %257 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %258 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO_CALIB8, align 4
  %259 = load i32, i32* %15, align 4
  %260 = and i32 %259, 255
  %261 = call i32 @b43_radio_write(%struct.b43_wldev* %257, i32 %258, i32 %260)
  %262 = load i32, i32* %12, align 4
  %263 = mul nsw i32 %262, 62500
  %264 = load i32, i32* %8, align 4
  %265 = sdiv i32 %263, %264
  %266 = shl i32 %265, 4
  store i32 %266, i32* %18, align 4
  %267 = load i32, i32* %12, align 4
  %268 = mul nsw i32 %267, 62500
  %269 = load i32, i32* %8, align 4
  %270 = srem i32 %268, %269
  %271 = shl i32 %270, 4
  store i32 %271, i32* %19, align 4
  br label %272

272:                                              ; preds = %276, %193
  %273 = load i32, i32* %19, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp sge i32 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load i32, i32* %18, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %18, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %19, align 4
  %281 = sub nsw i32 %280, %279
  store i32 %281, i32* %19, align 4
  br label %272

282:                                              ; preds = %272
  %283 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %284 = load i32, i32* @B2063_PLL_JTAG_PLL_SG1, align 4
  %285 = load i32, i32* %18, align 4
  %286 = ashr i32 %285, 4
  %287 = call i32 @b43_radio_maskset(%struct.b43_wldev* %283, i32 %284, i32 65504, i32 %286)
  %288 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %289 = load i32, i32* @B2063_PLL_JTAG_PLL_SG2, align 4
  %290 = load i32, i32* %18, align 4
  %291 = shl i32 %290, 4
  %292 = call i32 @b43_radio_maskset(%struct.b43_wldev* %288, i32 %289, i32 65039, i32 %291)
  %293 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %294 = load i32, i32* @B2063_PLL_JTAG_PLL_SG2, align 4
  %295 = load i32, i32* %18, align 4
  %296 = ashr i32 %295, 16
  %297 = call i32 @b43_radio_maskset(%struct.b43_wldev* %293, i32 %294, i32 65520, i32 %296)
  %298 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %299 = load i32, i32* @B2063_PLL_JTAG_PLL_SG3, align 4
  %300 = load i32, i32* %19, align 4
  %301 = ashr i32 %300, 8
  %302 = and i32 %301, 255
  %303 = call i32 @b43_radio_write(%struct.b43_wldev* %298, i32 %299, i32 %302)
  %304 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %305 = load i32, i32* @B2063_PLL_JTAG_PLL_SG4, align 4
  %306 = load i32, i32* %19, align 4
  %307 = and i32 %306, 255
  %308 = call i32 @b43_radio_write(%struct.b43_wldev* %304, i32 %305, i32 %307)
  %309 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %310 = load i32, i32* @B2063_PLL_JTAG_PLL_LF1, align 4
  %311 = call i32 @b43_radio_write(%struct.b43_wldev* %309, i32 %310, i32 185)
  %312 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %313 = load i32, i32* @B2063_PLL_JTAG_PLL_LF2, align 4
  %314 = call i32 @b43_radio_write(%struct.b43_wldev* %312, i32 %313, i32 136)
  %315 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %316 = load i32, i32* @B2063_PLL_JTAG_PLL_LF3, align 4
  %317 = call i32 @b43_radio_write(%struct.b43_wldev* %315, i32 %316, i32 40)
  %318 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %319 = load i32, i32* @B2063_PLL_JTAG_PLL_LF4, align 4
  %320 = call i32 @b43_radio_write(%struct.b43_wldev* %318, i32 %319, i32 99)
  %321 = load i32, i32* %12, align 4
  %322 = sub nsw i32 %321, 3000
  %323 = mul nsw i32 41, %322
  %324 = sdiv i32 %323, 1200
  %325 = add nsw i32 %324, 27
  store i32 %325, i32* %20, align 4
  %326 = load i32, i32* %18, align 4
  %327 = mul nsw i32 132000, %326
  %328 = call i32 @lpphy_qdiv_roundup(i32 %327, i32 8451, i32 16)
  store i32 %328, i32* %21, align 4
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %329, %330
  %332 = sub nsw i32 %331, 1
  %333 = load i32, i32* %20, align 4
  %334 = sdiv i32 %332, %333
  %335 = icmp sgt i32 %334, 60
  br i1 %335, label %336, label %344

336:                                              ; preds = %282
  store i32 1, i32* %17, align 4
  %337 = load i32, i32* %21, align 4
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* %20, align 4
  %341 = shl i32 %340, 1
  %342 = sdiv i32 %339, %341
  %343 = sub nsw i32 %342, 8
  store i32 %343, i32* %22, align 4
  br label %352

344:                                              ; preds = %282
  store i32 0, i32* %17, align 4
  %345 = load i32, i32* %21, align 4
  %346 = load i32, i32* %20, align 4
  %347 = ashr i32 %346, 1
  %348 = add nsw i32 %345, %347
  %349 = load i32, i32* %20, align 4
  %350 = sdiv i32 %348, %349
  %351 = sub nsw i32 %350, 8
  store i32 %351, i32* %22, align 4
  br label %352

352:                                              ; preds = %344, %336
  %353 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %354 = load i32, i32* @B2063_PLL_JTAG_PLL_CP2, align 4
  %355 = load i32, i32* %22, align 4
  %356 = call i32 @b43_radio_maskset(%struct.b43_wldev* %353, i32 %354, i32 65472, i32 %355)
  %357 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %358 = load i32, i32* @B2063_PLL_JTAG_PLL_CP2, align 4
  %359 = load i32, i32* %17, align 4
  %360 = shl i32 %359, 6
  %361 = call i32 @b43_radio_maskset(%struct.b43_wldev* %357, i32 %358, i32 65471, i32 %360)
  %362 = load i32, i32* %10, align 4
  %363 = mul nsw i32 100, %362
  %364 = load i32, i32* %12, align 4
  %365 = call i32 @lpphy_qdiv_roundup(i32 %363, i32 %364, i32 16)
  store i32 %365, i32* %23, align 4
  %366 = load i32, i32* %22, align 4
  %367 = mul nsw i32 %366, 8
  %368 = load i32, i32* %17, align 4
  %369 = add nsw i32 %368, 1
  %370 = mul nsw i32 %367, %369
  %371 = load i32, i32* %23, align 4
  %372 = mul nsw i32 %371, %370
  store i32 %372, i32* %23, align 4
  %373 = load i32, i32* %23, align 4
  %374 = icmp sgt i32 %373, 150
  br i1 %374, label %375, label %376

375:                                              ; preds = %352
  store i32 0, i32* %23, align 4
  br label %376

376:                                              ; preds = %375, %352
  %377 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %378 = load i32, i32* @B2063_PLL_JTAG_PLL_CP3, align 4
  %379 = load i32, i32* %23, align 4
  %380 = call i32 @b43_radio_maskset(%struct.b43_wldev* %377, i32 %378, i32 65504, i32 %379)
  %381 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %382 = load i32, i32* @B2063_PLL_JTAG_PLL_CP3, align 4
  %383 = load i32, i32* %17, align 4
  %384 = shl i32 %383, 5
  %385 = call i32 @b43_radio_maskset(%struct.b43_wldev* %381, i32 %382, i32 65503, i32 %384)
  %386 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %387 = load i32, i32* @B2063_PLL_JTAG_PLL_XTAL_12, align 4
  %388 = call i32 @b43_radio_maskset(%struct.b43_wldev* %386, i32 %387, i32 65531, i32 4)
  %389 = load i32, i32* %7, align 4
  %390 = icmp sgt i32 %389, 26000000
  br i1 %390, label %391, label %395

391:                                              ; preds = %376
  %392 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %393 = load i32, i32* @B2063_PLL_JTAG_PLL_XTAL_12, align 4
  %394 = call i32 @b43_radio_set(%struct.b43_wldev* %392, i32 %393, i32 2)
  br label %399

395:                                              ; preds = %376
  %396 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %397 = load i32, i32* @B2063_PLL_JTAG_PLL_XTAL_12, align 4
  %398 = call i32 @b43_radio_mask(%struct.b43_wldev* %396, i32 %397, i32 253)
  br label %399

399:                                              ; preds = %395, %391
  %400 = load i32, i32* %10, align 4
  %401 = icmp eq i32 %400, 45
  br i1 %401, label %402, label %406

402:                                              ; preds = %399
  %403 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %404 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO1, align 4
  %405 = call i32 @b43_radio_set(%struct.b43_wldev* %403, i32 %404, i32 2)
  br label %410

406:                                              ; preds = %399
  %407 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %408 = load i32, i32* @B2063_PLL_JTAG_PLL_VCO1, align 4
  %409 = call i32 @b43_radio_mask(%struct.b43_wldev* %407, i32 %408, i32 253)
  br label %410

410:                                              ; preds = %406, %402
  %411 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %412 = load i32, i32* @B2063_PLL_SP2, align 4
  %413 = call i32 @b43_radio_set(%struct.b43_wldev* %411, i32 %412, i32 3)
  %414 = call i32 @udelay(i32 1)
  %415 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %416 = load i32, i32* @B2063_PLL_SP2, align 4
  %417 = call i32 @b43_radio_mask(%struct.b43_wldev* %415, i32 %416, i32 65532)
  %418 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %419 = call i32 @lpphy_b2063_vco_calib(%struct.b43_wldev* %418)
  %420 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %421 = load i32, i32* @B2063_COMM15, align 4
  %422 = load i32, i32* %16, align 4
  %423 = call i32 @b43_radio_write(%struct.b43_wldev* %420, i32 %421, i32 %422)
  store i32 0, i32* %3, align 4
  br label %424

424:                                              ; preds = %410, %73
  %425 = load i32, i32* %3, align 4
  ret i32 %425
}

declare dso_local i32 @ARRAY_SIZE(%struct.b206x_channel*) #1

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_qdiv_roundup(i32, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lpphy_b2063_vco_calib(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
