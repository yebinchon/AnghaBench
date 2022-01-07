; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1553.c_ds1553_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.platform_device = type { i32 }
%struct.rtc_plat_data = type { i64, i64, i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1553_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1553_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
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
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %21 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %29

25:                                               ; preds = %19
  %26 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %27 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i64 [ 0, %24 ], [ %28, %25 ]
  %31 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %35 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %41 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i64 [ 0, %38 ], [ %42, %39 ]
  %45 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %49 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  %54 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %55 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = phi i64 [ 0, %52 ], [ %56, %53 ]
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i64 %58, i64* %61, align 8
  %62 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %63 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %69 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi i64 [ 0, %66 ], [ %70, %67 ]
  %73 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  %76 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %7, align 8
  %77 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RTC_AF, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %71, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rtc_plat_data* @platform_get_drvdata(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
