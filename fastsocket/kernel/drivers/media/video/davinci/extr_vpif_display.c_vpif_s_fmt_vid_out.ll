; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_fmt_vid_out.c"
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
@VPIF_CHANNEL2_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL3_VIDEO = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Channel Busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Streaming in progress\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpif_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpif_fh*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.channel_obj*, align 8
  %11 = alloca %struct.common_obj*, align 8
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
  store %struct.channel_obj* %17, %struct.channel_obj** %10, align 8
  %18 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 2
  %20 = load %struct.common_obj*, %struct.common_obj** %19, align 8
  %21 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %22 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %20, i64 %21
  store %struct.common_obj* %22, %struct.common_obj** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i64, i64* @VPIF_CHANNEL2_VIDEO, align 8
  %24 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %25 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* @VPIF_CHANNEL3_VIDEO, align 8
  %30 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %31 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28, %3
  %35 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %36 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @debug, align 4
  %41 = call i32 @vpif_dbg(i32 1, i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %102

44:                                               ; preds = %34
  %45 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %46 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %45, i32 0, i32 1
  %47 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %48 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %47, i32 0, i32 1
  %49 = call i32 @v4l2_prio_check(i32* %46, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 0, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %44
  %55 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %56 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %28
  %58 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %59 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* @debug, align 4
  %64 = call i32 @vpif_dbg(i32 1, i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %102

67:                                               ; preds = %57
  %68 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.v4l2_pix_format* %70, %struct.v4l2_pix_format** %9, align 8
  %71 = load %struct.channel_obj*, %struct.channel_obj** %10, align 8
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %73 = call i32 @vpif_check_format(%struct.channel_obj* %71, %struct.v4l2_pix_format* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %102

78:                                               ; preds = %67
  %79 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %80 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %84 = bitcast %struct.v4l2_pix_format* %82 to i8*
  %85 = bitcast %struct.v4l2_pix_format* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %87 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %86, i32 0, i32 0
  %88 = call i64 @mutex_lock_interruptible(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* @ERESTARTSYS, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %102

93:                                               ; preds = %78
  %94 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %95 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %94, i32 0, i32 1
  %96 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %97 = bitcast %struct.v4l2_format* %95 to i8*
  %98 = bitcast %struct.v4l2_format* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 4, i1 false)
  %99 = load %struct.common_obj*, %struct.common_obj** %11, align 8
  %100 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %93, %90, %76, %62, %52, %39
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @v4l2_prio_check(i32*, i32*) #1

declare dso_local i32 @vpif_check_format(%struct.channel_obj*, %struct.v4l2_pix_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
