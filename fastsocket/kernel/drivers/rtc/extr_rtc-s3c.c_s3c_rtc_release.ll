; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-s3c.c_s3c_rtc_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }

@s3c_rtc_alarmno = common dso_local global i32 0, align 4
@s3c_rtc_tickno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @s3c_rtc_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_rtc_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.platform_device* @to_platform_device(%struct.device* %5)
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.rtc_device* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.rtc_device* %8, %struct.rtc_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call i32 @s3c_rtc_setpie(%struct.device* %9, i32 0)
  %11 = load i32, i32* @s3c_rtc_alarmno, align 4
  %12 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.rtc_device* %12)
  %14 = load i32, i32* @s3c_rtc_tickno, align 4
  %15 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %16 = call i32 @free_irq(i32 %14, %struct.rtc_device* %15)
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @s3c_rtc_setpie(%struct.device*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
