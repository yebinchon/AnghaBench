; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.TYPE_7__ = type { i32 }
%struct.file = type { i32 }
%struct.vpfe_device = type { i32, i64, i32, %struct.vpfe_subdev_info*, i32, %struct.TYPE_5__*, i64 }
%struct.vpfe_subdev_info = type { i32, i32, i64, %struct.vpfe_route* }
%struct.vpfe_route = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.vpfe_subdev_info* }

@EINVAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vpfe_s_input\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Streaming is on\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid input index\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"vpfe_doioctl:error in setting input in decoder\0A\00", align 1
@ccdc_dev = common dso_local global %struct.TYPE_8__* null, align 8
@vpfe_standards = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vpfe_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_subdev_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vpfe_route*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.vpfe_device* @video_drvdata(%struct.file* %16)
  store %struct.vpfe_device* %17, %struct.vpfe_device** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @debug, align 4
  %21 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %22 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %21, i32 0, i32 4
  %23 = call i32 @v4l2_dbg(i32 1, i32 %20, i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %25 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock_interruptible(i32* %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %4, align 4
  br label %132

31:                                               ; preds = %3
  %32 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %33 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %38 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %37, i32 0, i32 4
  %39 = call i32 @v4l2_err(i32* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %15, align 4
  br label %127

42:                                               ; preds = %31
  %43 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @vpfe_get_subdev_input_index(%struct.vpfe_device* %43, i32* %10, i32* %11, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %49 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %48, i32 0, i32 4
  %50 = call i32 @v4l2_err(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %127

51:                                               ; preds = %42
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 5
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %56, i64 %58
  store %struct.vpfe_subdev_info* %59, %struct.vpfe_subdev_info** %9, align 8
  %60 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %61 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %60, i32 0, i32 3
  %62 = load %struct.vpfe_route*, %struct.vpfe_route** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %62, i64 %64
  store %struct.vpfe_route* %65, %struct.vpfe_route** %12, align 8
  %66 = load %struct.vpfe_route*, %struct.vpfe_route** %12, align 8
  %67 = icmp ne %struct.vpfe_route* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %51
  %69 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %70 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.vpfe_route*, %struct.vpfe_route** %12, align 8
  %75 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.vpfe_route*, %struct.vpfe_route** %12, align 8
  %78 = getelementptr inbounds %struct.vpfe_route, %struct.vpfe_route* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %73, %68, %51
  %81 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %82 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %81, i32 0, i32 4
  %83 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %84 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @video, align 4
  %87 = load i32, i32* @s_routing, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @v4l2_device_call_until_err(i32* %82, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %95 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %94, i32 0, i32 4
  %96 = call i32 @v4l2_err(i32* %95, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %127

99:                                               ; preds = %80
  %100 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %101 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %102 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %101, i32 0, i32 3
  store %struct.vpfe_subdev_info* %100, %struct.vpfe_subdev_info** %102, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %105 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %107 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ccdc_dev, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32 (i32*)*, i32 (i32*)** %110, align 8
  %112 = load %struct.vpfe_subdev_info*, %struct.vpfe_subdev_info** %9, align 8
  %113 = getelementptr inbounds %struct.vpfe_subdev_info, %struct.vpfe_subdev_info* %112, i32 0, i32 0
  %114 = call i32 %111(i32* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %99
  br label %127

118:                                              ; preds = %99
  %119 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vpfe_standards, align 8
  %121 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %122 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = call i32 @vpfe_config_image_format(%struct.vpfe_device* %119, i32* %125)
  store i32 %126, i32* %15, align 4
  br label %127

127:                                              ; preds = %118, %117, %93, %47, %36
  %128 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %129 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %15, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %127, %29
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i64 @vpfe_get_subdev_input_index(%struct.vpfe_device*, i32*, i32*, i32) #1

declare dso_local i32 @v4l2_device_call_until_err(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vpfe_config_image_format(%struct.vpfe_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
