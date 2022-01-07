; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271c2_rf_tracking_filters_correction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271c2_rf_tracking_filters_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32, %struct.tda18271_rf_tracking_filter_cal* }
%struct.tda18271_rf_tracking_filter_cal = type { i64, i32, i32, i32, i32, i32, i32 }

@R_EB14 = common dso_local global i64 0, align 8
@RF_CAL_DC_OVER_DT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda18271c2_rf_tracking_filters_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271c2_rf_tracking_filters_correction(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda18271_priv*, align 8
  %7 = alloca %struct.tda18271_rf_tracking_filter_cal*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.tda18271_priv*, %struct.tda18271_priv** %17, align 8
  store %struct.tda18271_priv* %18, %struct.tda18271_priv** %6, align 8
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %20 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %19, i32 0, i32 2
  %21 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %20, align 8
  store %struct.tda18271_rf_tracking_filter_cal* %21, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %22 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %23 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %8, align 8
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %26 = call i32 @tda18271_set_standby_mode(%struct.dvb_frontend* %25, i32 0, i32 0, i32 0)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @tda_fail(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %148

31:                                               ; preds = %2
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = call i32 @tda18271_read_thermometer(%struct.dvb_frontend* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %35 = call i32 @tda18271_calc_rf_cal(%struct.dvb_frontend* %34, i32* %5)
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* @R_EB14, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = call i32 @tda18271_lookup_rf_band(%struct.dvb_frontend* %41, i32* %5, i32* null)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @tda_fail(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %150

48:                                               ; preds = %31
  %49 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %49, i64 %51
  %53 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 0, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = sdiv i32 %57, 1000
  %59 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %59, i64 %61
  %63 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %58, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %56, %48
  %67 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %67, i64 %69
  %71 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %73, 1000
  %75 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %75, i64 %77
  %79 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %74, %80
  %82 = mul nsw i32 %72, %81
  %83 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %83, i64 %85
  %87 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %82, %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %15, align 4
  br label %118

92:                                               ; preds = %56
  %93 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %93, i64 %95
  %97 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sdiv i32 %99, 1000
  %101 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %101, i64 %103
  %105 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %100, %106
  %108 = mul nsw i32 %98, %107
  %109 = load %struct.tda18271_rf_tracking_filter_cal*, %struct.tda18271_rf_tracking_filter_cal** %7, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %109, i64 %111
  %113 = getelementptr inbounds %struct.tda18271_rf_tracking_filter_cal, %struct.tda18271_rf_tracking_filter_cal* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %108, %114
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %92, %66
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 255
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 255, i32* %15, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %128 = load i32, i32* @RF_CAL_DC_OVER_DT, align 4
  %129 = call i32 @tda18271_lookup_map(%struct.dvb_frontend* %127, i32 %128, i32* %5, i32* %12)
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %133 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %131, %134
  %136 = mul nsw i32 %130, %135
  %137 = sdiv i32 %136, 1000
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %138, %139
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %8, align 8
  %143 = load i64, i64* @R_EB14, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  store i8 %141, i8* %144, align 1
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %146 = load i64, i64* @R_EB14, align 8
  %147 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %145, i64 %146, i32 1)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %126, %30
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %46
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @tda18271_set_standby_mode(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda18271_read_thermometer(%struct.dvb_frontend*) #1

declare dso_local i32 @tda18271_calc_rf_cal(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_lookup_rf_band(%struct.dvb_frontend*, i32*, i32*) #1

declare dso_local i32 @tda18271_lookup_map(%struct.dvb_frontend*, i32, i32*, i32*) #1

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
