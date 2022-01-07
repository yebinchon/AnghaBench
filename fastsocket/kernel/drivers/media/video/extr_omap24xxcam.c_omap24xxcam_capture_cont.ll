; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_capture_cont.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_capture_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_device*)* @omap24xxcam_capture_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_capture_cont(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca %struct.omap24xxcam_device*, align 8
  %3 = alloca i64, align 8
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %2, align 8
  %4 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %5 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %9 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %15 = call i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device* %14)
  %16 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %17 = call i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device* %16)
  %18 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %18, i32 0, i32 3
  %20 = call i32 @omap24xxcam_sgdma_process(i32* %19)
  %21 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %22 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %27 = call i32 @omap24xxcam_core_enable(%struct.omap24xxcam_device* %26)
  br label %28

28:                                               ; preds = %25, %13
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %31 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %30, i32 0, i32 1
  %32 = call i32 @atomic_dec(i32* %31)
  %33 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %34 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %33, i32 0, i32 0
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device*) #1

declare dso_local i32 @omap24xxcam_sensor_if_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @omap24xxcam_sgdma_process(i32*) #1

declare dso_local i32 @omap24xxcam_core_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
