; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271c1_rf_tracking_filter_calibration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271c1_rf_tracking_filter_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32 }

@R_EP1 = common dso_local global i64 0, align 8
@R_EB4 = common dso_local global i64 0, align 8
@R_EB7 = common dso_local global i64 0, align 8
@R_EB14 = common dso_local global i64 0, align 8
@R_EB20 = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EP3 = common dso_local global i64 0, align 8
@R_EB13 = common dso_local global i64 0, align 8
@R_EP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @tda18271c1_rf_tracking_filter_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271c1_rf_tracking_filter_calibration(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tda18271_priv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %13, align 8
  store %struct.tda18271_priv* %14, %struct.tda18271_priv** %8, align 8
  %15 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %16 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %19 = call i32 @tda18271_calc_bp_filter(%struct.dvb_frontend* %18, i32* %6)
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %21 = load i64, i64* @R_EP1, align 8
  %22 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %20, i64 %21, i32 1)
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* @R_EB4, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 7
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* @R_EB4, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %34, 96
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %38 = load i64, i64* @R_EB4, align 8
  %39 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %37, i64 %38, i32 1)
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* @R_EB7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 96, i8* %42, align 1
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %44 = load i64, i64* @R_EB7, align 8
  %45 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %43, i64 %44, i32 1)
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* @R_EB14, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %50 = load i64, i64* @R_EB14, align 8
  %51 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %49, i64 %50, i32 1)
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* @R_EB20, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 -52, i8* %54, align 1
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %56 = load i64, i64* @R_EB20, align 8
  %57 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %55, i64 %56, i32 1)
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* @R_EP4, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, 3
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %60, align 1
  %65 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %66 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %76 [
    i32 129, label %68
    i32 128, label %71
  ]

68:                                               ; preds = %3
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1250000
  store i32 %70, i32* %11, align 4
  br label %76

71:                                               ; preds = %3
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %3, %71, %68
  %77 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @tda18271_calc_cal_pll(%struct.dvb_frontend* %77, i32 %78)
  %80 = load %struct.tda18271_priv*, %struct.tda18271_priv** %8, align 8
  %81 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %92 [
    i32 129, label %83
    i32 128, label %86
  ]

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = sub nsw i32 %84, 250000
  store i32 %85, i32* %11, align 4
  br label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sdiv i32 %88, 2
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 1000000
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %76, %86, %83
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @tda18271_calc_main_pll(%struct.dvb_frontend* %93, i32 %94)
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %97 = load i64, i64* @R_EP3, align 8
  %98 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %96, i64 %97, i32 11)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @tda_fail(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %179

104:                                              ; preds = %92
  %105 = call i32 @msleep(i32 5)
  %106 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %107 = call i32 @tda18271_calc_km(%struct.dvb_frontend* %106, i32* %6)
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %109 = load i64, i64* @R_EB13, align 8
  %110 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %108, i64 %109, i32 1)
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %112 = call i32 @tda18271_calc_rf_band(%struct.dvb_frontend* %111, i32* %6)
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %114 = call i32 @tda18271_calc_gain_taper(%struct.dvb_frontend* %113, i32* %6)
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %116 = load i64, i64* @R_EP2, align 8
  %117 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %115, i64 %116, i32 1)
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %119 = load i64, i64* @R_EP1, align 8
  %120 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %118, i64 %119, i32 1)
  %121 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %122 = load i64, i64* @R_EP2, align 8
  %123 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %121, i64 %122, i32 1)
  %124 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %125 = load i64, i64* @R_EP1, align 8
  %126 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %124, i64 %125, i32 1)
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* @R_EB4, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 7
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %129, align 1
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* @R_EB4, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, 64
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %136, align 1
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %142 = load i64, i64* @R_EB4, align 8
  %143 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %141, i64 %142, i32 1)
  %144 = load i8*, i8** %9, align 8
  %145 = load i64, i64* @R_EB7, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8 64, i8* %146, align 1
  %147 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %148 = load i64, i64* @R_EB7, align 8
  %149 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %147, i64 %148, i32 1)
  %150 = call i32 @msleep(i32 10)
  %151 = load i8*, i8** %9, align 8
  %152 = load i64, i64* @R_EB20, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 -20, i8* %153, align 1
  %154 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %155 = load i64, i64* @R_EB20, align 8
  %156 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %154, i64 %155, i32 1)
  %157 = call i32 @msleep(i32 60)
  %158 = load i8*, i8** %9, align 8
  %159 = load i64, i64* @R_EP4, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, -4
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %166 = load i64, i64* @R_EP4, align 8
  %167 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %165, i64 %166, i32 1)
  %168 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %169 = load i64, i64* @R_EP1, align 8
  %170 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %168, i64 %169, i32 1)
  %171 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %172 = call i64 @tda18271_calc_rf_cal(%struct.dvb_frontend* %171, i32* %6)
  %173 = icmp eq i64 0, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %104
  %175 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %176 = load i64, i64* @R_EB14, align 8
  %177 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %175, i64 %176, i32 1)
  br label %178

178:                                              ; preds = %174, %104
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %102
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @tda18271_calc_bp_filter(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @tda18271_calc_cal_pll(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @tda18271_calc_main_pll(%struct.dvb_frontend*, i32) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @tda18271_calc_km(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_calc_rf_band(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tda18271_calc_gain_taper(%struct.dvb_frontend*, i32*) #1

declare dso_local i64 @tda18271_calc_rf_cal(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
