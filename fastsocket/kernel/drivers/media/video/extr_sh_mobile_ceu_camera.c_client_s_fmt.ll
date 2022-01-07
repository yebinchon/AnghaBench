; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_s_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_cropcap = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@cropcap = common dso_local global i32 0, align 4
@s_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"camera scaled to %ux%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Camera scaled to %ux%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Client failed to set format: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*, i32)* @client_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_s_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_camera_device*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.v4l2_cropcap, align 4
  %18 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %20 = call %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device* %19)
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %8, align 8
  %21 = load %struct.soc_camera_device*, %struct.soc_camera_device** %5, align 8
  %22 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %9, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.v4l2_pix_format* %27, %struct.v4l2_pix_format** %10, align 8
  %28 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %29 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %35 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %17, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %37 = load i32, i32* @video, align 4
  %38 = load i32, i32* @cropcap, align 4
  %39 = bitcast %struct.v4l2_cropcap* %17 to %struct.v4l2_format*
  %40 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %36, i32 %37, i32 %38, %struct.v4l2_format* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %4, align 4
  br label %149

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %17, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @min(i32 %48, i32 2560)
  store i32 %49, i32* %15, align 4
  %50 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %17, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @min(i32 %52, i32 1920)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %55 = load i32, i32* @video, align 4
  %56 = load i32, i32* @s_fmt, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %58 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %54, i32 %55, i32 %56, %struct.v4l2_format* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %4, align 4
  br label %149

63:                                               ; preds = %45
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_geo(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %63
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %77, %63
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83, %77
  store i32 0, i32* %4, align 4
  br label %149

87:                                               ; preds = %83
  %88 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %89 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %92 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %147, %87
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ugt i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ult i32 %107, %108
  br label %110

110:                                              ; preds = %106, %102, %98
  %111 = phi i1 [ false, %102 ], [ false, %98 ], [ %109, %106 ]
  br i1 %111, label %112, label %148

112:                                              ; preds = %110
  %113 = load i32, i32* %13, align 4
  %114 = mul i32 2, %113
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @min(i32 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul i32 2, %117
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @min(i32 %118, i32 %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %126 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %128 = load i32, i32* @video, align 4
  %129 = load i32, i32* @s_fmt, align 4
  %130 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %131 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %127, i32 %128, i32 %129, %struct.v4l2_format* %130)
  store i32 %131, i32* %18, align 4
  %132 = load %struct.device*, %struct.device** %9, align 8
  %133 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %134 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %137 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_geo(%struct.device* %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %135, i32 %138)
  %140 = load i32, i32* %18, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %112
  %143 = load %struct.device*, %struct.device** %9, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %18, align 4
  store i32 %146, i32* %4, align 4
  br label %149

147:                                              ; preds = %112
  br label %94

148:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %142, %86, %61, %43
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.v4l2_subdev* @soc_camera_to_subdev(%struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dev_geo(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
