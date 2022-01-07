; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_power_control_override.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_power_control_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ar9300_eeprom }
%struct.ar9300_eeprom = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32 }

@AR_PHY_TPC_11_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_OLPC_GAIN_DELTA = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_11_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B0 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE_S = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_ERROR_EST_MODE = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_6_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B1 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B2 = common dso_local global i32 0, align 4
@AR_PHY_TPC_19_B1_ALPHA_THERM = common dso_local global i32 0, align 4
@AR_PHY_TPC_18 = common dso_local global i32 0, align 4
@AR_PHY_TPC_18_THERM_CAL_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32, i32*, i32*, i32*)* @ar9003_hw_power_control_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_power_control_override(%struct.ath_hw* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ath_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ar9300_eeprom*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.ar9300_eeprom* %22, %struct.ar9300_eeprom** %14, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %24 = load i32, i32* @AR_PHY_TPC_11_B0, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %31 = call i32 @REG_RMW(%struct.ath_hw* %23, i32 %24, i32 %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BIT(i32 1)
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %5
  %40 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %41 = load i32, i32* @AR_PHY_TPC_11_B1, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %48 = call i32 @REG_RMW(%struct.ath_hw* %40, i32 %41, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %5
  %50 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %51 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BIT(i32 2)
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %59 = load i32, i32* @AR_PHY_TPC_11_B2, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA_S, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* @AR_PHY_TPC_OLPC_GAIN_DELTA, align 4
  %66 = call i32 @REG_RMW(%struct.ath_hw* %58, i32 %59, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %57, %49
  %68 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %69 = load i32, i32* @AR_PHY_TPC_6_B0, align 4
  %70 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %71 = shl i32 3, %70
  %72 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %73 = call i32 @REG_RMW(%struct.ath_hw* %68, i32 %69, i32 %71, i32 %72)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %75 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @BIT(i32 1)
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %83 = load i32, i32* @AR_PHY_TPC_6_B1, align 4
  %84 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %85 = shl i32 3, %84
  %86 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %87 = call i32 @REG_RMW(%struct.ath_hw* %82, i32 %83, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %67
  %89 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %90 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @BIT(i32 2)
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %98 = load i32, i32* @AR_PHY_TPC_6_B2, align 4
  %99 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE_S, align 4
  %100 = shl i32 3, %99
  %101 = load i32, i32* @AR_PHY_TPC_6_ERROR_EST_MODE, align 4
  %102 = call i32 @REG_RMW(%struct.ath_hw* %97, i32 %98, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %88
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 4000
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %108 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %11, align 4
  br label %270

111:                                              ; preds = %103
  %112 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %113 = call i64 @AR_SREV_9550(%struct.ath_hw* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %192

115:                                              ; preds = %111
  %116 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %117 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %121, i32* %122, align 16
  %123 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %124 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %128, i32* %129, align 4
  %130 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %131 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %137, align 16
  %138 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %139 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %141, i32* %142, align 4
  %143 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %144 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %148, i32* %149, align 4
  %150 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %151 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %157, align 4
  %158 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %159 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %163, i32* %164, align 8
  %165 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %166 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 6
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %170, i32* %171, align 4
  %172 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %173 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 7
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 %177, i32* %178, align 4
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %183 = call i32 @ar9003_hw_power_interpolate(i32 %180, i32* %181, i32* %182, i32 3)
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %7, align 4
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %187 = call i32 @ar9003_hw_power_interpolate(i32 %184, i32* %185, i32* %186, i32 3)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %7, align 4
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %191 = call i32 @ar9003_hw_power_interpolate(i32 %188, i32* %189, i32* %190, i32 3)
  store i32 %191, i32* %13, align 4
  br label %271

192:                                              ; preds = %111
  %193 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %194 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %234

199:                                              ; preds = %192
  store i32 0, i32* %19, align 4
  br label %200

200:                                              ; preds = %226, %199
  %201 = load i32, i32* %19, align 4
  %202 = icmp slt i32 %201, 8
  br i1 %202, label %203, label %229

203:                                              ; preds = %200
  %204 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %205 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  %215 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %216 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @FBIN2FREQ(i32 %221, i32 0)
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %224
  store i32 %222, i32* %225, align 4
  br label %226

226:                                              ; preds = %203
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %200

229:                                              ; preds = %200
  %230 = load i32, i32* %7, align 4
  %231 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %233 = call i32 @ar9003_hw_power_interpolate(i32 %230, i32* %231, i32* %232, i32 8)
  store i32 %233, i32* %11, align 4
  br label %269

234:                                              ; preds = %192
  %235 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %236 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %263

240:                                              ; preds = %234
  %241 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %242 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %244, i32* %245, align 16
  %246 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 5180, i32* %246, align 16
  %247 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %248 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %250, i32* %251, align 4
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 5500, i32* %252, align 4
  %253 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %254 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %256, i32* %257, align 8
  %258 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 5785, i32* %258, align 8
  %259 = load i32, i32* %7, align 4
  %260 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %261 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %262 = call i32 @ar9003_hw_power_interpolate(i32 %259, i32* %260, i32* %261, i32 3)
  store i32 %262, i32* %11, align 4
  br label %268

263:                                              ; preds = %234
  %264 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %265 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %11, align 4
  br label %268

268:                                              ; preds = %263, %240
  br label %269

269:                                              ; preds = %268, %229
  br label %270

270:                                              ; preds = %269, %106
  br label %271

271:                                              ; preds = %270, %115
  %272 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %273 = call i64 @AR_SREV_9550(%struct.ath_hw* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %338

275:                                              ; preds = %271
  %276 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %277 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 1
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %324

282:                                              ; preds = %275
  %283 = load i32, i32* %7, align 4
  %284 = icmp slt i32 %283, 4000
  br i1 %284, label %285, label %307

285:                                              ; preds = %282
  %286 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %287 = load i32, i32* @AR_PHY_TPC_19, align 4
  %288 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %289 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %290 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %286, i32 %287, i32 %288, i32 %292)
  %294 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %295 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %296 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %294, i32 %295, i32 %296, i32 %297)
  %299 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %300 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %301 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %302 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %14, align 8
  %303 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %299, i32 %300, i32 %301, i32 %305)
  br label %323

307:                                              ; preds = %282
  %308 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %309 = load i32, i32* @AR_PHY_TPC_19, align 4
  %310 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %311 = load i32, i32* %11, align 4
  %312 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %308, i32 %309, i32 %310, i32 %311)
  %313 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %314 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %315 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %316 = load i32, i32* %12, align 4
  %317 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %313, i32 %314, i32 %315, i32 %316)
  %318 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %319 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %320 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %321 = load i32, i32* %13, align 4
  %322 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %318, i32 %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %307, %285
  br label %337

324:                                              ; preds = %275
  %325 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %326 = load i32, i32* @AR_PHY_TPC_19, align 4
  %327 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %328 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %325, i32 %326, i32 %327, i32 0)
  %329 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %330 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %331 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %332 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %329, i32 %330, i32 %331, i32 0)
  %333 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %334 = load i32, i32* @AR_PHY_TPC_19_B2, align 4
  %335 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %336 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %333, i32 %334, i32 %335, i32 0)
  br label %337

337:                                              ; preds = %324, %323
  br label %344

338:                                              ; preds = %271
  %339 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %340 = load i32, i32* @AR_PHY_TPC_19, align 4
  %341 = load i32, i32* @AR_PHY_TPC_19_ALPHA_THERM, align 4
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %339, i32 %340, i32 %341, i32 %342)
  br label %344

344:                                              ; preds = %338, %337
  %345 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %346 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %344
  %349 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %350 = load i32, i32* @AR_PHY_TPC_19_B1, align 4
  %351 = load i32, i32* @AR_PHY_TPC_19_B1_ALPHA_THERM, align 4
  %352 = load i32, i32* %11, align 4
  %353 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %349, i32 %350, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %348, %344
  %355 = load %struct.ath_hw*, %struct.ath_hw** %6, align 8
  %356 = load i32, i32* @AR_PHY_TPC_18, align 4
  %357 = load i32, i32* @AR_PHY_TPC_18_THERM_CAL_VALUE, align 4
  %358 = load i32*, i32** %10, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @REG_RMW_FIELD(%struct.ath_hw* %355, i32 %356, i32 %357, i32 %360)
  ret void
}

declare dso_local i32 @REG_RMW(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_power_interpolate(i32, i32*, i32*, i32) #1

declare dso_local i32 @FBIN2FREQ(i32, i32) #1

declare dso_local i32 @REG_RMW_FIELD(%struct.ath_hw*, i32, i32, i32) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
