; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_rf_tracking_filters_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_rf_tracking_filters_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, %struct.tda18271_rf_tracking_filter_cal* }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"freq = %d, rf = %d\0A\00", align 1
@R_EB14 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64)* @tda18271_rf_tracking_filters_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_rf_tracking_filters_init(%struct.dvb_frontend* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tda18271_priv*, align 8
  %7 = alloca %struct.tda18271_rf_tracking_filter_cal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i64], align 16
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i8], align 1
  %17 = alloca [3 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = load %struct.tda18271_priv*, %struct.tda18271_priv** %19, align 8
  store %struct.tda18271_priv* %20, %struct.tda18271_priv** %6, align 8
  %21 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %21, i32 0, i32 1
  %23 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %22, align 8
  store %struct.tda18271_rf_tracking_filter_cal* %23, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %24 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %25 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = call i32 @tda18271_lookup_rf_band(%struct.dvb_frontend* %27, i64* %5, i32* null)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @tda_fail(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %247

34:                                               ; preds = %2
  %35 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %35, i64 %37
  %39 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 1000, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %44, i64 %46
  %48 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 1000, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 1
  store i64 %51, i64* %52, align 8
  %53 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %53, i64 %55
  %57 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 1000, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 2
  store i64 %60, i64* %61, align 16
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %243, %34
  %63 = load i32, i32* %10, align 4
  %64 = icmp sle i32 %63, 2
  br i1 %64, label %65, label %246

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 0, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %247

72:                                               ; preds = %65
  %73 = load i64, i64* %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @tda_cal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %73, i32 %74)
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 %78
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %81
  %83 = call i32 @tda18271_powerscan(%struct.dvb_frontend* %76, i64* %79, i64* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @tda_fail(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %3, align 4
  br label %247

89:                                               ; preds = %72
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %92
  %94 = call i32 @tda18271_calc_rf_cal(%struct.dvb_frontend* %90, i64* %93)
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* @R_EB14, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 %100
  store i8 %98, i8* %101, align 1
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 1, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %89
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call zeroext i8 @tda18271_calibrate_rf(%struct.dvb_frontend* %105, i64 %109)
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 %112
  store i8 %110, i8* %113, align 1
  br label %122

114:                                              ; preds = %89
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 %120
  store i8 %118, i8* %121, align 1
  br label %122

122:                                              ; preds = %114, %104
  %123 = load i32, i32* %10, align 4
  switch i32 %123, label %240 [
    i32 0, label %124
    i32 1, label %150
    i32 2, label %189
  ]

124:                                              ; preds = %122
  %125 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %125, i64 %127
  %129 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %128, i32 0, i32 3
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = sub nsw i32 %132, %135
  %137 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %137, i64 %139
  %141 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %140, i32 0, i32 4
  store i32 %136, i32* %141, align 8
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %143 = load i64, i64* %142, align 16
  %144 = sdiv i64 %143, 1000
  %145 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %145, i64 %147
  %149 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %148, i32 0, i32 9
  store i64 %144, i64* %149, align 8
  br label %242

150:                                              ; preds = %122
  %151 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = sub nsw i32 %153, %156
  %158 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %160, %163
  %165 = sub nsw i32 %157, %164
  store i32 %165, i32* %13, align 4
  %166 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %169 = load i64, i64* %168, align 16
  %170 = sub nsw i64 %167, %169
  %171 = trunc i64 %170 to i32
  %172 = sdiv i32 %171, 1000
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %12, align 4
  %175 = sdiv i32 %173, %174
  %176 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %176, i64 %178
  %180 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %179, i32 0, i32 3
  store i32 %175, i32* %180, align 4
  %181 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = sdiv i64 %182, 1000
  %184 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %184, i64 %186
  %188 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %187, i32 0, i32 8
  store i64 %183, i64* %188, align 8
  br label %242

189:                                              ; preds = %122
  %190 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 2
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = sub nsw i32 %192, %195
  %197 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 1
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %199, %202
  %204 = sub nsw i32 %196, %203
  store i32 %204, i32* %13, align 4
  %205 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %206 = load i64, i64* %205, align 16
  %207 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %206, %208
  %210 = trunc i64 %209 to i32
  %211 = sdiv i32 %210, 1000
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* %12, align 4
  %214 = sdiv i32 %212, %213
  %215 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %215, i64 %217
  %219 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %218, i32 0, i32 5
  store i32 %214, i32* %219, align 4
  %220 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 1
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = sub nsw i32 %222, %225
  %227 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %227, i64 %229
  %231 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %230, i32 0, i32 6
  store i32 %226, i32* %231, align 8
  %232 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  %233 = load i64, i64* %232, align 16
  %234 = sdiv i64 %233, 1000
  %235 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %235, i64 %237
  %239 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %238, i32 0, i32 7
  store i64 %234, i64* %239, align 8
  br label %242

240:                                              ; preds = %122
  %241 = call i32 (...) @BUG()
  br label %242

242:                                              ; preds = %240, %189, %150, %124
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  br label %62

246:                                              ; preds = %62
  store i32 0, i32* %3, align 4
  br label %247

247:                                              ; preds = %246, %87, %71, %32
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @tda18271_lookup_rf_band(%struct.dvb_frontend*, i64*, i32*) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda_cal(i8*, i64, i32) #1

declare dso_local i32 @tda18271_powerscan(%struct.dvb_frontend*, i64*, i64*) #1

declare dso_local i32 @tda18271_calc_rf_cal(%struct.dvb_frontend*, i64*) #1

declare dso_local zeroext i8 @tda18271_calibrate_rf(%struct.dvb_frontend*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
