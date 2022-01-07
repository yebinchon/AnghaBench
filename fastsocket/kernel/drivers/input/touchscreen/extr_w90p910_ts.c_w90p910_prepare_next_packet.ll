; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_prepare_next_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_w90p910_ts.c_w90p910_prepare_next_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w90p910_ts = type { i32, i32 }

@ADC_INT = common dso_local global i64 0, align 8
@ADC_INT_EN = common dso_local global i64 0, align 8
@ADC_SEMIAUTO = common dso_local global i64 0, align 8
@ADC_CONV = common dso_local global i64 0, align 8
@ADC_WAITTRIG = common dso_local global i64 0, align 8
@WT_INT_EN = common dso_local global i64 0, align 8
@TS_WAIT_NEW_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w90p910_ts*)* @w90p910_prepare_next_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w90p910_prepare_next_packet(%struct.w90p910_ts* %0) #0 {
  %2 = alloca %struct.w90p910_ts*, align 8
  %3 = alloca i64, align 8
  store %struct.w90p910_ts* %0, %struct.w90p910_ts** %2, align 8
  %4 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %5 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @__raw_readl(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* @ADC_INT, align 8
  %9 = load i64, i64* @ADC_INT_EN, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @ADC_SEMIAUTO, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @ADC_CONV, align 8
  %14 = or i64 %12, %13
  %15 = xor i64 %14, -1
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* @ADC_WAITTRIG, align 8
  %19 = load i64, i64* @WT_INT_EN, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* %3, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %25 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__raw_writel(i64 %23, i32 %26)
  %28 = load i32, i32* @TS_WAIT_NEW_PACKET, align 4
  %29 = load %struct.w90p910_ts*, %struct.w90p910_ts** %2, align 8
  %30 = getelementptr inbounds %struct.w90p910_ts, %struct.w90p910_ts* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
