; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32 }
%struct.vpif_fh = type { i32, i32, %struct.channel_obj* }
%struct.channel_obj = type { i64, i32, %struct.common_obj* }
%struct.common_obj = type { i32, %struct.v4l2_format, i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VIDIOC_S_FMT\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Streaming is started\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@VPIF_CHANNEL0_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL1_VIDEO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Channel Busy\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpif_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.channel_obj*, align 8
  %10 = alloca %struct.common_obj*, align 8
  %11 = alloca %struct.v4l2_pix_format*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.vpif_fh*
  store %struct.vpif_fh* %14, %struct.vpif_fh** %8, align 8
  %15 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %16 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %15, i32 0, i32 2
  %17 = load %struct.channel_obj*, %struct.channel_obj** %16, align 8
  store %struct.channel_obj* %17, %struct.channel_obj** %9, align 8
  %18 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 2
  %20 = load %struct.common_obj*, %struct.common_obj** %19, align 8
  %21 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %22 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i64 %21
  store %struct.common_obj* %22, %struct.common_obj** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @debug, align 4
  %24 = call i32 @vpif_dbg(i32 2, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %26 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* @debug, align 4
  %31 = call i32 @vpif_dbg(i32 1, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %97

34:                                               ; preds = %3
  %35 = load i64, i64* @VPIF_CHANNEL0_VIDEO, align 8
  %36 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %37 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* @VPIF_CHANNEL1_VIDEO, align 8
  %42 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %43 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40, %34
  %47 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %48 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @debug, align 4
  %53 = call i32 @vpif_dbg(i32 1, i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %97

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %59 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %58, i32 0, i32 1
  %60 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %61 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %60, i32 0, i32 1
  %62 = call i32 @v4l2_prio_check(i32* %59, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 0, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %97

67:                                               ; preds = %57
  %68 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %69 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.v4l2_pix_format* %72, %struct.v4l2_pix_format** %11, align 8
  %73 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %74 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %11, align 8
  %75 = call i32 @vpif_check_format(%struct.channel_obj* %73, %struct.v4l2_pix_format* %74, i32 0)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %4, align 4
  br label %97

80:                                               ; preds = %67
  %81 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %82 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %81, i32 0, i32 0
  %83 = call i64 @mutex_lock_interruptible(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ERESTARTSYS, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %90 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %89, i32 0, i32 1
  %91 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %92 = bitcast %struct.v4l2_format* %90 to i8*
  %93 = bitcast %struct.v4l2_format* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %95 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %88, %85, %78, %65, %51, %29
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @v4l2_prio_check(i32*, i32*) #1

declare dso_local i32 @vpif_check_format(%struct.channel_obj*, %struct.v4l2_pix_format*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
