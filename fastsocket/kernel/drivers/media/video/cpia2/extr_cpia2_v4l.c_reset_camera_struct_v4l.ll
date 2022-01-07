; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_reset_camera_struct_v4l.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_reset_camera_struct_v4l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_14__, i32, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@buffer_size = common dso_local global i32 0, align 4
@num_buffers = common dso_local global i32 0, align 4
@flicker_mode = common dso_local global i32 0, align 4
@flicker_freq = common dso_local global i32 0, align 4
@alternate = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camera_data*)* @reset_camera_struct_v4l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_camera_struct_v4l(%struct.camera_data* %0) #0 {
  %2 = alloca %struct.camera_data*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %2, align 8
  %3 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %4 = trunc i64 %3 to i32
  %5 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %6 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = mul nsw i32 %13, 256
  %15 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %16 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %19 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = mul nsw i32 %23, 256
  %25 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %26 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = mul nsw i32 %33, 256
  %35 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %36 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %42 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %50 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %64 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @buffer_size, align 4
  %67 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %68 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @num_buffers, align 4
  %70 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %71 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @flicker_mode, align 4
  %73 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %74 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @flicker_freq, align 4
  %78 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @alternate, align 4
  %83 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %88 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %89 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.camera_data*, %struct.camera_data** %2, align 8
  %91 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %90, i32 0, i32 0
  %92 = call i32 @v4l2_prio_init(i32* %91)
  ret void
}

declare dso_local i32 @v4l2_prio_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
