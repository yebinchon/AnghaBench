; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_gather_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_gather_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@IPW_ORD_STAT_MISSED_BEACONS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPW_STATS_INTERVAL = common dso_local global i32 0, align 4
@IPW_ORD_STAT_RX_ERR_CRC = common dso_local global i32 0, align 4
@IPW_ORD_STAT_TX_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Missed beacon: %3d%% (%d%%)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Rate quality : %3d%% (%dMbs)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Rx quality   : %3d%% (%u errors, %u packets)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Tx quality   : %3d%% (%u errors, %u packets)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Signal level : %3d%% (%d dBm)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Quality (%d%%): Clamped to missed beacons.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Quality (%d%%): Clamped to rate quality.\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Quality (%d%%): Clamped to Tx quality.\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Quality (%d%%): Clamped to Rx quality.\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Quality (%d%%): Clamped to signal quality.\0A\00", align 1
@BEACON_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_gather_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_gather_stats(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
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
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 0, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  br label %339

29:                                               ; preds = %1
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = load i32, i32* @IPW_ORD_STAT_MISSED_BEACONS, align 4
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 2
  %34 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %30, i32 %31, i32* %33, i32* %12)
  %35 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %48 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %29
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @HZ, align 4
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %56 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %55, i32 0, i32 15
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le16_to_cpu(i64 %58)
  %60 = mul nsw i32 %54, %59
  %61 = mul nsw i32 %53, %60
  %62 = load i32, i32* @IPW_STATS_INTERVAL, align 4
  %63 = mul nsw i32 %62, 10
  %64 = sdiv i32 %61, %63
  store i32 %64, i32* %9, align 4
  br label %66

65:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 14
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @average_add(i32* %68, i32 %69)
  %71 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %72 = load i32, i32* @IPW_ORD_STAT_RX_ERR_CRC, align 4
  %73 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %71, i32 %72, i32* %3, i32* %12)
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %76 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %81 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %83 = load i32, i32* @IPW_ORD_STAT_TX_FAILURE, align 4
  %84 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %82, i32 %83, i32* %6, i32* %12)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %87 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %92 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %97 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  store i32 %99, i32* %5, align 4
  %100 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %101 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %104 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %106 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %109 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  store i32 %111, i32* %8, align 4
  %112 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %113 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %116 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 100, %117
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 5
  br i1 %120, label %121, label %122

121:                                              ; preds = %66
  store i32 0, i32* %14, align 4
  br label %127

122:                                              ; preds = %66
  %123 = load i32, i32* %14, align 4
  %124 = sub nsw i32 %123, 5
  %125 = mul nsw i32 %124, 100
  %126 = sdiv i32 %125, 95
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %122, %121
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %132 = call i32 @ipw_get_current_rate(%struct.ipw_priv* %131)
  %133 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %134 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %136 = call i32 @ipw_get_max_rate(%struct.ipw_priv* %135)
  store i32 %136, i32* %19, align 4
  %137 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %138 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %139, 40
  %141 = load i32, i32* %19, align 4
  %142 = sdiv i32 %140, %141
  %143 = add nsw i32 %142, 60
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %146 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = sdiv i32 %147, 1000000
  %149 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = icmp sgt i32 %150, 100
  br i1 %151, label %152, label %165

152:                                              ; preds = %127
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* %4, align 4
  %159 = mul nsw i32 %158, 100
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %160, %161
  %163 = sdiv i32 %159, %162
  %164 = sub nsw i32 100, %163
  store i32 %164, i32* %17, align 4
  br label %166

165:                                              ; preds = %152, %127
  store i32 100, i32* %17, align 4
  br label %166

166:                                              ; preds = %165, %157
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = icmp sgt i32 %171, 100
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load i32, i32* %7, align 4
  %180 = mul nsw i32 %179, 100
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %181, %182
  %184 = sdiv i32 %180, %183
  %185 = sub nsw i32 100, %184
  store i32 %185, i32* %16, align 4
  br label %187

186:                                              ; preds = %173, %166
  store i32 100, i32* %16, align 4
  br label %187

187:                                              ; preds = %186, %178
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %188, i32 %189, i32 %190)
  %192 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %193 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %192, i32 0, i32 13
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %13, align 4
  %195 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %196 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %195, i32 0, i32 12
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %201 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %200, i32 0, i32 12
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %199, %204
  %206 = mul nsw i32 100, %205
  %207 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %208 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %207, i32 0, i32 12
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %213 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %212, i32 0, i32 12
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %211, %216
  %218 = mul nsw i32 %206, %217
  %219 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %220 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %219, i32 0, i32 12
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %13, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %227 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %226, i32 0, i32 12
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %232 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %231, i32 0, i32 12
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %230, %235
  %237 = mul nsw i32 15, %236
  %238 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %239 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %238, i32 0, i32 12
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %13, align 4
  %244 = sub nsw i32 %242, %243
  %245 = mul nsw i32 62, %244
  %246 = add nsw i32 %237, %245
  %247 = mul nsw i32 %225, %246
  %248 = sub nsw i32 %218, %247
  %249 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %250 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %249, i32 0, i32 12
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %255 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %254, i32 0, i32 12
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %253, %258
  %260 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %261 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %260, i32 0, i32 12
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %266 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %265, i32 0, i32 12
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %264, %269
  %271 = mul nsw i32 %259, %270
  %272 = sdiv i32 %248, %271
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp sgt i32 %273, 100
  br i1 %274, label %275, label %276

275:                                              ; preds = %187
  store i32 100, i32* %15, align 4
  br label %281

276:                                              ; preds = %187
  %277 = load i32, i32* %15, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  store i32 0, i32* %15, align 4
  br label %280

280:                                              ; preds = %279, %276
  br label %281

281:                                              ; preds = %280, %275
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* %13, align 4
  %284 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %282, i32 %283)
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %15, align 4
  %287 = call i32 @min(i32 %285, i32 %286)
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @min(i32 %288, i32 %289)
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* %18, align 4
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @min(i32 %291, i32 %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %14, align 4
  %295 = load i32, i32* %11, align 4
  %296 = call i32 @min(i32 %294, i32 %295)
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %14, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %281
  %301 = load i32, i32* %11, align 4
  %302 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %300, %281
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %18, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* %11, align 4
  %309 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %307, %303
  %311 = load i32, i32* %11, align 4
  %312 = load i32, i32* %16, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %317

314:                                              ; preds = %310
  %315 = load i32, i32* %11, align 4
  %316 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %315)
  br label %317

317:                                              ; preds = %314, %310
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* %17, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load i32, i32* %11, align 4
  %323 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %321, %317
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %15, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load i32, i32* %11, align 4
  %330 = call i32 (i8*, i32, ...) @IPW_DEBUG_STATS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %328, %324
  %332 = load i32, i32* %11, align 4
  %333 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %334 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %333, i32 0, i32 1
  store i32 %332, i32* %334, align 4
  %335 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %336 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %335, i32 0, i32 11
  %337 = load i32, i32* @IPW_STATS_INTERVAL, align 4
  %338 = call i32 @schedule_delayed_work(i32* %336, i32 %337)
  br label %339

339:                                              ; preds = %331, %26
  ret void
}

declare dso_local i32 @ipw_get_ordinal(%struct.ipw_priv*, i32, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @average_add(i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_STATS(i8*, i32, ...) #1

declare dso_local i32 @ipw_get_current_rate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_get_max_rate(%struct.ipw_priv*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
