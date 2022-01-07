; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_sysfs_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sysfs.c_rtc_sysfs_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dev_attr_wakealarm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to create alarm attribute, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtc_sysfs_add_device(%struct.rtc_device* %0) #0 {
  %2 = alloca %struct.rtc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.rtc_device* %0, %struct.rtc_device** %2, align 8
  %4 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %5 = call i32 @rtc_does_wakealarm(%struct.rtc_device* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %10 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %9, i32 0, i32 0
  %11 = call i32 @device_create_file(%struct.TYPE_2__* %10, i32* @dev_attr_wakealarm)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.rtc_device*, %struct.rtc_device** %2, align 8
  %16 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %7, %14, %8
  ret void
}

declare dso_local i32 @rtc_does_wakealarm(%struct.rtc_device*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
