; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_try_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32 }
%struct.soc_camera_format_xlate = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Format %x not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@try_fmt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"FIXME: try_fmt() returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @sh_mobile_ceu_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_try_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_format_xlate*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.v4l2_pix_format* %17, %struct.v4l2_pix_format** %7, align 8
  %18 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %19 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %18)
  store %struct.v4l2_subdev* %19, %struct.v4l2_subdev** %8, align 8
  %20 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device* %23, i32 %24)
  store %struct.soc_camera_format_xlate* %25, %struct.soc_camera_format_xlate** %6, align 8
  %26 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %6, align 8
  %27 = icmp ne %struct.soc_camera_format_xlate* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %2
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %158

37:                                               ; preds = %2
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 1
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 2
  %42 = call i32 @v4l_bound_align_image(i32* %39, i32 2, i32 2560, i32 1, i32* %41, i32 4, i32 1920, i32 2, i32 0)
  %43 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %6, align 8
  %53 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %56, i32 8)
  %58 = mul nsw i32 %51, %57
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.soc_camera_format_xlate*, %struct.soc_camera_format_xlate** %6, align 8
  %71 = getelementptr inbounds %struct.soc_camera_format_xlate, %struct.soc_camera_format_xlate* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %78 = load i32, i32* @video, align 4
  %79 = load i32, i32* @try_fmt, align 4
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %81 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %77, i32 %78, i32 %79, %struct.v4l2_format* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %37
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %3, align 4
  br label %158

89:                                               ; preds = %37
  %90 = load i32, i32* %9, align 4
  switch i32 %90, label %156 [
    i32 131, label %91
    i32 129, label %91
    i32 130, label %91
    i32 128, label %91
  ]

91:                                               ; preds = %89, %89, %89, %89
  %92 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %97, %91
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %14, align 4
  %110 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %110, i32 0, i32 1
  store i32 2560, i32* %111, align 4
  %112 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %113 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %112, i32 0, i32 2
  store i32 1920, i32* %113, align 4
  %114 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %115 = load i32, i32* @video, align 4
  %116 = load i32, i32* @try_fmt, align 4
  %117 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %118 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %114, i32 %115, i32 %116, %struct.v4l2_format* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %103
  %122 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %123 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %133 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %121, %103
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %135
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %141, %135
  %146 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %154 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %145
  br label %156

156:                                              ; preds = %155, %89
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %87, %28
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local %struct.soc_camera_format_xlate* @soc_camera_xlate_by_fourcc(%struct.soc_camera_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
