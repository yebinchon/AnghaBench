; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_display.c_vpif_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32 }
%struct.file = type { i32 }
%struct.vpif_fh = type { %struct.channel_obj* }
%struct.channel_obj = type { i64, %struct.TYPE_11__, %struct.TYPE_9__, %struct.common_obj* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.common_obj = type { i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@DM646X_V4L2_STD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"streaming in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Error getting the standard info\0A\00", align 1
@config_params = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid std for this size\0A\00", align 1
@vpif_obj = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@video = common dso_local global i32 0, align 4
@s_std_output = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to set output standard\0A\00", align 1
@core = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to set standard for sub devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vpif_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
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
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 3
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DM646X_V4L2_STD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %123

30:                                               ; preds = %3
  %31 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %32 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @vpif_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %123

39:                                               ; preds = %30
  %40 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %41 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %40, i32 0, i32 0
  %42 = call i64 @mutex_lock_interruptible(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ERESTARTSYS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %123

47:                                               ; preds = %39
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %51 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %54 = call i64 @vpif_get_std_info(%struct.channel_obj* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = call i32 @vpif_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %123

60:                                               ; preds = %47
  %61 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %62 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %67 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = mul nsw i32 %71, 2
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config_params, i32 0, i32 0), align 8
  %74 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %75 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %72, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = call i32 @vpif_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %11, align 4
  br label %118

84:                                               ; preds = %60
  %85 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %86 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %92 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i32 %90, i32* %95, align 4
  %96 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %97 = call i32 @vpif_config_format(%struct.channel_obj* %96)
  %98 = load i32, i32* @video, align 4
  %99 = load i32, i32* @s_std_output, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @v4l2_device_call_until_err(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @vpif_obj, i32 0, i32 0), i32 1, i32 %98, i32 %99, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %84
  %106 = call i32 @vpif_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %118

107:                                              ; preds = %84
  %108 = load i32, i32* @core, align 4
  %109 = load i32, i32* @s_std, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @v4l2_device_call_until_err(i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @vpif_obj, i32 0, i32 0), i32 1, i32 %108, i32 %109, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = call i32 @vpif_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %107
  br label %118

118:                                              ; preds = %117, %105, %80
  %119 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %120 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %118, %56, %44, %35, %27
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @vpif_get_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vpif_config_format(%struct.channel_obj*) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
