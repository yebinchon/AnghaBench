; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_stop_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_ctlr_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32, i32, i32 }

@CF_DMA_ACTIVE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout waiting for DMA to end\0A\00", align 1
@S_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cafe_camera*)* @cafe_ctlr_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_ctlr_stop_dma(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca i64, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %4 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %5 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = call i32 @cafe_ctlr_stop(%struct.cafe_camera* %8)
  %10 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %11 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_unlock_irqrestore(i32* %11, i64 %12)
  %14 = call i32 @mdelay(i32 1)
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %16 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %19 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %20 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @HZ, align 4
  %26 = call i32 @wait_event_timeout(i32 %17, i32 %24, i32 %25)
  %27 = load i32, i32* @CF_DMA_ACTIVE, align 4
  %28 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %29 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %34 = call i32 @cam_err(%struct.cafe_camera* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %1
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %37 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %36, i32 0, i32 0
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load i32, i32* @S_IDLE, align 4
  %41 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %42 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %44 = call i32 @cafe_ctlr_irq_disable(%struct.cafe_camera* %43)
  %45 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %46 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %45, i32 0, i32 0
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cafe_ctlr_stop(%struct.cafe_camera*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*) #1

declare dso_local i32 @cafe_ctlr_irq_disable(%struct.cafe_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
