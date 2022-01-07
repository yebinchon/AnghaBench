; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_init_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i64, i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, %struct.nes_hw_tune_timer }
%struct.nes_hw_tune_timer = type { i64, i32, i64, i64 }

@NES_NIC_FAST_TIMER = common dso_local global i32 0, align 4
@NES_PERIODIC_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*)* @nes_nic_init_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_nic_init_timer(%struct.nes_device* %0) #0 {
  %2 = alloca %struct.nes_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nes_adapter*, align 8
  %5 = alloca %struct.nes_hw_tune_timer*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %2, align 8
  %6 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %7 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %6, i32 0, i32 2
  %8 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  store %struct.nes_adapter* %8, %struct.nes_adapter** %4, align 8
  %9 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %9, i32 0, i32 1
  store %struct.nes_hw_tune_timer* %10, %struct.nes_hw_tune_timer** %5, align 8
  %11 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %16 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %21 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %23 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %25 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @NES_NIC_FAST_TIMER, align 4
  %27 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %28 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %30 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %33 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %37 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %31
  %41 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %42 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %46 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %48 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NES_PERIODIC_CONTROL, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %53 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 8
  %56 = or i32 -2147483648, %55
  %57 = call i32 @nes_write32(i64 %51, i32 %56)
  br label %58

58:                                               ; preds = %40, %31
  %59 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %59, i32 0, i32 0
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_write32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
