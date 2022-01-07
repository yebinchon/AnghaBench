; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_b2062_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_lp.c_lpphy_b2062_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b206x_channel = type { i32, i32* }
%struct.b43_wldev = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.b43_phy_lp* }
%struct.b43_phy_lp = type { i32 }

@b2062_chantbl = common dso_local global %struct.b206x_channel* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL14 = common dso_local global i32 0, align 4
@B2062_N_LGENA_TUNE0 = common dso_local global i32 0, align 4
@B2062_N_LGENA_TUNE2 = common dso_local global i32 0, align 4
@B2062_N_LGENA_TUNE3 = common dso_local global i32 0, align 4
@B2062_N_TX_TUNE = common dso_local global i32 0, align 4
@B2062_S_LGENG_CTL1 = common dso_local global i32 0, align 4
@B2062_N_LGENA_CTL5 = common dso_local global i32 0, align 4
@B2062_N_LGENA_CTL6 = common dso_local global i32 0, align 4
@B2062_N_TX_PGA = common dso_local global i32 0, align 4
@B2062_N_TX_PAD = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL33 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL34 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL26 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL27 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL28 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL29 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL19 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL23 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL24 = common dso_local global i32 0, align 4
@B2062_S_RFPLL_CTL3 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32)* @lpphy_b2062_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpphy_b2062_tune(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_phy_lp*, align 8
  %7 = alloca %struct.ssb_bus*, align 8
  %8 = alloca %struct.b206x_channel*, align 8
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
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %23, align 8
  store %struct.b43_phy_lp* %24, %struct.b43_phy_lp** %6, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.ssb_bus*, %struct.ssb_bus** %30, align 8
  store %struct.ssb_bus* %31, %struct.ssb_bus** %7, align 8
  store %struct.b206x_channel* null, %struct.b206x_channel** %8, align 8
  %32 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  %33 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %58, %2
  %39 = load i32, i32* %19, align 4
  %40 = load %struct.b206x_channel*, %struct.b206x_channel** @b2062_chantbl, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.b206x_channel* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.b206x_channel*, %struct.b206x_channel** @b2062_chantbl, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %44, i64 %46
  %48 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.b206x_channel*, %struct.b206x_channel** @b2062_chantbl, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %53, i64 %55
  store %struct.b206x_channel* %56, %struct.b206x_channel** %8, align 8
  br label %61

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %19, align 4
  br label %38

61:                                               ; preds = %52, %38
  %62 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %63 = icmp ne %struct.b206x_channel* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @B43_WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %282

71:                                               ; preds = %61
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %73 = load i32, i32* @B2062_S_RFPLL_CTL14, align 4
  %74 = call i32 @b43_radio_set(%struct.b43_wldev* %72, i32 %73, i32 4)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %76 = load i32, i32* @B2062_N_LGENA_TUNE0, align 4
  %77 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %78 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @b43_radio_write(%struct.b43_wldev* %75, i32 %76, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %84 = load i32, i32* @B2062_N_LGENA_TUNE2, align 4
  %85 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %86 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @b43_radio_write(%struct.b43_wldev* %83, i32 %84, i32 %89)
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %92 = load i32, i32* @B2062_N_LGENA_TUNE3, align 4
  %93 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %94 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @b43_radio_write(%struct.b43_wldev* %91, i32 %92, i32 %97)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %100 = load i32, i32* @B2062_N_TX_TUNE, align 4
  %101 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %102 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @b43_radio_write(%struct.b43_wldev* %99, i32 %100, i32 %105)
  %107 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %108 = load i32, i32* @B2062_S_LGENG_CTL1, align 4
  %109 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %110 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @b43_radio_write(%struct.b43_wldev* %107, i32 %108, i32 %113)
  %115 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %116 = load i32, i32* @B2062_N_LGENA_CTL5, align 4
  %117 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %118 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @b43_radio_write(%struct.b43_wldev* %115, i32 %116, i32 %121)
  %123 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %124 = load i32, i32* @B2062_N_LGENA_CTL6, align 4
  %125 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %126 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @b43_radio_write(%struct.b43_wldev* %123, i32 %124, i32 %129)
  %131 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %132 = load i32, i32* @B2062_N_TX_PGA, align 4
  %133 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %134 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 7
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @b43_radio_write(%struct.b43_wldev* %131, i32 %132, i32 %137)
  %139 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %140 = load i32, i32* @B2062_N_TX_PAD, align 4
  %141 = load %struct.b206x_channel*, %struct.b206x_channel** %8, align 8
  %142 = getelementptr inbounds %struct.b206x_channel, %struct.b206x_channel* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @b43_radio_write(%struct.b43_wldev* %139, i32 %140, i32 %145)
  %147 = load i32, i32* %9, align 4
  %148 = sdiv i32 %147, 1000
  store i32 %148, i32* %10, align 4
  %149 = load %struct.b43_phy_lp*, %struct.b43_phy_lp** %6, align 8
  %150 = getelementptr inbounds %struct.b43_phy_lp, %struct.b43_phy_lp* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 1000
  store i32 %152, i32* %11, align 4
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %154 = load i32, i32* @B2062_S_RFPLL_CTL33, align 4
  %155 = call i32 @b43_radio_write(%struct.b43_wldev* %153, i32 %154, i32 204)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %157 = load i32, i32* @B2062_S_RFPLL_CTL34, align 4
  %158 = call i32 @b43_radio_write(%struct.b43_wldev* %156, i32 %157, i32 7)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %160 = call i32 @lpphy_b2062_reset_pll_bias(%struct.b43_wldev* %159)
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @channel2freq_lp(i32 %162)
  %164 = mul nsw i32 %161, %163
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @channel2freq_lp(i32 %165)
  %167 = icmp slt i32 %166, 4000
  br i1 %167, label %168, label %171

168:                                              ; preds = %71
  %169 = load i32, i32* %12, align 4
  %170 = mul nsw i32 %169, 2
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %168, %71
  %172 = load i32, i32* %10, align 4
  %173 = mul nsw i32 48, %172
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = sdiv i32 %174, %175
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = srem i32 %177, %178
  store i32 %179, i32* %16, align 4
  %180 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %181 = load i32, i32* @B2062_S_RFPLL_CTL26, align 4
  %182 = load i32, i32* %15, align 4
  %183 = call i32 @b43_radio_write(%struct.b43_wldev* %180, i32 %181, i32 %182)
  %184 = load i32, i32* %16, align 4
  %185 = mul nsw i32 %184, 256
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %13, align 4
  %191 = srem i32 %189, %190
  store i32 %191, i32* %16, align 4
  %192 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %193 = load i32, i32* @B2062_S_RFPLL_CTL27, align 4
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @b43_radio_write(%struct.b43_wldev* %192, i32 %193, i32 %194)
  %196 = load i32, i32* %16, align 4
  %197 = mul nsw i32 %196, 256
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sdiv i32 %198, %199
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %13, align 4
  %203 = srem i32 %201, %202
  store i32 %203, i32* %16, align 4
  %204 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %205 = load i32, i32* @B2062_S_RFPLL_CTL28, align 4
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @b43_radio_write(%struct.b43_wldev* %204, i32 %205, i32 %206)
  %208 = load i32, i32* %16, align 4
  %209 = mul nsw i32 %208, 256
  store i32 %209, i32* %14, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %13, align 4
  %212 = sdiv i32 %210, %211
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %13, align 4
  %215 = srem i32 %213, %214
  store i32 %215, i32* %16, align 4
  %216 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %217 = load i32, i32* @B2062_S_RFPLL_CTL29, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = mul nsw i32 2, %219
  %221 = load i32, i32* %13, align 4
  %222 = sdiv i32 %220, %221
  %223 = add nsw i32 %218, %222
  %224 = call i32 @b43_radio_write(%struct.b43_wldev* %216, i32 %217, i32 %223)
  %225 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %226 = load i32, i32* @B2062_S_RFPLL_CTL19, align 4
  %227 = call i32 @b43_radio_read(%struct.b43_wldev* %225, i32 %226)
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %12, align 4
  %229 = mul nsw i32 2, %228
  %230 = load i32, i32* %17, align 4
  %231 = add nsw i32 %230, 1
  %232 = mul nsw i32 %229, %231
  %233 = load i32, i32* %10, align 4
  %234 = mul nsw i32 3, %233
  %235 = add nsw i32 %232, %234
  %236 = load i32, i32* %10, align 4
  %237 = mul nsw i32 6, %236
  %238 = sdiv i32 %235, %237
  store i32 %238, i32* %18, align 4
  %239 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %240 = load i32, i32* @B2062_S_RFPLL_CTL23, align 4
  %241 = load i32, i32* %18, align 4
  %242 = ashr i32 %241, 8
  %243 = add nsw i32 %242, 16
  %244 = call i32 @b43_radio_write(%struct.b43_wldev* %239, i32 %240, i32 %243)
  %245 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %246 = load i32, i32* @B2062_S_RFPLL_CTL24, align 4
  %247 = load i32, i32* %18, align 4
  %248 = and i32 %247, 255
  %249 = call i32 @b43_radio_write(%struct.b43_wldev* %245, i32 %246, i32 %248)
  %250 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %251 = call i32 @lpphy_b2062_vco_calib(%struct.b43_wldev* %250)
  %252 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %253 = load i32, i32* @B2062_S_RFPLL_CTL3, align 4
  %254 = call i32 @b43_radio_read(%struct.b43_wldev* %252, i32 %253)
  %255 = and i32 %254, 16
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %171
  %258 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %259 = load i32, i32* @B2062_S_RFPLL_CTL33, align 4
  %260 = call i32 @b43_radio_write(%struct.b43_wldev* %258, i32 %259, i32 252)
  %261 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %262 = load i32, i32* @B2062_S_RFPLL_CTL34, align 4
  %263 = call i32 @b43_radio_write(%struct.b43_wldev* %261, i32 %262, i32 0)
  %264 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %265 = call i32 @lpphy_b2062_reset_pll_bias(%struct.b43_wldev* %264)
  %266 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %267 = call i32 @lpphy_b2062_vco_calib(%struct.b43_wldev* %266)
  %268 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %269 = load i32, i32* @B2062_S_RFPLL_CTL3, align 4
  %270 = call i32 @b43_radio_read(%struct.b43_wldev* %268, i32 %269)
  %271 = and i32 %270, 16
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %257
  %274 = load i32, i32* @EIO, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %20, align 4
  br label %276

276:                                              ; preds = %273, %257
  br label %277

277:                                              ; preds = %276, %171
  %278 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %279 = load i32, i32* @B2062_S_RFPLL_CTL14, align 4
  %280 = call i32 @b43_radio_mask(%struct.b43_wldev* %278, i32 %279, i32 -5)
  %281 = load i32, i32* %20, align 4
  store i32 %281, i32* %3, align 4
  br label %282

282:                                              ; preds = %277, %68
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @ARRAY_SIZE(%struct.b206x_channel*) #1

declare dso_local i64 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @lpphy_b2062_reset_pll_bias(%struct.b43_wldev*) #1

declare dso_local i32 @channel2freq_lp(i32) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lpphy_b2062_vco_calib(%struct.b43_wldev*) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
