; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.pwc_device = type { i32, i32 }

@ENODEV = common dso_local global i64 0, align 8
@pwc_video_do_ioctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @pwc_video_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwc_video_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.pwc_device*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.video_device*, %struct.video_device** %11, align 8
  store %struct.video_device* %12, %struct.video_device** %7, align 8
  %13 = load i64, i64* @ENODEV, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.video_device*, %struct.video_device** %7, align 8
  %16 = icmp ne %struct.video_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.video_device*, %struct.video_device** %7, align 8
  %20 = call %struct.pwc_device* @video_get_drvdata(%struct.video_device* %19)
  store %struct.pwc_device* %20, %struct.pwc_device** %8, align 8
  %21 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %22 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @pwc_video_do_ioctl, align 4
  %33 = call i64 @video_usercopy(%struct.file* %29, i32 %30, i64 %31, i32 %32)
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %28, %18
  %35 = load %struct.pwc_device*, %struct.pwc_device** %8, align 8
  %36 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %17
  %39 = load i64, i64* %9, align 8
  ret i64 %39
}

declare dso_local %struct.pwc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @video_usercopy(%struct.file*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
