; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_next_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_next_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@IVTV_YUV_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_yuv_next_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_next_free(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.yuv_playback_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 0
  store %struct.yuv_playback_info* %7, %struct.yuv_playback_info** %5, align 8
  %8 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %9 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %8, i32 0, i32 3
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %14 = call i32 @ivtv_yuv_init(%struct.ivtv* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %17 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %16, i32 0, i32 4
  %18 = call i32 @atomic_read(i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %20 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %19, i32 0, i32 3
  %21 = call i32 @atomic_read(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i32, i32* @IVTV_YUV_BUFFERS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %34 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* @IVTV_YUV_BUFFERS, align 4
  %41 = srem i32 %39, %40
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %29
  %43 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %44 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %5, align 8
  %53 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_yuv_init(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
