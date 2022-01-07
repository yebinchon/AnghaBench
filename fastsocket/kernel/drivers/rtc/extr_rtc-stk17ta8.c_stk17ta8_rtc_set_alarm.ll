; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-stk17ta8.c_stk17ta8_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.rtc_plat_data = type { i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @stk17ta8_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk17ta8_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.rtc_plat_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %11 = call %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.rtc_plat_data* %11, %struct.rtc_plat_data** %7, align 8
  %12 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %13 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %25 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %31 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %37 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %43 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %19
  %49 = load i32, i32* @RTC_AF, align 4
  %50 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %51 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %19
  %55 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %56 = call i32 @stk17ta8_rtc_update_alarm(%struct.rtc_plat_data* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
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
