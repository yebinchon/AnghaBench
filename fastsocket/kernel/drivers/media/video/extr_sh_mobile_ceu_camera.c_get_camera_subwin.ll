; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_get_camera_subwin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_get_camera_subwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_3__, %struct.sh_mobile_ceu_cam* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.sh_mobile_ceu_cam = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"camera fmt %ux%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"initialised CEU rect %ux%u@%u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_rect*, i32, i32)* @get_camera_subwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_camera_subwin(%struct.soc_camera_device* %0, %struct.v4l2_rect* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.soc_camera_device*, align 8
  %7 = alloca %struct.v4l2_rect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sh_mobile_ceu_cam*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_subdev*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.v4l2_format, align 4
  %15 = alloca %struct.v4l2_pix_format*, align 8
  %16 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %6, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 1
  %19 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %18, align 8
  store %struct.sh_mobile_ceu_cam* %19, %struct.sh_mobile_ceu_cam** %10, align 8
  %20 = load %struct.sh_mobile_ceu_cam*, %struct.sh_mobile_ceu_cam** %10, align 8
  %21 = getelementptr inbounds %struct.sh_mobile_ceu_cam, %struct.sh_mobile_ceu_cam* %20, i32 0, i32 0
  store %struct.v4l2_rect* %21, %struct.v4l2_rect** %11, align 8
  %22 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %23 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %114, label %26

26:                                               ; preds = %4
  %27 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %28 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %27)
  store %struct.v4l2_subdev* %28, %struct.v4l2_subdev** %12, align 8
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %6, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %13, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.v4l2_pix_format* %34, %struct.v4l2_pix_format** %15, align 8
  %35 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %12, align 8
  %38 = load i32, i32* @video, align 4
  %39 = load i32, i32* @g_fmt, align 4
  %40 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %37, i32 %38, i32 %39, %struct.v4l2_format* %14)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %5, align 4
  br label %147

45:                                               ; preds = %26
  %46 = load %struct.device*, %struct.device** %13, align 8
  %47 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_geo(%struct.device* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 2560
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %60 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %59, i32 0, i32 0
  store i32 2560, i32* %60, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 2560
  %65 = sdiv i32 %64, 2
  %66 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %67 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %76

68:                                               ; preds = %45
  %69 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %70 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %73 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %75 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %74, i32 0, i32 1
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %58
  %77 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %78 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 1920
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 2
  store i32 1920, i32* %83, align 4
  %84 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %85 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1920
  %88 = sdiv i32 %87, 2
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %99

91:                                               ; preds = %76
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %15, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %98 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %81
  %100 = load %struct.device*, %struct.device** %13, align 8
  %101 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %102 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_geo(%struct.device* %100, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %99, %4
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i8* @scale_up(i32 %117, i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %124 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i8* @scale_up(i32 %125, i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %132 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i8* @scale_up(i32 %133, i32 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %138 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %140 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i8* @scale_up(i32 %141, i32 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.v4l2_rect*, %struct.v4l2_rect** %7, align 8
  %146 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %114, %43
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @dev_geo(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i8* @scale_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
