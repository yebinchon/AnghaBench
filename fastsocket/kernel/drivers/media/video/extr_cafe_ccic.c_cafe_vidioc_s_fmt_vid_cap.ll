; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.cafe_camera = type { i64, i64, i64, i64, i32, %struct.TYPE_4__, i32 }
%struct.cafe_format_struct = type { i32 }

@S_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cafe_vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cafe_camera*, align 8
  %9 = alloca %struct.cafe_format_struct*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cafe_camera*
  store %struct.cafe_camera* %12, %struct.cafe_camera** %8, align 8
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %14 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @S_IDLE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %18
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.cafe_format_struct* @cafe_find_format(i32 %31)
  store %struct.cafe_format_struct* %32, %struct.cafe_format_struct** %9, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = call i32 @cafe_vidioc_try_fmt_vid_cap(%struct.file* %33, i8* %34, %struct.v4l2_format* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %100

41:                                               ; preds = %26
  %42 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %43 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %42, i32 0, i32 4
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %46 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %45, i32 0, i32 5
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_4__* %46 to i8*
  %51 = bitcast %struct.TYPE_4__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load %struct.cafe_format_struct*, %struct.cafe_format_struct** %9, align 8
  %53 = getelementptr inbounds %struct.cafe_format_struct, %struct.cafe_format_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %56 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  %59 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %60 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %41
  %64 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %65 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %68 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %74 = call i32 @cafe_free_dma_bufs(%struct.cafe_camera* %73)
  br label %75

75:                                               ; preds = %72, %63, %41
  %76 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %77 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %82 = call i64 @cafe_alloc_dma_bufs(%struct.cafe_camera* %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %95

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %88 = call i32 @cafe_cam_configure(%struct.cafe_camera* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %93 = call i32 @cafe_ctlr_configure(%struct.cafe_camera* %92)
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %97 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %96, i32 0, i32 4
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %39, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local %struct.cafe_format_struct* @cafe_find_format(i32) #1

declare dso_local i32 @cafe_vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cafe_free_dma_bufs(%struct.cafe_camera*) #1

declare dso_local i64 @cafe_alloc_dma_bufs(%struct.cafe_camera*, i32) #1

declare dso_local i32 @cafe_cam_configure(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_configure(%struct.cafe_camera*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
