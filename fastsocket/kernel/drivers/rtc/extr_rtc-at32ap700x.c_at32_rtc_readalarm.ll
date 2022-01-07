; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at32ap700x.c_at32_rtc_readalarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-at32ap700x.c_at32_rtc_readalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.rtc_at32ap700x = type { i32, i32 }

@IMR = common dso_local global i32 0, align 4
@IMR_TOPI = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@ISR_TOPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @at32_rtc_readalarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at32_rtc_readalarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca %struct.rtc_at32ap700x*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.rtc_at32ap700x* @dev_get_drvdata(%struct.device* %6)
  store %struct.rtc_at32ap700x* %7, %struct.rtc_at32ap700x** %5, align 8
  %8 = load %struct.rtc_at32ap700x*, %struct.rtc_at32ap700x** %5, align 8
  %9 = getelementptr inbounds %struct.rtc_at32ap700x, %struct.rtc_at32ap700x* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.rtc_at32ap700x*, %struct.rtc_at32ap700x** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_at32ap700x, %struct.rtc_at32ap700x* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %15 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 2
  %16 = call i32 @rtc_time_to_tm(i32 %13, i32* %15)
  %17 = load %struct.rtc_at32ap700x*, %struct.rtc_at32ap700x** %5, align 8
  %18 = load i32, i32* @IMR, align 4
  %19 = call i32 @rtc_readl(%struct.rtc_at32ap700x* %17, i32 %18)
  %20 = load i32, i32* @IMR_TOPI, align 4
  %21 = call i32 @RTC_BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtc_at32ap700x*, %struct.rtc_at32ap700x** %5, align 8
  %29 = load i32, i32* @ISR, align 4
  %30 = call i32 @rtc_readl(%struct.rtc_at32ap700x* %28, i32 %29)
  %31 = load i32, i32* @ISR_TOPI, align 4
  %32 = call i32 @RTC_BIT(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %38 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtc_at32ap700x*, %struct.rtc_at32ap700x** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_at32ap700x, %struct.rtc_at32ap700x* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  ret i32 0
}

declare dso_local %struct.rtc_at32ap700x* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtc_time_to_tm(i32, i32*) #1

declare dso_local i32 @rtc_readl(%struct.rtc_at32ap700x*, i32) #1

declare dso_local i32 @RTC_BIT(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
