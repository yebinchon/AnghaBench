; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_reset_video_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_reset_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.TYPE_4__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_dmaqueue = type { i32, i64, i64, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_reset_video_buffer(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca %struct.cx231xx_dmaqueue*, align 8
  %5 = alloca %struct.cx231xx_buffer*, align 8
  %6 = alloca i32*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %4, align 8
  %7 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %8 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %13 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %16 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %21 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %20, i32 0, i32 3
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %11
  %23 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %24 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %23, i32 0, i32 3
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %35, align 8
  store %struct.cx231xx_buffer* %36, %struct.cx231xx_buffer** %5, align 8
  br label %43

37:                                               ; preds = %26
  %38 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %41, align 8
  store %struct.cx231xx_buffer* %42, %struct.cx231xx_buffer** %5, align 8
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %5, align 8
  %45 = icmp eq %struct.cx231xx_buffer* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  store i32* null, i32** %6, align 8
  %47 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %48 = call i32 @get_next_buf(%struct.cx231xx_dmaqueue* %47, %struct.cx231xx_buffer** %5)
  %49 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %5, align 8
  %50 = icmp ne %struct.cx231xx_buffer* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %5, align 8
  %53 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %52, i32 0, i32 0
  %54 = call i32* @videobuf_to_vmalloc(i32* %53)
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %57 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  %58 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %59 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %58, i32 0, i32 3
  store i32 0, i32* %59, align 8
  %60 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %61 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %43
  %63 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  %67 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %68 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %4, align 8
  %70 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  ret void
}

declare dso_local i32 @get_next_buf(%struct.cx231xx_dmaqueue*, %struct.cx231xx_buffer**) #1

declare dso_local i32* @videobuf_to_vmalloc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
