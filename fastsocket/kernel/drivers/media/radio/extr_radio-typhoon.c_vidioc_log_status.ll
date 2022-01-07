; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_vidioc_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-typhoon.c_vidioc_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.typhoon = type { i32, i32, i32, i32, i64, %struct.v4l2_device }
%struct.v4l2_device = type { i32 }

@BANNER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Load type: Driver compiled into kernel\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"frequency = %lu kHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"volume = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"mute = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"io = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"mute frequency = %lu kHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @vidioc_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca %struct.v4l2_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.typhoon* @video_drvdata(%struct.file* %7)
  store %struct.typhoon* %8, %struct.typhoon** %5, align 8
  %9 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %10 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %9, i32 0, i32 5
  store %struct.v4l2_device* %10, %struct.v4l2_device** %6, align 8
  %11 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %12 = load i32, i32* @BANNER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %11, i8* %14)
  %16 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %17 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %19 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %20 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 4
  %23 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %25 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %26 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %30 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %31 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %38 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %39 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load %struct.v4l2_device*, %struct.v4l2_device** %6, align 8
  %43 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %44 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %46)
  ret i32 0
}

declare dso_local %struct.typhoon* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
