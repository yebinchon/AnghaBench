; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_embedded.c_ssb_watchdog_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_embedded.c_ssb_watchdog_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_watchdog_timer_set(%struct.ssb_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssb_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.ssb_bus* %0, %struct.ssb_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %7 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %6, i32 0, i32 1
  %8 = call i64 @ssb_chipco_available(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ssb_chipco_watchdog_timer_set(i32* %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = call i64 @ssb_extif_available(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %4, align 8
  %22 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ssb_extif_watchdog_timer_set(i32* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %20, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @ssb_chipco_available(i32*) #1

declare dso_local i32 @ssb_chipco_watchdog_timer_set(i32*, i32) #1

declare dso_local i64 @ssb_extif_available(i32*) #1

declare dso_local i32 @ssb_extif_watchdog_timer_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
