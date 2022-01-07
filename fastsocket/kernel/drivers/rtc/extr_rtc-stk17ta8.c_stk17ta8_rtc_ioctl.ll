; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.rtc_plat_data = type { i64, i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @stk17ta8_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk17ta8_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.rtc_plat_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %8, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %13 = call %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.rtc_plat_data* %13, %struct.rtc_plat_data** %9, align 8
  %14 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %15 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOIOCTLCMD, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %40 [
    i32 129, label %23
    i32 128, label %32
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @RTC_AF, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %27 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %31 = call i32 @stk17ta8_rtc_update_alarm(%struct.rtc_plat_data* %30)
  br label %43

32:                                               ; preds = %21
  %33 = load i32, i32* @RTC_AF, align 4
  %34 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %35 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %39 = call i32 @stk17ta8_rtc_update_alarm(%struct.rtc_plat_data* %38)
  br label %43

40:                                               ; preds = %21
  %41 = load i32, i32* @ENOIOCTLCMD, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %32, %23
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @stk17ta8_rtc_update_alarm(%struct.rtc_plat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
