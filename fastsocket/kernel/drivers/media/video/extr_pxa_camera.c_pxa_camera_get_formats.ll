; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_get_formats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_pxa_camera_get_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_mbus_pixelfmt = type { i32, i32 }
%struct.soc_camera_device = type { %struct.pxa_cam*, %struct.TYPE_2__ }
%struct.pxa_cam = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.soc_camera_format_xlate = type { i32, %struct.soc_mbus_pixelfmt* }
%struct.v4l2_subdev = type { i32 }

@video = common dso_local global i32 0, align 4
@enum_mbus_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid format code #%u: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxa_camera_formats = common dso_local global %struct.soc_mbus_pixelfmt* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Providing format %s using code %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Providing format %s packed\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Providing format %s in pass-through mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, i32, %struct.soc_camera_format_xlate*)* @pxa_camera_get_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_get_formats(%struct.soc_camera_device* %0, i32 %1, %struct.soc_camera_format_xlate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pxa_cam*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.soc_mbus_pixelfmt*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.soc_camera_format_xlate* %2, %struct.soc_camera_format_xlate** %7, align 8
  %15 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %16 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %15)
  store %struct.v4l2_subdev* %16, %struct.v4l2_subdev** %8, align 8
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @enum_mbus_fmt, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %21, i32 %22, i32 %23, i32 %24, i32* %13)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

29:                                               ; preds = %3
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.soc_mbus_pixelfmt* @soc_mbus_get_fmtdesc(i32 %30)
  store %struct.soc_mbus_pixelfmt* %31, %struct.soc_mbus_pixelfmt** %14, align 8
  %32 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %33 = icmp ne %struct.soc_mbus_pixelfmt* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %135

39:                                               ; preds = %29
  %40 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %41 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %42 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pxa_camera_try_bus_param(%struct.soc_camera_device* %40, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %135

48:                                               ; preds = %39
  %49 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %50 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %49, i32 0, i32 0
  %51 = load %struct.pxa_cam*, %struct.pxa_cam** %50, align 8
  %52 = icmp ne %struct.pxa_cam* %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.pxa_cam* @kzalloc(i32 4, i32 %54)
  store %struct.pxa_cam* %55, %struct.pxa_cam** %12, align 8
  %56 = load %struct.pxa_cam*, %struct.pxa_cam** %12, align 8
  %57 = icmp ne %struct.pxa_cam* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %135

61:                                               ; preds = %53
  %62 = load %struct.pxa_cam*, %struct.pxa_cam** %12, align 8
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %64 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %63, i32 0, i32 0
  store %struct.pxa_cam* %62, %struct.pxa_cam** %64, align 8
  br label %69

65:                                               ; preds = %48
  %66 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %67 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %66, i32 0, i32 0
  %68 = load %struct.pxa_cam*, %struct.pxa_cam** %67, align 8
  store %struct.pxa_cam* %68, %struct.pxa_cam** %12, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %13, align 4
  switch i32 %70, label %104 [
    i32 131, label %71
    i32 130, label %94
    i32 129, label %94
    i32 128, label %94
    i32 132, label %94
    i32 133, label %94
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %75 = icmp ne %struct.soc_camera_format_xlate* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** @pxa_camera_formats, align 8
  %78 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %77, i64 0
  %79 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %80 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %79, i32 0, i32 1
  store %struct.soc_mbus_pixelfmt* %78, %struct.soc_mbus_pixelfmt** %80, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %83 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %85 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %84, i32 1
  store %struct.soc_camera_format_xlate* %85, %struct.soc_camera_format_xlate** %7, align 8
  %86 = load %struct.device*, %struct.device** %9, align 8
  %87 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** @pxa_camera_formats, align 8
  %88 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %87, i64 0
  %89 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %76, %71
  br label %94

94:                                               ; preds = %69, %69, %69, %69, %69, %93
  %95 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %96 = icmp ne %struct.soc_camera_format_xlate* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %100 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %94
  br label %119

104:                                              ; preds = %69
  %105 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %106 = call i32 @pxa_camera_packing_supported(%struct.soc_mbus_pixelfmt* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %135

109:                                              ; preds = %104
  %110 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %111 = icmp ne %struct.soc_camera_format_xlate* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %115 = getelementptr inbounds %struct.soc_mbus_pixelfmt, %struct.soc_mbus_pixelfmt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  br label %119

119:                                              ; preds = %118, %103
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %123 = icmp ne %struct.soc_camera_format_xlate* %122, null
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.soc_mbus_pixelfmt*, %struct.soc_mbus_pixelfmt** %14, align 8
  %126 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %127 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %126, i32 0, i32 1
  store %struct.soc_mbus_pixelfmt* %125, %struct.soc_mbus_pixelfmt** %127, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %130 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %132 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %131, i32 1
  store %struct.soc_camera_format_xlate* %132, %struct.soc_camera_format_xlate** %7, align 8
  br label %133

133:                                              ; preds = %124, %119
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %108, %58, %47, %34, %28
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32, i32*) #1

declare dso_local %struct.soc_mbus_pixelfmt* @soc_mbus_get_fmtdesc(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @pxa_camera_try_bus_param(%struct.soc_camera_device*, i32) #1

declare dso_local %struct.pxa_cam* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @pxa_camera_packing_supported(%struct.soc_mbus_pixelfmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
