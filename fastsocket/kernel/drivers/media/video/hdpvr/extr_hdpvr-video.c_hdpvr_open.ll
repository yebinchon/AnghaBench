; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"open failing with with ENODEV\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @hdpvr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_open(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.hdpvr_device*, align 8
  %4 = alloca %struct.hdpvr_fh*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = call i32 @video_devdata(%struct.file* %8)
  %10 = call i64 @video_get_drvdata(i32 %9)
  %11 = inttoptr i64 %10 to %struct.hdpvr_device*
  store %struct.hdpvr_device* %11, %struct.hdpvr_device** %3, align 8
  %12 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %13 = icmp ne %struct.hdpvr_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.hdpvr_fh* @kzalloc(i32 8, i32 %19)
  store %struct.hdpvr_fh* %20, %struct.hdpvr_fh** %4, align 8
  %21 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %4, align 8
  %22 = icmp ne %struct.hdpvr_fh* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %25 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %24, i32 0, i32 2
  %26 = call i32 @v4l2_err(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %44

27:                                               ; preds = %18
  %28 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %29 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %36 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.hdpvr_device*, %struct.hdpvr_device** %3, align 8
  %39 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %4, align 8
  %40 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %39, i32 0, i32 0
  store %struct.hdpvr_device* %38, %struct.hdpvr_device** %40, align 8
  %41 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %4, align 8
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  store %struct.hdpvr_fh* %41, %struct.hdpvr_fh** %43, align 8
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %27, %23, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @video_get_drvdata(i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.hdpvr_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
