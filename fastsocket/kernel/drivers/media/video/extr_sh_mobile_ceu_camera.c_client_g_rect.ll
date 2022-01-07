; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_g_rect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_client_g_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_rect = type { i32 }
%struct.v4l2_crop = type { %struct.v4l2_rect, i8*, %struct.v4l2_rect }
%struct.v4l2_cropcap = type { %struct.v4l2_rect, i8*, %struct.v4l2_rect }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@video = common dso_local global i32 0, align 4
@g_crop = common dso_local global i32 0, align 4
@cropcap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_rect*)* @client_g_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_g_rect(%struct.v4l2_subdev* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_crop, align 8
  %7 = alloca %struct.v4l2_cropcap, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %9 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %10 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %6, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = load i32, i32* @video, align 4
  %13 = load i32, i32* @g_crop, align 4
  %14 = bitcast %struct.v4l2_crop* %6 to %struct.v4l2_cropcap*
  %15 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %11, i32 %12, i32 %13, %struct.v4l2_cropcap* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %6, i32 0, i32 2
  %21 = bitcast %struct.v4l2_rect* %19 to i8*
  %22 = bitcast %struct.v4l2_rect* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 8 %22, i64 4, i1 false)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %26 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %7, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %28 = load i32, i32* @video, align 4
  %29 = load i32, i32* @cropcap, align 4
  %30 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %27, i32 %28, i32 %29, %struct.v4l2_cropcap* %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %7, i32 0, i32 0
  %38 = bitcast %struct.v4l2_rect* %36 to i8*
  %39 = bitcast %struct.v4l2_rect* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 8 %39, i64 4, i1 false)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %33, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, %struct.v4l2_cropcap*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
