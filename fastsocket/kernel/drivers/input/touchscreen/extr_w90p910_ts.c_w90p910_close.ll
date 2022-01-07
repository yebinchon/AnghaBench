; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.w90p910_ts = type { i32, i32, i32, i32, i32 }

@TS_IDLE = common dso_local global i32 0, align 4
@ADC_WAITTRIG = common dso_local global i64 0, align 8
@ADC_DIV = common dso_local global i64 0, align 8
@ADC_EN = common dso_local global i64 0, align 8
@WT_INT_EN = common dso_local global i64 0, align 8
@ADC_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @w90p910_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.w90p910_ts*, align 8
  %4 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.w90p910_ts* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.w90p910_ts* %6, %struct.w90p910_ts** %3, align 8
  %7 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %8 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* @TS_IDLE, align 4
  %11 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %12 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %14 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__raw_readl(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @ADC_WAITTRIG, align 8
  %18 = load i64, i64* @ADC_DIV, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @ADC_EN, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @WT_INT_EN, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @ADC_INT_EN, align 8
  %25 = or i64 %23, %24
  %26 = xor i64 %25, -1
  %27 = load i64, i64* %4, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %31 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__raw_writel(i64 %29, i32 %32)
  %34 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %35 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %38 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %37, i32 0, i32 1
  %39 = call i32 @del_timer_sync(i32* %38)
  %40 = load %struct.w90p910_ts*, %struct.w90p910_ts** %3, align 8
  %41 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_disable(i32 %42)
  ret void
}

declare dso_local %struct.w90p910_ts* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
