; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.rtc_plat_data = type { i64, i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@RTC_UF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64)* @ds1553_rtc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1553_rtc_ioctl(%struct.device* %0, i32 %1, i64 %2) #0 {
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
  br label %61

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %57 [
    i32 131, label %23
    i32 130, label %32
    i32 129, label %40
    i32 128, label %49
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
  %31 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %30)
  br label %60

32:                                               ; preds = %21
  %33 = load i32, i32* @RTC_AF, align 4
  %34 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %35 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %39 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %38)
  br label %60

40:                                               ; preds = %21
  %41 = load i32, i32* @RTC_UF, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %44 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %48 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %47)
  br label %60

49:                                               ; preds = %21
  %50 = load i32, i32* @RTC_UF, align 4
  %51 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %52 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %9, align 8
  %56 = call i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data* %55)
  br label %60

57:                                               ; preds = %21
  %58 = load i32, i32* @ENOIOCTLCMD, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %49, %40, %32, %23
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %57, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @ds1553_rtc_update_alarm(%struct.rtc_plat_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
