; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_sync_single_range_for_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mm/extr_dma-default.c_dma_sync_single_range_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_sync_single_range_for_device(%struct.device* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* @DMA_NONE, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call i32 @plat_extra_sync_for_device(%struct.device* %17)
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @plat_device_is_coherent(%struct.device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %5
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @dma_addr_to_virt(%struct.device* %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @__dma_sync(i64 %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @plat_extra_sync_for_device(%struct.device*) #1

declare dso_local i32 @plat_device_is_coherent(%struct.device*) #1

declare dso_local i64 @dma_addr_to_virt(%struct.device*, i32) #1

declare dso_local i32 @__dma_sync(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
