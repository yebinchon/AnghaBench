; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.w90p910_ts = type { i64, i32, i32 }

@ADC_RST1 = common dso_local global i64 0, align 8
@ADC_RST0 = common dso_local global i64 0, align 8
@TSC_FOURWIRE = common dso_local global i64 0, align 8
@ADC_DELAY = common dso_local global i64 0, align 8
@TS_WAIT_NEW_PACKET = common dso_local global i32 0, align 4
@ADC_WAITTRIG = common dso_local global i64 0, align 8
@ADC_DIV = common dso_local global i64 0, align 8
@ADC_EN = common dso_local global i64 0, align 8
@WT_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @w90p910_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.w90p910_ts*, align 8
  %4 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.w90p910_ts* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.w90p910_ts* %6, %struct.w90p910_ts** %3, align 8
  %7 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %8 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_enable(i32 %9)
  %11 = load i64, i64* @ADC_RST1, align 8
  %12 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %13 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @__raw_writel(i64 %11, i64 %14)
  %16 = call i32 @msleep(i32 1)
  %17 = load i64, i64* @ADC_RST0, align 8
  %18 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %19 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @__raw_writel(i64 %17, i64 %20)
  %22 = call i32 @msleep(i32 1)
  %23 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %24 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 4
  %27 = call i64 @__raw_readl(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @TSC_FOURWIRE, align 8
  %30 = and i64 %28, %29
  %31 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %32 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @__raw_writel(i64 %30, i64 %34)
  %36 = load i64, i64* @ADC_DELAY, align 8
  %37 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %38 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 8
  %41 = call i32 @__raw_writel(i64 %36, i64 %40)
  %42 = load i32, i32* @TS_WAIT_NEW_PACKET, align 4
  %43 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %44 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @wmb()
  %46 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %47 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @__raw_readl(i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* @ADC_WAITTRIG, align 8
  %51 = load i64, i64* @ADC_DIV, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @ADC_EN, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* @WT_INT_EN, align 8
  %56 = or i64 %54, %55
  %57 = load i64, i64* %4, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %61 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @__raw_writel(i64 %59, i64 %62)
  ret i32 0
}

declare dso_local %struct.w90p910_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
