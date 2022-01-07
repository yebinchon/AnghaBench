; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-coh901331.c_coh901331_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-coh901331.c_coh901331_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.coh901331_port = type { i32, i64 }

@COH901331_ALARM = common dso_local global i64 0, align 8
@COH901331_IRQ_EVENT = common dso_local global i64 0, align 8
@COH901331_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @coh901331_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901331_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.coh901331_port*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.coh901331_port* @dev_get_drvdata(%struct.device* %6)
  store %struct.coh901331_port* %7, %struct.coh901331_port** %5, align 8
  %8 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %9 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @clk_enable(i32 %10)
  %12 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %13 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @COH901331_ALARM, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 2
  %20 = call i32 @rtc_time_to_tm(i32 %17, i32* %19)
  %21 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %22 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @COH901331_IRQ_EVENT, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = and i32 %26, 1
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %31 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @COH901331_IRQ_MASK, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  %36 = and i32 %35, 1
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.coh901331_port*, %struct.coh901331_port** %5, align 8
  %40 = getelementptr inbounds %struct.coh901331_port, %struct.coh901331_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_disable(i32 %41)
  ret i32 0
}

declare dso_local %struct.coh901331_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @rtc_time_to_tm(i32, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
