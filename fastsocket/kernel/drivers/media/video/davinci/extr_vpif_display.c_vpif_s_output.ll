; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { %struct.common_obj*, %struct.video_obj }
%struct.common_obj = type { i32, i64 }
%struct.video_obj = type { i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Streaming in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set output standard\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpif_s_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_output(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.video_obj*, align 8
  %11 = alloca %struct.common_obj*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vpif_fh*
  store %struct.vpif_fh* %14, %struct.vpif_fh** %8, align 8
  %15 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %16 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %15, i32 0, i32 0
  %17 = load %struct.channel_obj*, %struct.channel_obj** %16, align 8
  store %struct.channel_obj* %17, %struct.channel_obj** %9, align 8
  %18 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 1
  store %struct.video_obj* %19, %struct.video_obj** %10, align 8
  %20 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %21 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %20, i32 0, i32 0
  %22 = load %struct.common_obj*, %struct.common_obj** %21, align 8
  %23 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %24 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %22, i64 %23
  store %struct.common_obj* %24, %struct.common_obj** %11, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 0
  %27 = call i64 @mutex_lock_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %59

32:                                               ; preds = %3
  %33 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %34 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = call i32 @vpif_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @video, align 4
  %43 = load i32, i32* @s_routing, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @v4l2_device_call_until_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpif_obj, i32 0, i32 0), i32 1, i32 %42, i32 %43, i32 0, i32 %44, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @vpif_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.video_obj*, %struct.video_obj** %10, align 8
  %53 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %37
  %55 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %56 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %29
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
