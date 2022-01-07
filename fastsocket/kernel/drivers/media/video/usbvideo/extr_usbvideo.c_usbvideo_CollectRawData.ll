; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_CollectRawData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_CollectRawData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usbvideo_frame = type { i32, i32, i32 }

@FrameState_Done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*)* @usbvideo_CollectRawData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvideo_CollectRawData(%struct.uvd* %0, %struct.usbvideo_frame* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.usbvideo_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %4, align 8
  %7 = load %struct.uvd*, %struct.uvd** %3, align 8
  %8 = icmp ne %struct.uvd* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %12 = icmp ne %struct.usbvideo_frame* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.uvd*, %struct.uvd** %3, align 8
  %16 = getelementptr inbounds %struct.uvd, %struct.uvd* %15, i32 0, i32 3
  %17 = call i32 @RingQueue_GetLength(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %2
  %21 = load %struct.uvd*, %struct.uvd** %3, align 8
  %22 = getelementptr inbounds %struct.uvd, %struct.uvd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %25 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %20
  %34 = load %struct.uvd*, %struct.uvd** %3, align 8
  %35 = getelementptr inbounds %struct.uvd, %struct.uvd* %34, i32 0, i32 3
  %36 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %37 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %40 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @RingQueue_Dequeue(i32* %35, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %47 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %33, %2
  %51 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %52 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.uvd*, %struct.uvd** %3, align 8
  %55 = getelementptr inbounds %struct.uvd, %struct.uvd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i32, i32* @FrameState_Done, align 4
  %60 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %4, align 8
  %61 = getelementptr inbounds %struct.usbvideo_frame, %struct.usbvideo_frame* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.uvd*, %struct.uvd** %3, align 8
  %63 = getelementptr inbounds %struct.uvd, %struct.uvd* %62, i32 0, i32 1
  store i32 -1, i32* %63, align 4
  %64 = load %struct.uvd*, %struct.uvd** %3, align 8
  %65 = getelementptr inbounds %struct.uvd, %struct.uvd* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %58, %50
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(i32*) #1

declare dso_local i32 @RingQueue_Dequeue(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
