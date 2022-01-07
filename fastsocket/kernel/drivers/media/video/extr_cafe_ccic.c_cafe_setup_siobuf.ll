; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_setup_siobuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_setup_siobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { %struct.TYPE_4__, %struct.cafe_sio_buffer* }
%struct.TYPE_4__ = type { i32 }
%struct.cafe_sio_buffer = type { %struct.TYPE_6__, %struct.cafe_camera*, i64, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32)* @cafe_setup_siobuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_setup_siobuf(%struct.cafe_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cafe_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cafe_sio_buffer*, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %8 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %7, i32 0, i32 1
  %9 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %9, i64 %11
  store %struct.cafe_sio_buffer* %12, %struct.cafe_sio_buffer** %6, align 8
  %13 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %14 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %13, i32 0, i32 4
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %17 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PAGE_ALIGN(i32 %19)
  %21 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @vmalloc_user(i32 %27)
  %29 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %2
  %39 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %42 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %42, i32 0, i32 1
  store %struct.cafe_camera* %41, %struct.cafe_camera** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %49 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %53 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %57 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 2, %60
  %62 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %61, %65
  %67 = load %struct.cafe_sio_buffer*, %struct.cafe_sio_buffer** %6, align 8
  %68 = getelementptr inbounds %struct.cafe_sio_buffer, %struct.cafe_sio_buffer* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %38, %35
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32* @vmalloc_user(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
