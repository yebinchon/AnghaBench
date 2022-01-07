; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_sysfs_set_wakealarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_sysfs_set_wakealarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.rtc_device = type { i32 }

@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @rtc_sysfs_set_wakealarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtc_sysfs_set_wakealarm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtc_wkalrm, align 4
  %14 = alloca %struct.rtc_device*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.rtc_device* @to_rtc_device(%struct.device* %17)
  store %struct.rtc_device* %18, %struct.rtc_device** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.rtc_device*, %struct.rtc_device** %14, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %21 = call i64 @rtc_read_time(%struct.rtc_device* %19, i32* %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %84

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %28 = call i32 @rtc_tm_to_time(i32* %27, i64* %11)
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 43
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %15, align 8
  store i32 1, i32* %16, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = load i8*, i8** %15, align 8
  %39 = call i64 @simple_strtoul(i8* %38, i32* null, i32 0)
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.rtc_device*, %struct.rtc_device** %14, align 8
  %52 = call i64 @rtc_read_alarm(%struct.rtc_device* %51, %struct.rtc_wkalrm* %13)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %5, align 8
  br label %84

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i64, i64* @EBUSY, align 8
  %63 = sub nsw i64 0, %62
  store i64 %63, i64* %5, align 8
  br label %84

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %70

66:                                               ; preds = %46
  %67 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 300
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %66, %64
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %13, i32 0, i32 1
  %73 = call i32 @rtc_time_to_tm(i64 %71, i32* %72)
  %74 = load %struct.rtc_device*, %struct.rtc_device** %14, align 8
  %75 = call i64 @rtc_set_alarm(%struct.rtc_device* %74, %struct.rtc_wkalrm* %13)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i64, i64* %10, align 8
  br label %82

80:                                               ; preds = %70
  %81 = load i64, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %82, %61, %55, %24
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local %struct.rtc_device* @to_rtc_device(%struct.device*) #1

declare dso_local i64 @rtc_read_time(%struct.rtc_device*, i32*) #1

declare dso_local i32 @rtc_tm_to_time(i32*, i64*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @rtc_read_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #1

declare dso_local i64 @rtc_set_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
