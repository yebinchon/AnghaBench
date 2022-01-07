; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i64, %struct.nes_adapter* }
%struct.nes_adapter = type { i32*, i32*, i32 }

@NES_IDX_MAC_TX_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nes_init_phy(%struct.nes_device* %0) #0 {
  %2 = alloca %struct.nes_device*, align 8
  %3 = alloca %struct.nes_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %2, align 8
  %10 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %11 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %10, i32 0, i32 1
  %12 = load %struct.nes_adapter*, %struct.nes_adapter** %11, align 8
  store %struct.nes_adapter* %12, %struct.nes_adapter** %3, align 8
  %13 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %14 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %16 = load %struct.nes_adapter*, %struct.nes_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.nes_adapter*, %struct.nes_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %29 = load i32, i32* @NES_IDX_MAC_TX_CONFIG, align 4
  %30 = call i64 @nes_read_indexed(%struct.nes_device* %28, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load i64, i64* %5, align 8
  %35 = and i64 %34, 4294967267
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = or i64 %36, 4
  store i64 %37, i64* %5, align 8
  br label %43

38:                                               ; preds = %1
  %39 = load i64, i64* %5, align 8
  %40 = and i64 %39, 4294967267
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = or i64 %41, 29
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %45 = load i32, i32* @NES_IDX_MAC_TX_CONFIG, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @nes_write_indexed(%struct.nes_device* %44, i32 %45, i64 %46)
  %48 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %49 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %48, i32 0, i32 1
  %50 = load %struct.nes_adapter*, %struct.nes_adapter** %49, align 8
  %51 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %50, i32 0, i32 2
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %65 [
    i32 131, label %55
    i32 130, label %60
    i32 128, label %60
    i32 129, label %60
  ]

55:                                               ; preds = %43
  %56 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @nes_init_1g_phy(%struct.nes_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  br label %65

60:                                               ; preds = %43, %43, %43
  %61 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @nes_init_2025_phy(%struct.nes_device* %61, i32 %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %43, %60, %55
  %66 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %67 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %66, i32 0, i32 1
  %68 = load %struct.nes_adapter*, %struct.nes_adapter** %67, align 8
  %69 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %68, i32 0, i32 2
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i64 @nes_read_indexed(%struct.nes_device*, i32) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nes_init_1g_phy(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @nes_init_2025_phy(%struct.nes_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
