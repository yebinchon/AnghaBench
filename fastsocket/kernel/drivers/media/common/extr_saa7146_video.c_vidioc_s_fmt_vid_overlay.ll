; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_fmt_vid_overlay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_s_fmt_vid_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7146_fh = type { %struct.TYPE_6__, %struct.saa7146_dev* }
%struct.TYPE_6__ = type { i32, %struct.saa7146_fh*, i32, %struct.TYPE_4__ }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VIDEO_OVERLAY: dev:%p, fh:%p\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_overlay(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_fh*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca %struct.saa7146_vv*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %13, %struct.saa7146_fh** %8, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 1
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %9, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %10, align 8
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %22 = bitcast %struct.saa7146_fh* %21 to i8*
  %23 = call i32 @DEB_EE(i8* %22)
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %27 = call i32 @vidioc_try_fmt_vid_overlay(%struct.file* %24, %struct.saa7146_fh* %25, %struct.v4l2_format* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 0, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %3
  %33 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %34 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_4__* %35 to i8*
  %40 = bitcast %struct.TYPE_4__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %47 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %50 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 16
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %56 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 16, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %32
  %59 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %60 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %69 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64 @copy_from_user(i32 %62, i32 %67, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %58
  %78 = load i32, i32* @EFAULT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %94

80:                                               ; preds = %58
  %81 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %82 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %83 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store %struct.saa7146_fh* %81, %struct.saa7146_fh** %84, align 8
  %85 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %86 = call i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  %89 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %90 = call i32 @saa7146_stop_preview(%struct.saa7146_fh* %89)
  %91 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %92 = call i32 @saa7146_start_preview(%struct.saa7146_fh* %91)
  br label %93

93:                                               ; preds = %88, %80
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %77, %30
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @vidioc_try_fmt_vid_overlay(%struct.file*, %struct.saa7146_fh*, %struct.v4l2_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_stop_preview(%struct.saa7146_fh*) #1

declare dso_local i32 @saa7146_start_preview(%struct.saa7146_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
