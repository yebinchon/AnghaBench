; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { i32, i32, i64*, %struct.channel_obj* }
%struct.channel_obj = type { i32, i32, i32, i32 }
%struct.video_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"unable to allocate memory for file handle object\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.channel_obj*, align 8
  %6 = alloca %struct.vpif_fh*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  store %struct.channel_obj* null, %struct.channel_obj** %5, align 8
  store %struct.vpif_fh* null, %struct.vpif_fh** %6, align 8
  %9 = load %struct.video_device*, %struct.video_device** %4, align 8
  %10 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %9)
  store %struct.channel_obj* %10, %struct.channel_obj** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vpif_fh* @kmalloc(i32 24, i32 %11)
  store %struct.vpif_fh* %12, %struct.vpif_fh** %6, align 8
  %13 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %14 = icmp eq %struct.vpif_fh* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @vpif_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  store %struct.vpif_fh* %20, %struct.vpif_fh** %22, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %24 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %25 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %24, i32 0, i32 3
  store %struct.channel_obj* %23, %struct.channel_obj** %25, align 8
  %26 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %27 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %29 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %19
  %33 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %34 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %36 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %38 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %37, i32 0, i32 3
  %39 = call i32 @memset(i32* %38, i32 0, i32 4)
  br label %40

40:                                               ; preds = %32, %19
  %41 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %42 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %41, i32 0, i32 2
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %45 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  %50 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %51 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.channel_obj*, %struct.channel_obj** %5, align 8
  %53 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %52, i32 0, i32 1
  %54 = load %struct.vpif_fh*, %struct.vpif_fh** %6, align 8
  %55 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %54, i32 0, i32 1
  %56 = call i32 @v4l2_prio_open(i32* %53, i32* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %40, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local %struct.vpif_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @v4l2_prio_open(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
