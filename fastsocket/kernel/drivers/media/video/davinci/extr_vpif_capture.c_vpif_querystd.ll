; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querystd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_querystd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.file = type { i32 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.common_obj* }
%struct.common_obj = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vpif_querystd\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@video = common dso_local global i32 0, align 4
@querystd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to set standard for sub devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpif_querystd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_querystd(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.vpif_fh*
  store %struct.vpif_fh* %13, %struct.vpif_fh** %8, align 8
  %14 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %15 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %14, i32 0, i32 0
  %16 = load %struct.channel_obj*, %struct.channel_obj** %15, align 8
  store %struct.channel_obj* %16, %struct.channel_obj** %9, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 1
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @debug, align 4
  %23 = call i32 @vpif_dbg(i32 2, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %25 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i32 0, i32 0
  %26 = call i64 @mutex_lock_interruptible(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 0), align 8
  %33 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %34 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @video, align 4
  %39 = load i32, i32* @querystd, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @v4l2_subdev_call(i32 %37, i32 %38, i32 %39, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @debug, align 4
  %46 = call i32 @vpif_dbg(i32 1, i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %31
  %48 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %49 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
