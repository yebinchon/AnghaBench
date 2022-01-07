; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.zoran_fh = type { %struct.TYPE_7__, %struct.zoran* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.zoran = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_OVERLAY = common dso_local global i32 0, align 4
@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @zoran_g_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.zoran_fh*, align 8
  %8 = alloca %struct.zoran*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zoran_fh*
  store %struct.zoran_fh* %10, %struct.zoran_fh** %7, align 8
  %11 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %12 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %11, i32 0, i32 1
  %13 = load %struct.zoran*, %struct.zoran** %12, align 8
  store %struct.zoran* %13, %struct.zoran** %8, align 8
  %14 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %15 = call i32 @memset(%struct.v4l2_framebuffer* %14, i32 0, i32 36)
  %16 = load %struct.zoran*, %struct.zoran** %8, align 8
  %17 = getelementptr inbounds %struct.zoran, %struct.zoran* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.zoran*, %struct.zoran** %8, align 8
  %20 = getelementptr inbounds %struct.zoran, %struct.zoran* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.zoran*, %struct.zoran** %8, align 8
  %25 = getelementptr inbounds %struct.zoran, %struct.zoran* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load %struct.zoran*, %struct.zoran** %8, align 8
  %31 = getelementptr inbounds %struct.zoran, %struct.zoran* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 4
  %36 = load %struct.zoran*, %struct.zoran** %8, align 8
  %37 = getelementptr inbounds %struct.zoran, %struct.zoran* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load %struct.zoran_fh*, %struct.zoran_fh** %7, align 8
  %43 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %3
  %52 = load %struct.zoran*, %struct.zoran** %8, align 8
  %53 = getelementptr inbounds %struct.zoran, %struct.zoran* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 4
  %58 = load %struct.zoran*, %struct.zoran** %8, align 8
  %59 = getelementptr inbounds %struct.zoran, %struct.zoran* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %62 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %66 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @V4L2_FBUF_FLAG_OVERLAY, align 4
  %70 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %73 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.v4l2_framebuffer*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
