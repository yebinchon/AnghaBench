; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_jpegheader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_write_jpegheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sn9c102_frame_t = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@sn9c102_write_jpegheader.jpeg_header = internal constant [589 x i32] [i32 255, i32 216, i32 255, i32 219, i32 0, i32 132, i32 0, i32 6, i32 4, i32 5, i32 6, i32 5, i32 4, i32 6, i32 6, i32 5, i32 6, i32 7, i32 7, i32 6, i32 8, i32 10, i32 16, i32 10, i32 10, i32 9, i32 9, i32 10, i32 20, i32 14, i32 15, i32 12, i32 16, i32 23, i32 20, i32 24, i32 24, i32 23, i32 20, i32 22, i32 22, i32 26, i32 29, i32 37, i32 31, i32 26, i32 27, i32 35, i32 28, i32 22, i32 22, i32 32, i32 44, i32 32, i32 35, i32 38, i32 39, i32 41, i32 42, i32 41, i32 25, i32 31, i32 45, i32 48, i32 45, i32 40, i32 48, i32 37, i32 40, i32 41, i32 40, i32 1, i32 7, i32 7, i32 7, i32 10, i32 8, i32 10, i32 19, i32 10, i32 10, i32 19, i32 40, i32 26, i32 22, i32 26, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 255, i32 196, i32 1, i32 162, i32 0, i32 0, i32 1, i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 1, i32 0, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 0, i32 2, i32 1, i32 3, i32 3, i32 2, i32 4, i32 3, i32 5, i32 5, i32 4, i32 4, i32 0, i32 0, i32 1, i32 125, i32 1, i32 2, i32 3, i32 0, i32 4, i32 17, i32 5, i32 18, i32 33, i32 49, i32 65, i32 6, i32 19, i32 81, i32 97, i32 7, i32 34, i32 113, i32 20, i32 50, i32 129, i32 145, i32 161, i32 8, i32 35, i32 66, i32 177, i32 193, i32 21, i32 82, i32 209, i32 240, i32 36, i32 51, i32 98, i32 114, i32 130, i32 9, i32 10, i32 22, i32 23, i32 24, i32 25, i32 26, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 225, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 241, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 17, i32 0, i32 2, i32 1, i32 2, i32 4, i32 4, i32 3, i32 4, i32 7, i32 5, i32 4, i32 4, i32 0, i32 1, i32 2, i32 119, i32 0, i32 1, i32 2, i32 3, i32 17, i32 4, i32 5, i32 33, i32 49, i32 6, i32 18, i32 65, i32 81, i32 7, i32 97, i32 113, i32 19, i32 34, i32 50, i32 129, i32 8, i32 20, i32 66, i32 145, i32 161, i32 177, i32 193, i32 9, i32 35, i32 51, i32 82, i32 240, i32 21, i32 98, i32 114, i32 209, i32 10, i32 22, i32 36, i32 52, i32 225, i32 37, i32 241, i32 23, i32 24, i32 25, i32 26, i32 38, i32 39, i32 40, i32 41, i32 42, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 162, i32 163, i32 164, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 216, i32 217, i32 218, i32 226, i32 227, i32 228, i32 229, i32 230, i32 231, i32 232, i32 233, i32 234, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247, i32 248, i32 249, i32 250, i32 255, i32 192, i32 0, i32 17, i32 8, i32 1, i32 224, i32 2, i32 128, i32 3, i32 1, i32 33, i32 0, i32 2, i32 17, i32 1, i32 3, i32 17, i32 1, i32 255, i32 218, i32 0, i32 12, i32 3, i32 1, i32 0, i32 2, i32 17, i32 3, i32 17, i32 0, i32 63, i32 0], align 16
@SN9C102_Y_QTABLE0 = common dso_local global i32* null, align 8
@SN9C102_UV_QTABLE0 = common dso_local global i32* null, align 8
@SN9C102_Y_QTABLE1 = common dso_local global i32* null, align 8
@SN9C102_UV_QTABLE1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sn9c102_device*, %struct.sn9c102_frame_t*)* @sn9c102_write_jpegheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sn9c102_write_jpegheader(%struct.sn9c102_device* %0, %struct.sn9c102_frame_t* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.sn9c102_frame_t*, align 8
  %5 = alloca i32*, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.sn9c102_frame_t* %1, %struct.sn9c102_frame_t** %4, align 8
  %6 = load %struct.sn9c102_frame_t*, %struct.sn9c102_frame_t** %4, align 8
  %7 = getelementptr inbounds %struct.sn9c102_frame_t, %struct.sn9c102_frame_t* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @memcpy(i32* %9, i32* getelementptr inbounds ([589 x i32], [589 x i32]* @sn9c102_write_jpegheader.jpeg_header, i64 0, i64 0), i32 2356)
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 6
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 7
  %15 = getelementptr inbounds i32, i32* %14, i64 64
  store i32 1, i32* %15, align 4
  %16 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %17 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32*, i32** @SN9C102_Y_QTABLE0, align 8
  %25 = call i32 @memcpy(i32* %23, i32* %24, i32 64)
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = getelementptr inbounds i32, i32* %27, i64 64
  %29 = load i32*, i32** @SN9C102_UV_QTABLE0, align 8
  %30 = call i32 @memcpy(i32* %28, i32* %29, i32 64)
  br label %48

31:                                               ; preds = %2
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %33 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  %40 = load i32*, i32** @SN9C102_Y_QTABLE1, align 8
  %41 = call i32 @memcpy(i32* %39, i32* %40, i32 64)
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = getelementptr inbounds i32, i32* %43, i64 64
  %45 = load i32*, i32** @SN9C102_UV_QTABLE1, align 8
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 64)
  br label %47

47:                                               ; preds = %37, %31
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %50 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 255
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 564
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %58 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 563
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %67 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 562
  store i32 %71, i32* %73, align 4
  %74 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %75 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 561
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 567
  store i32 33, i32* %84, align 4
  %85 = load %struct.sn9c102_frame_t*, %struct.sn9c102_frame_t** %4, align 8
  %86 = getelementptr inbounds %struct.sn9c102_frame_t, %struct.sn9c102_frame_t* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 2356
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
