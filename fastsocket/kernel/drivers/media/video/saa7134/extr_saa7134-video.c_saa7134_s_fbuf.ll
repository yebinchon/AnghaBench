; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.saa7134_fh = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.v4l2_framebuffer, %struct.saa7134_format* }
%struct.saa7134_format = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @saa7134_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca %struct.saa7134_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %12, %struct.saa7134_fh** %8, align 8
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %14 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %9, align 8
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %68

26:                                               ; preds = %19, %3
  %27 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.saa7134_format* @format_by_fourcc(i32 %30)
  store %struct.saa7134_format* %31, %struct.saa7134_format** %10, align 8
  %32 = load %struct.saa7134_format*, %struct.saa7134_format** %10, align 8
  %33 = icmp eq %struct.saa7134_format* null, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %26
  %38 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %39 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %38, i32 0, i32 0
  %40 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %41 = bitcast %struct.v4l2_framebuffer* %39 to i8*
  %42 = bitcast %struct.v4l2_framebuffer* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = load %struct.saa7134_format*, %struct.saa7134_format** %10, align 8
  %44 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %45 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %44, i32 0, i32 1
  store %struct.saa7134_format* %43, %struct.saa7134_format** %45, align 8
  %46 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %47 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 0, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %37
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.saa7134_format*, %struct.saa7134_format** %10, align 8
  %59 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = sdiv i32 %61, 8
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %64 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %52, %37
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %34, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.saa7134_format* @format_by_fourcc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
