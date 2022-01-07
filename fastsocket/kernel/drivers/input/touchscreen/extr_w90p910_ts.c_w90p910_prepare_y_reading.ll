; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_prepare_y_reading.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_prepare_y_reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w90p910_ts = type { i32, i64 }

@ADC_TSC_Y = common dso_local global i64 0, align 8
@ADC_WAITTRIG = common dso_local global i64 0, align 8
@ADC_INT = common dso_local global i64 0, align 8
@WT_INT_EN = common dso_local global i64 0, align 8
@ADC_SEMIAUTO = common dso_local global i64 0, align 8
@ADC_INT_EN = common dso_local global i64 0, align 8
@ADC_CONV = common dso_local global i64 0, align 8
@TS_WAIT_Y_COORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w90p910_ts*)* @w90p910_prepare_y_reading to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_prepare_y_reading(%struct.w90p910_ts* %0) #0 {
  %2 = alloca %struct.w90p910_ts*, align 8
  %3 = alloca i64, align 8
  store %struct.w90p910_ts* %0, %struct.w90p910_ts** %2, align 8
  %4 = load i64, i64* @ADC_TSC_Y, align 8
  %5 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %6 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 4
  %9 = call i32 @__raw_writel(i64 %4, i64 %8)
  %10 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %11 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @__raw_readl(i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* @ADC_WAITTRIG, align 8
  %15 = load i64, i64* @ADC_INT, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @WT_INT_EN, align 8
  %18 = or i64 %16, %17
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @ADC_SEMIAUTO, align 8
  %23 = load i64, i64* @ADC_INT_EN, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @ADC_CONV, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* %3, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %31 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @__raw_writel(i64 %29, i64 %32)
  %34 = load i32, i32* @TS_WAIT_Y_COORD, align 4
  %35 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %36 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i64 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
