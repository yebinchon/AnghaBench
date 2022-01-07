; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_check_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.channel_obj = type { i64, %struct.TYPE_8__, %struct.common_obj* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.common_obj = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i64, i64, i32, i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@V4L2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error getting the standard info\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid pitch alignment\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid field format\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid pitch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel_obj*, %struct.v4l2_pix_format*)* @vpif_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_check_format(%struct.channel_obj* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel_obj*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca %struct.common_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.channel_obj* %0, %struct.channel_obj** %4, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %5, align 8
  %11 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %12 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %11, i32 0, i32 2
  %13 = load %struct.common_obj*, %struct.common_obj** %12, align 8
  %14 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %15 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %13, i64 %14
  store %struct.common_obj* %15, %struct.common_obj** %6, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_PIX_FMT_YUV422P, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %111

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @VPIF_VALID_FIELD(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %111

30:                                               ; preds = %25
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %115

36:                                               ; preds = %30
  %37 = load i64, i64* @V4L2_MEMORY_USERPTR, align 8
  %38 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %39 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  br label %53

46:                                               ; preds = %36
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config_params, i32 0, i32 0), align 8
  %48 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %49 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %46, %42
  %54 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %55 = call i64 @vpif_get_std_info(%struct.channel_obj* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = call i32 @vpif_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %119

61:                                               ; preds = %53
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sdiv i32 %66, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %72 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.channel_obj*, %struct.channel_obj** %4, align 8
  %80 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77, %61
  br label %115

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ISALIGNED(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = call i32 @vpif_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %119

94:                                               ; preds = %86
  %95 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %96 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %102 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %104 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  store i32 0, i32* %3, align 4
  br label %119

111:                                              ; preds = %29, %24
  %112 = call i32 @vpif_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %119

115:                                              ; preds = %85, %35
  %116 = call i32 @vpif_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %111, %94, %90, %57
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @VPIF_VALID_FIELD(i32) #1

declare dso_local i64 @vpif_get_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @ISALIGNED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
