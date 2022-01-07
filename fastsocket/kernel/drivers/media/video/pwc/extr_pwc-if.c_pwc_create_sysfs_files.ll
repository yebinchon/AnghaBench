; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_create_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_create_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.pwc_device = type { i32 }

@dev_attr_button = common dso_local global i32 0, align 4
@FEATURE_MOTOR_PANTILT = common dso_local global i32 0, align 4
@dev_attr_pan_tilt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not create sysfs files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_device*)* @pwc_create_sysfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_create_sysfs_files(%struct.video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i32, align 4
  store %struct.video_device* %0, %struct.video_device** %3, align 8
  %6 = load %struct.video_device*, %struct.video_device** %3, align 8
  %7 = call %struct.pwc_device* @video_get_drvdata(%struct.video_device* %6)
  store %struct.pwc_device* %7, %struct.pwc_device** %4, align 8
  %8 = load %struct.video_device*, %struct.video_device** %3, align 8
  %9 = getelementptr inbounds %struct.video_device, %struct.video_device* %8, i32 0, i32 0
  %10 = call i32 @device_create_file(i32* %9, i32* @dev_attr_button)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FEATURE_MOTOR_PANTILT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.video_device*, %struct.video_device** %3, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 0
  %24 = call i32 @device_create_file(i32* %23, i32* @dev_attr_pan_tilt)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %14
  store i32 0, i32* %2, align 4
  br label %37

30:                                               ; preds = %27
  %31 = load %struct.video_device*, %struct.video_device** %3, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  %33 = call i32 @device_remove_file(i32* %32, i32* @dev_attr_button)
  br label %34

34:                                               ; preds = %30, %13
  %35 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.pwc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @PWC_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
