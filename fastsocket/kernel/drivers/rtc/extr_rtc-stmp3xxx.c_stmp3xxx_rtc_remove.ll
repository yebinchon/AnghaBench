; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stmp3xxx.c_stmp3xxx_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stmp3xxx_rtc_data = type { i64, i32, i32, i32 }

@BM_RTC_CTRL_ONEMSEC_IRQ_EN = common dso_local global i32 0, align 4
@BM_RTC_CTRL_ALARM_IRQ_EN = common dso_local global i32 0, align 4
@HW_RTC_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmp3xxx_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmp3xxx_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmp3xxx_rtc_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.stmp3xxx_rtc_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.stmp3xxx_rtc_data* %6, %struct.stmp3xxx_rtc_data** %4, align 8
  %7 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %8 = icmp ne %struct.stmp3xxx_rtc_data* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* @BM_RTC_CTRL_ONEMSEC_IRQ_EN, align 4
  %12 = load i32, i32* @BM_RTC_CTRL_ALARM_IRQ_EN, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %15 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HW_RTC_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @stmp3xxx_clearl(i32 %13, i64 %18)
  %20 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %21 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @free_irq(i32 %22, i32* %24)
  %26 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %27 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @free_irq(i32 %28, i32* %30)
  %32 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %33 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rtc_device_unregister(i32 %34)
  %36 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %37 = getelementptr inbounds %struct.stmp3xxx_rtc_data, %struct.stmp3xxx_rtc_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @iounmap(i64 %38)
  %40 = load %struct.stmp3xxx_rtc_data*, %struct.stmp3xxx_rtc_data** %4, align 8
  %41 = call i32 @kfree(%struct.stmp3xxx_rtc_data* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %10, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.stmp3xxx_rtc_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @rtc_device_unregister(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @kfree(%struct.stmp3xxx_rtc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
