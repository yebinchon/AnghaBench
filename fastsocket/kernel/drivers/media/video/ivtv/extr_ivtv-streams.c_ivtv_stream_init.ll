; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_stream_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-streams.c_ivtv_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.ivtv = type { i32*, %struct.TYPE_3__, %struct.ivtv_stream* }
%struct.TYPE_3__ = type { i32* }
%struct.ivtv_stream = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ivtv*, %struct.video_device* }
%struct.video_device = type { i32 }

@ivtv_stream_info = common dso_local global %struct.TYPE_4__* null, align 8
@PCI_DMA_NONE = common dso_local global i32 0, align 4
@IVTV_DMA_UNMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32)* @ivtv_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_stream_init(%struct.ivtv* %0, i32 %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv_stream*, align 8
  %6 = alloca %struct.video_device*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 2
  %9 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %9, i64 %11
  store %struct.ivtv_stream* %12, %struct.ivtv_stream** %5, align 8
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %14 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %13, i32 0, i32 15
  %15 = load %struct.video_device*, %struct.video_device** %14, align 8
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %17 = call i32 @memset(%struct.ivtv_stream* %16, i32 0, i32 72)
  %18 = load %struct.video_device*, %struct.video_device** %6, align 8
  %19 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %20 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %19, i32 0, i32 15
  store %struct.video_device* %18, %struct.video_device** %20, align 8
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %23 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %22, i32 0, i32 14
  store %struct.ivtv* %21, %struct.ivtv** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load i32, i32* @PCI_DMA_NONE, align 4
  %44 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %45 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ivtv_stream_info, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %54 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %46, %42
  %56 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %64 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %66 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %55
  %70 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 1024
  %79 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %80 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %85 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %83, %86
  %88 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %89 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %69, %55
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 11
  %93 = call i32 @spin_lock_init(i32* %92)
  %94 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %95 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %94, i32 0, i32 10
  %96 = call i32 @init_waitqueue_head(i32* %95)
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %97, i32 0, i32 3
  store i32 -1, i32* %98, align 4
  %99 = load i32, i32* @IVTV_DMA_UNMAPPED, align 4
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %103 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %102, i32 0, i32 8
  %104 = call i32 @ivtv_queue_init(i32* %103)
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %106 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %105, i32 0, i32 7
  %107 = call i32 @ivtv_queue_init(i32* %106)
  %108 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %109 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %108, i32 0, i32 6
  %110 = call i32 @ivtv_queue_init(i32* %109)
  %111 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %112 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %111, i32 0, i32 5
  %113 = call i32 @ivtv_queue_init(i32* %112)
  %114 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %115 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %114, i32 0, i32 4
  %116 = call i32 @ivtv_queue_init(i32* %115)
  ret void
}

declare dso_local i32 @memset(%struct.ivtv_stream*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ivtv_queue_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
