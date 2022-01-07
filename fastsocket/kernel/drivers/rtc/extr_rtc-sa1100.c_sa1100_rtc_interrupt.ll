; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }

@sa1100_rtc_lock = common dso_local global i32 0, align 4
@RTSR = common dso_local global i32 0, align 4
@RTSR_AL = common dso_local global i32 0, align 4
@RTSR_HZ = common dso_local global i32 0, align 4
@RTSR_ALE = common dso_local global i32 0, align 4
@RTSR_HZE = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i64 0, align 8
@RTC_IRQF = common dso_local global i64 0, align 8
@RTC_UF = common dso_local global i64 0, align 8
@rtc_alarm = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sa1100_rtc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.rtc_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.platform_device* @to_platform_device(i8* %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.rtc_device* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.rtc_device* %12, %struct.rtc_device** %6, align 8
  store i64 0, i64* %8, align 8
  %13 = call i32 @spin_lock(i32* @sa1100_rtc_lock)
  %14 = load i32, i32* @RTSR, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* @RTSR, align 4
  %15 = load i32, i32* @RTSR_AL, align 4
  %16 = load i32, i32* @RTSR_HZ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = lshr i32 %18, 2
  %20 = and i32 %17, %19
  store i32 %20, i32* @RTSR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @RTSR_AL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @RTSR_ALE, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @RTSR_ALE, align 4
  %33 = load i32, i32* @RTSR_HZE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  store i32 %35, i32* @RTSR, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RTSR_AL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i64, i64* @RTC_AF, align 8
  %42 = load i64, i64* @RTC_IRQF, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RTSR_HZ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i64, i64* @RTC_UF, align 8
  %53 = load i64, i64* @RTC_IRQF, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.rtc_device*, %struct.rtc_device** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @rtc_update_irq(%struct.rtc_device* %58, i32 1, i64 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RTSR_AL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = call i64 @rtc_periodic_alarm(i32* @rtc_alarm)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @rtc_update_alarm(i32* @rtc_alarm)
  br label %70

70:                                               ; preds = %68, %65, %57
  %71 = call i32 @spin_unlock(i32* @sa1100_rtc_lock)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %72
}

declare dso_local %struct.platform_device* @to_platform_device(i8*) #1

declare dso_local %struct.rtc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtc_update_irq(%struct.rtc_device*, i32, i64) #1

declare dso_local i64 @rtc_periodic_alarm(i32*) #1

declare dso_local i32 @rtc_update_alarm(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
