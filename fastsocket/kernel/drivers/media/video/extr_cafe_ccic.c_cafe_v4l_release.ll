; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_v4l_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i32, %struct.file* }

@alloc_bufs_at_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @cafe_v4l_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_v4l_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cafe_camera*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %6 = load %struct.cafe_camera*, %struct.cafe_camera** %5, align 8
  store %struct.cafe_camera* %6, %struct.cafe_camera** %3, align 8
  %7 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %8 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %11 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.file*, %struct.file** %2, align 8
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %16 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %15, i32 0, i32 2
  %17 = load %struct.file*, %struct.file** %16, align 8
  %18 = icmp eq %struct.file* %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %21 = call i32 @cafe_ctlr_stop_dma(%struct.cafe_camera* %20)
  %22 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %23 = call i32 @cafe_free_sio_buffers(%struct.cafe_camera* %22)
  %24 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %25 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %24, i32 0, i32 2
  store %struct.file* null, %struct.file** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %28 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %33 = call i32 @cafe_ctlr_power_down(%struct.cafe_camera* %32)
  %34 = load i64, i64* @alloc_bufs_at_read, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %38 = call i32 @cafe_free_dma_bufs(%struct.cafe_camera* %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %3, align 8
  %42 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cafe_ctlr_stop_dma(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_free_sio_buffers(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_power_down(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_free_dma_bufs(%struct.cafe_camera*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
