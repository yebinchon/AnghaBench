; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_power_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_set_power_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy* }
%struct.ar9170_calibration_target_power_ht = type { i32, i32* }
%struct.ar9170_calibration_target_power_legacy = type { i32, i32* }

@AR5416_MAX_NUM_TGT_PWRS = common dso_local global i32 0, align 4
@AR5416_NUM_5G_TARGET_PWRS = common dso_local global i32 0, align 4
@AR5416_NUM_2G_CCK_TARGET_PWRS = common dso_local global i32 0, align 4
@AR5416_NUM_2G_OFDM_TARGET_PWRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32, i32)* @carl9170_set_power_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_set_power_cal(%struct.ar9170* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ar9170_calibration_target_power_legacy*, align 8
  %8 = alloca %struct.ar9170_calibration_target_power_ht*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* @AR5416_MAX_NUM_TGT_PWRS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %15, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %16, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 3000
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 2300
  store i32 %25, i32* %14, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 4800
  %29 = sdiv i32 %28, 5
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %26, %23
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %150, %30
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %153

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  switch i32 %35, label %66 [
    i32 0, label %36
    i32 1, label %46
    i32 2, label %56
  ]

36:                                               ; preds = %34
  %37 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %38 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %39, align 8
  %41 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %40, i64 0
  store %struct.ar9170_calibration_target_power_legacy* %41, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %42 = load i32, i32* @AR5416_NUM_5G_TARGET_PWRS, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  br label %68

46:                                               ; preds = %34
  %47 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %48 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  %50 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %49, align 8
  %51 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %50, i64 0
  store %struct.ar9170_calibration_target_power_legacy* %51, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %52 = load i32, i32* @AR5416_NUM_2G_CCK_TARGET_PWRS, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %54 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %9, align 8
  br label %68

56:                                               ; preds = %34
  %57 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %58 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  %60 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %59, align 8
  %61 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %60, i64 0
  store %struct.ar9170_calibration_target_power_legacy* %61, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %62 = load i32, i32* @AR5416_NUM_2G_OFDM_TARGET_PWRS, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %64 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %9, align 8
  br label %68

66:                                               ; preds = %34
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %56, %46, %36
  store i32 0, i32* %13, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %74, i64 %76
  %78 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 255
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %95

82:                                               ; preds = %73
  %83 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %83, i64 %85
  %87 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %20, i64 %90
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %69

95:                                               ; preds = %81, %69
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @carl9170_find_freq_idx(i32 %97, i32* %20, i32 %98)
  store i32 %99, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %100

100:                                              ; preds = %146, %95
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %149

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 0
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %105, i64 %108
  %110 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 0
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %112, i64 %115
  %117 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %123, i64 %126
  %128 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ar9170_calibration_target_power_legacy*, %struct.ar9170_calibration_target_power_legacy** %7, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %130, i64 %133
  %135 = getelementptr inbounds %struct.ar9170_calibration_target_power_legacy, %struct.ar9170_calibration_target_power_legacy* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %13, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @carl9170_interpolate_u8(i32 %104, i32 %111, i32 %122, i32 %129, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %103
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %100

149:                                              ; preds = %100
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %31

153:                                              ; preds = %31
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %283, %153
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %286

157:                                              ; preds = %154
  %158 = load i32, i32* %12, align 4
  switch i32 %158, label %199 [
    i32 0, label %159
    i32 1, label %169
    i32 2, label %179
    i32 3, label %189
  ]

159:                                              ; preds = %157
  %160 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %161 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %162, align 8
  %164 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %163, i64 0
  store %struct.ar9170_calibration_target_power_ht* %164, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %165 = load i32, i32* @AR5416_NUM_5G_TARGET_PWRS, align 4
  store i32 %165, i32* %10, align 4
  %166 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %167 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %9, align 8
  br label %201

169:                                              ; preds = %157
  %170 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %171 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %170, i32 0, i32 7
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %172, align 8
  %174 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %173, i64 0
  store %struct.ar9170_calibration_target_power_ht* %174, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %175 = load i32, i32* @AR5416_NUM_5G_TARGET_PWRS, align 4
  store i32 %175, i32* %10, align 4
  %176 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %177 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  store i32* %178, i32** %9, align 8
  br label %201

179:                                              ; preds = %157
  %180 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %181 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %182, align 8
  %184 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %183, i64 0
  store %struct.ar9170_calibration_target_power_ht* %184, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %185 = load i32, i32* @AR5416_NUM_2G_OFDM_TARGET_PWRS, align 4
  store i32 %185, i32* %10, align 4
  %186 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %187 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %9, align 8
  br label %201

189:                                              ; preds = %157
  %190 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %191 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %190, i32 0, i32 7
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %192, align 8
  %194 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %193, i64 0
  store %struct.ar9170_calibration_target_power_ht* %194, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %195 = load i32, i32* @AR5416_NUM_2G_OFDM_TARGET_PWRS, align 4
  store i32 %195, i32* %10, align 4
  %196 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %197 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %196, i32 0, i32 6
  %198 = load i32*, i32** %197, align 8
  store i32* %198, i32** %9, align 8
  br label %201

199:                                              ; preds = %157
  %200 = call i32 (...) @BUG()
  br label %201

201:                                              ; preds = %199, %189, %179, %169, %159
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %225, %201
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  %207 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %207, i64 %209
  %211 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 255
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %228

215:                                              ; preds = %206
  %216 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %216, i64 %218
  %220 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %20, i64 %223
  store i32 %221, i32* %224, align 4
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %202

228:                                              ; preds = %214, %202
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %14, align 4
  %232 = call i32 @carl9170_find_freq_idx(i32 %230, i32* %20, i32 %231)
  store i32 %232, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %233

233:                                              ; preds = %279, %228
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %234, 8
  br i1 %235, label %236, label %282

236:                                              ; preds = %233
  %237 = load i32, i32* %14, align 4
  %238 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 0
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %238, i64 %241
  %243 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 0
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %245, i64 %248
  %250 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %257 = load i32, i32* %11, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %256, i64 %259
  %261 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.ar9170_calibration_target_power_ht*, %struct.ar9170_calibration_target_power_ht** %8, align 8
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %263, i64 %266
  %268 = getelementptr inbounds %struct.ar9170_calibration_target_power_ht, %struct.ar9170_calibration_target_power_ht* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @carl9170_interpolate_u8(i32 %237, i32 %244, i32 %255, i32 %262, i32 %273)
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %274, i32* %278, align 4
  br label %279

279:                                              ; preds = %236
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %13, align 4
  br label %233

282:                                              ; preds = %233
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %12, align 4
  br label %154

286:                                              ; preds = %154
  %287 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* %6, align 4
  %290 = call i32 @carl9170_calc_ctl(%struct.ar9170* %287, i32 %288, i32 %289)
  %291 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %291)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @carl9170_find_freq_idx(i32, i32*, i32) #2

declare dso_local i32 @carl9170_interpolate_u8(i32, i32, i32, i32, i32) #2

declare dso_local i32 @carl9170_calc_ctl(%struct.ar9170*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
