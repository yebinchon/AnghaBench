; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vino_channel_settings = type { i32 }

@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @vino_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vino_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %10)
  store %struct.vino_channel_settings* %11, %struct.vino_channel_settings** %8, align 8
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EINTR, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @video_ioctl2(%struct.file* %20, i32 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @video_ioctl2(%struct.file*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
