; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rtl8225.c_rtl8225_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"RF Calibration Failed! %x\0A\00", align 1
@rtl8225bcd_rxgain = common dso_local global i32* null, align 8
@rtl8225_agc = common dso_local global i32* null, align 8
@rtl8225_gain = common dso_local global i32* null, align 8
@rtl8225_threshold = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8225_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8225_rf_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8187_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 1
  %7 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  store %struct.rtl8187_priv* %7, %struct.rtl8187_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call i32 @rtl8225_write(%struct.ieee80211_hw* %8, i32 0, i32 103)
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call i32 @rtl8225_write(%struct.ieee80211_hw* %10, i32 1, i32 4064)
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = call i32 @rtl8225_write(%struct.ieee80211_hw* %12, i32 2, i32 1101)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @rtl8225_write(%struct.ieee80211_hw* %14, i32 3, i32 1089)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl8225_write(%struct.ieee80211_hw* %16, i32 4, i32 1158)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @rtl8225_write(%struct.ieee80211_hw* %18, i32 5, i32 3008)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @rtl8225_write(%struct.ieee80211_hw* %20, i32 6, i32 2790)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @rtl8225_write(%struct.ieee80211_hw* %22, i32 7, i32 2090)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl8225_write(%struct.ieee80211_hw* %24, i32 8, i32 31)
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i32 @rtl8225_write(%struct.ieee80211_hw* %26, i32 9, i32 820)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = call i32 @rtl8225_write(%struct.ieee80211_hw* %28, i32 10, i32 4052)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @rtl8225_write(%struct.ieee80211_hw* %30, i32 11, i32 913)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @rtl8225_write(%struct.ieee80211_hw* %32, i32 12, i32 80)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @rtl8225_write(%struct.ieee80211_hw* %34, i32 13, i32 1755)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @rtl8225_write(%struct.ieee80211_hw* %36, i32 14, i32 41)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %39 = call i32 @rtl8225_write(%struct.ieee80211_hw* %38, i32 15, i32 2324)
  %40 = call i32 @msleep(i32 100)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %42 = call i32 @rtl8225_write(%struct.ieee80211_hw* %41, i32 2, i32 3149)
  %43 = call i32 @msleep(i32 200)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @rtl8225_write(%struct.ieee80211_hw* %44, i32 2, i32 1101)
  %46 = call i32 @msleep(i32 200)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 @rtl8225_read(%struct.ieee80211_hw* %47, i32 6)
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %1
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %53 = call i32 @rtl8225_write(%struct.ieee80211_hw* %52, i32 2, i32 3149)
  %54 = call i32 @msleep(i32 200)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %56 = call i32 @rtl8225_write(%struct.ieee80211_hw* %55, i32 2, i32 1101)
  %57 = call i32 @msleep(i32 100)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = call i32 @rtl8225_read(%struct.ieee80211_hw* %58, i32 6)
  %60 = and i32 %59, 128
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl8225_read(%struct.ieee80211_hw* %66, i32 6)
  %68 = call i32 @wiphy_warn(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %51
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = call i32 @rtl8225_write(%struct.ieee80211_hw* %71, i32 0, i32 295)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %90, %70
  %74 = load i32, i32* %4, align 4
  %75 = load i32*, i32** @rtl8225bcd_rxgain, align 8
  %76 = call i32 @ARRAY_SIZE(i32* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @rtl8225_write(%struct.ieee80211_hw* %79, i32 1, i32 %81)
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = load i32*, i32** @rtl8225bcd_rxgain, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @rtl8225_write(%struct.ieee80211_hw* %83, i32 2, i32 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %73

93:                                               ; preds = %73
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = call i32 @rtl8225_write(%struct.ieee80211_hw* %94, i32 0, i32 39)
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %97 = call i32 @rtl8225_write(%struct.ieee80211_hw* %96, i32 0, i32 559)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %115, %93
  %99 = load i32, i32* %4, align 4
  %100 = load i32*, i32** @rtl8225_agc, align 8
  %101 = call i32 @ARRAY_SIZE(i32* %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = load i32*, i32** @rtl8225_agc, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %104, i32 11, i32 %109)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 128, %112
  %114 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %111, i32 10, i32 %113)
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  br label %98

118:                                              ; preds = %98
  %119 = call i32 @msleep(i32 1)
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %120, i32 0, i32 1)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %123 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %122, i32 1, i32 2)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %125 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %124, i32 2, i32 66)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %126, i32 3, i32 0)
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %129 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %128, i32 4, i32 0)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %130, i32 5, i32 0)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %133 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %132, i32 6, i32 64)
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %135 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %134, i32 7, i32 0)
  %136 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %137 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %136, i32 8, i32 64)
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %138, i32 9, i32 254)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %140, i32 10, i32 9)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %143 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %142, i32 11, i32 128)
  %144 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %145 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %144, i32 12, i32 1)
  %146 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %147 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %146, i32 14, i32 211)
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %149 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %148, i32 15, i32 56)
  %150 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %151 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %150, i32 16, i32 132)
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %152, i32 17, i32 6)
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %155 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %154, i32 18, i32 32)
  %156 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %157 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %156, i32 19, i32 32)
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %159 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %158, i32 20, i32 0)
  %160 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %161 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %160, i32 21, i32 64)
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %163 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %162, i32 22, i32 0)
  %164 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %165 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %164, i32 23, i32 64)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %167 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %166, i32 24, i32 239)
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %169 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %168, i32 25, i32 25)
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %171 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %170, i32 26, i32 32)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %173 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %172, i32 27, i32 118)
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %175 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %174, i32 28, i32 4)
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %177 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %176, i32 30, i32 149)
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %179 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %178, i32 31, i32 117)
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %181 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %180, i32 32, i32 31)
  %182 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %183 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %182, i32 33, i32 39)
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %185 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %184, i32 34, i32 22)
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %187 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %186, i32 36, i32 70)
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %189 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %188, i32 37, i32 32)
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %191 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %190, i32 38, i32 144)
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %193 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %192, i32 39, i32 136)
  %194 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %195 = load i32*, i32** @rtl8225_gain, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 8
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %194, i32 13, i32 %197)
  %199 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %200 = load i32*, i32** @rtl8225_gain, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 10
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %199, i32 27, i32 %202)
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %205 = load i32*, i32** @rtl8225_gain, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 11
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %204, i32 29, i32 %207)
  %209 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %210 = load i32*, i32** @rtl8225_gain, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 9
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %209, i32 35, i32 %212)
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %215 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %214, i32 0, i32 152)
  %216 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %217 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %216, i32 3, i32 32)
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %219 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %218, i32 4, i32 126)
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %221 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %220, i32 5, i32 18)
  %222 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %223 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %222, i32 6, i32 252)
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %225 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %224, i32 7, i32 120)
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %227 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %226, i32 8, i32 46)
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %229 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %228, i32 16, i32 155)
  %230 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %231 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %230, i32 17, i32 136)
  %232 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %233 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %232, i32 18, i32 71)
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %235 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %234, i32 19, i32 208)
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %237 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %236, i32 25, i32 0)
  %238 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %239 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %238, i32 26, i32 160)
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %241 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %240, i32 27, i32 8)
  %242 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %243 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %242, i32 64, i32 134)
  %244 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %245 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %244, i32 65, i32 141)
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %247 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %246, i32 66, i32 21)
  %248 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %249 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %248, i32 67, i32 24)
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %251 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %250, i32 68, i32 31)
  %252 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %253 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %252, i32 69, i32 30)
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %255 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %254, i32 70, i32 26)
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %257 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %256, i32 71, i32 21)
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %259 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %258, i32 72, i32 16)
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %261 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %260, i32 73, i32 10)
  %262 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %263 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %262, i32 74, i32 5)
  %264 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %265 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %264, i32 75, i32 2)
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %267 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %266, i32 76, i32 5)
  %268 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %269 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %270 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %269, i32 0, i32 0
  %271 = load %struct.TYPE_2__*, %struct.TYPE_2__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %268, i32* %272, i32 13)
  %274 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %275 = call i32 @rtl8225_rf_set_tx_power(%struct.ieee80211_hw* %274, i32 1)
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %277 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %276, i32 16, i32 155)
  %278 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %279 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %278, i32 38, i32 144)
  %280 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %281 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %282 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %281, i32 0, i32 0
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %280, i32* %284, i32 3)
  %286 = call i32 @msleep(i32 1)
  %287 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %3, align 8
  %288 = call i32 @rtl818x_iowrite32(%struct.rtl8187_priv* %287, i32* inttoptr (i64 65428 to i32*), i32 1035993090)
  %289 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %290 = call i32 @rtl8225_write(%struct.ieee80211_hw* %289, i32 12, i32 80)
  %291 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %292 = load i32*, i32** @rtl8225_gain, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 8
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %291, i32 13, i32 %294)
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %297 = load i32*, i32** @rtl8225_gain, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 10
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %296, i32 27, i32 %299)
  %301 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %302 = load i32*, i32** @rtl8225_gain, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 11
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %301, i32 29, i32 %304)
  %306 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %307 = load i32*, i32** @rtl8225_gain, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 9
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw* %306, i32 35, i32 %309)
  %311 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %312 = load i32*, i32** @rtl8225_threshold, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw* %311, i32 65, i32 %314)
  ret void
}

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl8225_read(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl8225_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225_write_phy_cck(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

declare dso_local i32 @rtl8225_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
