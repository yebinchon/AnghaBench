; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_mx3_camera_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.soc_camera_format_xlate = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@try_fmt = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Field type %d unsupported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @mx3_camera_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx3_camera_try_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.soc_camera_format_xlate*, align 8
  %8 = alloca %struct.v4l2_pix_format*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %13 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %12)
  store %struct.v4l2_subdev* %13, %struct.v4l2_subdev** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %8, align 8
  %17 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %20, i64 %21)
  store %struct.soc_camera_format_xlate* %22, %struct.soc_camera_format_xlate** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %27 = icmp ne %struct.soc_camera_format_xlate* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %120

37:                                               ; preds = %25, %2
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 4096
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 0
  store i32 4096, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 4096
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  store i32 4096, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %58 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DIV_ROUND_UP(i32 %61, i32 8)
  %63 = mul nsw i32 %56, %62
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %67 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %76 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %83 = load i32, i32* @video, align 4
  %84 = load i32, i32* @try_fmt, align 4
  %85 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %86 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %82, i32 %83, i32 %84, %struct.v4l2_format* %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %7, align 8
  %88 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 5
  store i64 %91, i64* %93, align 8
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %53
  %101 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %102 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %8, align 8
  %103 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  br label %118

104:                                              ; preds = %53
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %110 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %120

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %108, %28
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
