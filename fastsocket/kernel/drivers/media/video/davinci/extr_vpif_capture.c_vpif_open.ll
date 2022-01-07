; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif_capture.c_vpif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.vpif_capture_config* }
%struct.vpif_capture_config = type { i32, i32* }
%struct.TYPE_3__ = type { i64* }
%struct.file = type { %struct.vpif_fh* }
%struct.vpif_fh = type { i32, i32, i64*, %struct.channel_obj* }
%struct.channel_obj = type { i32, i32, i32, i32, i32*, %struct.common_obj*, %struct.video_obj }
%struct.common_obj = type { i32 }
%struct.video_obj = type { i64 }
%struct.video_device = type { i32 }

@vpif_dev = common dso_local global %struct.TYPE_4__* null, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vpif_open\0A\00", align 1
@VPIF_VIDEO_INDEX = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@vpif_obj = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"No sub device registered\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"unable to allocate memory for file handle object\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_PRIORITY_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @vpif_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpif_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vpif_capture_config*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.common_obj*, align 8
  %7 = alloca %struct.video_obj*, align 8
  %8 = alloca %struct.channel_obj*, align 8
  %9 = alloca %struct.vpif_fh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vpif_dev, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %13, align 8
  store %struct.vpif_capture_config* %14, %struct.vpif_capture_config** %4, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = call %struct.video_device* @video_devdata(%struct.file* %15)
  store %struct.video_device* %16, %struct.video_device** %5, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @debug, align 4
  %18 = call i32 @vpif_dbg(i32 2, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.video_device*, %struct.video_device** %5, align 8
  %20 = call %struct.channel_obj* @video_get_drvdata(%struct.video_device* %19)
  store %struct.channel_obj* %20, %struct.channel_obj** %8, align 8
  %21 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %22 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %21, i32 0, i32 6
  store %struct.video_obj* %22, %struct.video_obj** %7, align 8
  %23 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %24 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %23, i32 0, i32 5
  %25 = load %struct.common_obj*, %struct.common_obj** %24, align 8
  %26 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %27 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %25, i64 %26
  store %struct.common_obj* %27, %struct.common_obj** %6, align 8
  %28 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %29 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %28, i32 0, i32 0
  %30 = call i64 @mutex_lock_interruptible(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @ERESTARTSYS, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %133

35:                                               ; preds = %1
  %36 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %37 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* null, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %4, align 8
  %44 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpif_obj, i32 0, i32 0), align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %4, align 8
  %56 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %62 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load %struct.video_obj*, %struct.video_obj** %7, align 8
  %64 = getelementptr inbounds %struct.video_obj, %struct.video_obj* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %69

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %41

69:                                               ; preds = %54, %41
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.vpif_capture_config*, %struct.vpif_capture_config** %4, align 8
  %72 = getelementptr inbounds %struct.vpif_capture_config, %struct.vpif_capture_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = call i32 @vpif_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %128

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %35
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.vpif_fh* @kmalloc(i32 24, i32 %81)
  store %struct.vpif_fh* %82, %struct.vpif_fh** %9, align 8
  %83 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %84 = icmp eq %struct.vpif_fh* null, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @vpif_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %128

89:                                               ; preds = %80
  %90 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %91 = load %struct.file*, %struct.file** %3, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  store %struct.vpif_fh* %90, %struct.vpif_fh** %92, align 8
  %93 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %94 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %95 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %94, i32 0, i32 3
  store %struct.channel_obj* %93, %struct.channel_obj** %95, align 8
  %96 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %97 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %99 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %89
  %103 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %104 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %106 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %108 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %107, i32 0, i32 3
  %109 = call i32 @memset(i32* %108, i32 0, i32 4)
  br label %110

110:                                              ; preds = %102, %89
  %111 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %112 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %116 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %115, i32 0, i32 2
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @VPIF_VIDEO_INDEX, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 0, i64* %119, align 8
  %120 = load i32, i32* @V4L2_PRIORITY_UNSET, align 4
  %121 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %122 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.channel_obj*, %struct.channel_obj** %8, align 8
  %124 = getelementptr inbounds %struct.channel_obj, %struct.channel_obj* %123, i32 0, i32 1
  %125 = load %struct.vpif_fh*, %struct.vpif_fh** %9, align 8
  %126 = getelementptr inbounds %struct.vpif_fh, %struct.vpif_fh* %125, i32 0, i32 1
  %127 = call i32 @v4l2_prio_open(i32* %124, i32* %126)
  br label %128

128:                                              ; preds = %110, %85, %75
  %129 = load %struct.common_obj*, %struct.common_obj** %6, align 8
  %130 = getelementptr inbounds %struct.common_obj, %struct.common_obj* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %32
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vpif_dbg(i32, i32, i8*) #1

declare dso_local %struct.channel_obj* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vpif_err(i8*) #1

declare dso_local %struct.vpif_fh* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @v4l2_prio_open(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
