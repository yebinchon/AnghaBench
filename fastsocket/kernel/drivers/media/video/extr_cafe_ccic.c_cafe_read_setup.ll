; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_read_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_read_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32)* @cafe_read_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_read_setup(%struct.cafe_camera* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cafe_camera*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %9 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %14 = call i64 @cafe_alloc_dma_bufs(%struct.cafe_camera* %13, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %2
  %21 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %22 = call i64 @cafe_needs_config(%struct.cafe_camera* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %26 = call i32 @cafe_cam_configure(%struct.cafe_camera* %25)
  %27 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %28 = call i32 @cafe_ctlr_configure(%struct.cafe_camera* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %36 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %35, i32 0, i32 2
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %40 = call i32 @cafe_reset_buffers(%struct.cafe_camera* %39)
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %42 = call i32 @cafe_ctlr_irq_enable(%struct.cafe_camera* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %45 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %47 = call i32 @cafe_ctlr_start(%struct.cafe_camera* %46)
  %48 = load %struct.cafe_camera*, %struct.cafe_camera** %4, align 8
  %49 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %48, i32 0, i32 2
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %34, %31, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @cafe_alloc_dma_bufs(%struct.cafe_camera*, i32) #1

declare dso_local i64 @cafe_needs_config(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_cam_configure(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_configure(%struct.cafe_camera*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cafe_reset_buffers(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_irq_enable(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_ctlr_start(%struct.cafe_camera*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
