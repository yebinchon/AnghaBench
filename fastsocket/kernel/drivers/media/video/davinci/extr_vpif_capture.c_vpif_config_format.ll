; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_config_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_config_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64*, i32* }
%struct.channel_obj = type { i64, %struct.TYPE_8__, %struct.common_obj* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.common_obj = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpif_config_format\0A\00", align 1
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@config_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@VPIF_IF_RAW_BAYER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_SBGGR8 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV422P = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_obj*)* @vpif_config_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpif_config_format(%struct.channel_obj* %0) #0 {
  %2 = alloca %struct.channel_obj*, align 8
  %3 = alloca %struct.common_obj*, align 8
  store %struct.channel_obj* %0, %struct.channel_obj** %2, align 8
  %4 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %5 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %4, i32 0, i32 2
  %6 = load %struct.common_obj*, %struct.common_obj** %5, align 8
  %7 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %8 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %6, i64 %7
  store %struct.common_obj* %8, %struct.common_obj** %3, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = call i32 @vpif_dbg(i32 2, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %12 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %13 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %11, i32* %16, align 4
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 0), align 8
  %18 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %19 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  %26 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %27 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %30 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %31 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 1), align 8
  %34 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %35 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %40 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 %38, i32* %43, align 4
  %44 = load %struct.channel_obj*, %struct.channel_obj** %2, align 8
  %45 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VPIF_IF_RAW_BAYER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %32
  %52 = load i32, i32* @V4L2_PIX_FMT_SBGGR8, align 4
  %53 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %54 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %65

58:                                               ; preds = %32
  %59 = load i32, i32* @V4L2_PIX_FMT_YUV422P, align 4
  %60 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %61 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %67 = load %struct.common_obj*, %struct.common_obj** %3, align 8
  %68 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  ret void
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
