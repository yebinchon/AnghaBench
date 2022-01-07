; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.file = type { i32 }
%struct.vpif_fh = type { i32, i32, %struct.channel_obj* }
%struct.channel_obj = type { i64, i64, %struct.TYPE_3__, i32, %struct.common_obj* }
%struct.TYPE_3__ = type { i32 }
%struct.common_obj = type { i32, i64 }

@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vpif_s_std\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"streaming in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@VPIF_CHANNEL0_VIDEO = common dso_local global i64 0, align 8
@VPIF_CHANNEL1_VIDEO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"Channel Busy\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error getting the standard info\0A\00", align 1
@vpif_obj = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
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
  %15 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %14, i32 0, i32 2
  %16 = load %struct.channel_obj*, %struct.channel_obj** %15, align 8
  store %struct.channel_obj* %16, %struct.channel_obj** %9, align 8
  %17 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %18 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %17, i32 0, i32 4
  %19 = load %struct.common_obj*, %struct.common_obj** %18, align 8
  %20 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %21 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %19, i64 %20
  store %struct.common_obj* %21, %struct.common_obj** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @debug, align 4
  %23 = call i32 @vpif_dbg(i32 2, i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %25 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 @vpif_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %113

32:                                               ; preds = %3
  %33 = load i64, i64* @VPIF_CHANNEL0_VIDEO, align 8
  %34 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %35 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i64, i64* @VPIF_CHANNEL1_VIDEO, align 8
  %40 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %41 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38, %32
  %45 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %46 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @debug, align 4
  %51 = call i32 @vpif_dbg(i32 1, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %113

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %57 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %56, i32 0, i32 3
  %58 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %59 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %58, i32 0, i32 1
  %60 = call i32 @v4l2_prio_check(i32* %57, i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %4, align 4
  br label %113

65:                                               ; preds = %55
  %66 = load %struct.vpif_fh*, %struct.vpif_fh** %8, align 8
  %67 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %69 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %68, i32 0, i32 0
  %70 = call i64 @mutex_lock_interruptible(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @ERESTARTSYS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %113

75:                                               ; preds = %65
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %79 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %82 = call i64 @vpif_update_std_info(%struct.channel_obj* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  %87 = call i32 @vpif_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %108

88:                                               ; preds = %75
  %89 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %90 = call i32 @vpif_config_format(%struct.channel_obj* %89)
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vpif_obj, i32 0, i32 0), align 8
  %92 = load %struct.channel_obj*, %struct.channel_obj** %9, align 8
  %93 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @core, align 4
  %98 = load i32, i32* @s_std, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @v4l2_subdev_call(i32 %96, i32 %97, i32 %98, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %88
  %105 = load i32, i32* @debug, align 4
  %106 = call i32 @vpif_dbg(i32 1, i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %88
  br label %108

108:                                              ; preds = %107, %84
  %109 = load %struct.common_obj*, %struct.common_obj** %10, align 8
  %110 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %72, %63, %49, %28
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local i32 @v4l2_prio_check(i32*, i32*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @vpif_update_std_info(%struct.channel_obj*) #1

declare dso_local i32 @vpif_config_format(%struct.channel_obj*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
