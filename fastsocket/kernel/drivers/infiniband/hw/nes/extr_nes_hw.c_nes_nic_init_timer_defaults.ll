; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_init_timer_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_init_timer_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32, %struct.nes_hw_tune_timer }
%struct.nes_hw_tune_timer = type { i32, i32, i32, i32, i32 }

@NES_NIC_FAST_TIMER_LOW = common dso_local global i32 0, align 4
@NES_NIC_FAST_TIMER_HIGH = common dso_local global i32 0, align 4
@DEFAULT_JUMBO_NES_QL_LOW = common dso_local global i32 0, align 4
@DEFAULT_JUMBO_NES_QL_TARGET = common dso_local global i32 0, align 4
@DEFAULT_JUMBO_NES_QL_HIGH = common dso_local global i32 0, align 4
@DEFAULT_NES_QL_LOW = common dso_local global i32 0, align 4
@DEFAULT_NES_QL_TARGET = common dso_local global i32 0, align 4
@DEFAULT_NES_QL_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nes_nic_init_timer_defaults(%struct.nes_device* %0, i64 %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nes_adapter*, align 8
  %7 = alloca %struct.nes_hw_tune_timer*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %9 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %8, i32 0, i32 0
  %10 = load %struct.nes_adapter*, %struct.nes_adapter** %9, align 8
  store %struct.nes_adapter* %10, %struct.nes_adapter** %6, align 8
  %11 = load %struct.nes_adapter*, %struct.nes_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %11, i32 0, i32 1
  store %struct.nes_hw_tune_timer* %12, %struct.nes_hw_tune_timer** %7, align 8
  %13 = load %struct.nes_adapter*, %struct.nes_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @NES_NIC_FAST_TIMER_LOW, align 4
  %18 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %19 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @NES_NIC_FAST_TIMER_HIGH, align 4
  %21 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %22 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* @DEFAULT_JUMBO_NES_QL_LOW, align 4
  %27 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %28 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DEFAULT_JUMBO_NES_QL_TARGET, align 4
  %30 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %31 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DEFAULT_JUMBO_NES_QL_HIGH, align 4
  %33 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %34 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* @DEFAULT_NES_QL_LOW, align 4
  %37 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %38 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @DEFAULT_NES_QL_TARGET, align 4
  %40 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %41 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @DEFAULT_NES_QL_HIGH, align 4
  %43 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %7, align 8
  %44 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %25
  %46 = load %struct.nes_adapter*, %struct.nes_adapter** %6, align 8
  %47 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
