; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pxa.c_pxa_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa_rtc = type { i32 }

@RTSR_RDALE1 = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @pxa_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pxa_rtc*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.pxa_rtc* @dev_get_drvdata(%struct.device* %9)
  store %struct.pxa_rtc* %10, %struct.pxa_rtc** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %12 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %31 [
    i32 131, label %15
    i32 130, label %19
    i32 129, label %23
    i32 128, label %27
  ]

15:                                               ; preds = %3
  %16 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %17 = load i32, i32* @RTSR_RDALE1, align 4
  %18 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %16, i32 %17)
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %21 = load i32, i32* @RTSR_RDALE1, align 4
  %22 = call i32 @rtsr_set_bits(%struct.pxa_rtc* %20, i32 %21)
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %25 = load i32, i32* @RTSR_HZE, align 4
  %26 = call i32 @rtsr_clear_bits(%struct.pxa_rtc* %24, i32 %25)
  br label %34

27:                                               ; preds = %3
  %28 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %29 = load i32, i32* @RTSR_HZE, align 4
  %30 = call i32 @rtsr_set_bits(%struct.pxa_rtc* %28, i32 %29)
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOIOCTLCMD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %27, %23, %19, %15
  %35 = load %struct.pxa_rtc*, %struct.pxa_rtc** %7, align 8
  %36 = getelementptr inbounds %struct.pxa_rtc, %struct.pxa_rtc* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.pxa_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rtsr_clear_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @rtsr_set_bits(%struct.pxa_rtc*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
