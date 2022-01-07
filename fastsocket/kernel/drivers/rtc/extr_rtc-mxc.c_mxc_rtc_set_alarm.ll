; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-mxc.c_mxc_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-mxc.c_mxc_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.rtc_plat_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_ALM_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mxc_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.rtc_plat_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = call %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.rtc_plat_data* %12, %struct.rtc_plat_data** %7, align 8
  %13 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %14 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %15 = call i32 @rtc_valid_tm(%struct.TYPE_4__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %19 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 59
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %25 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 23
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %31 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 59
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23, %17
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %41 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %40, i32 0, i32 1
  %42 = call i32 @rtc_update_alarm(%struct.device* %39, %struct.TYPE_4__* %41)
  store i32 %42, i32* %8, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %44, i32 0, i32 1
  %46 = call i32 @rtc_valid_tm(%struct.TYPE_4__* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %54 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %53, i32 0, i32 1
  %55 = call i32 @rtc_update_alarm(%struct.device* %52, %struct.TYPE_4__* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %51, %38
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %56
  %62 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %63 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %62, i32 0, i32 0
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 1
  %66 = call i32 @memcpy(i32* %63, %struct.TYPE_4__* %65, i32 4)
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load i32, i32* @RTC_ALM_BIT, align 4
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mxc_rtc_irq_enable(%struct.device* %67, i32 %68, i32 %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %59, %49, %35
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @rtc_valid_tm(%struct.TYPE_4__*) #1

declare dso_local i32 @rtc_update_alarm(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mxc_rtc_irq_enable(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
