; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-dma.c_dma_supported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_pci-dma.c_dma_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_map_ops = type { i32 (%struct.device.0*, i32)* }
%struct.device.0 = type opaque

@iommu_sac_force = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Force SAC with mask %Lx\0A\00", align 1
@forbid_dac = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_supported(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_map_ops*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.dma_map_ops* @get_dma_ops(%struct.device* %7)
  store %struct.dma_map_ops* %8, %struct.dma_map_ops** %6, align 8
  %9 = load %struct.dma_map_ops*, %struct.dma_map_ops** %6, align 8
  %10 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %9, i32 0, i32 0
  %11 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.device.0*, i32)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.dma_map_ops*, %struct.dma_map_ops** %6, align 8
  %15 = getelementptr inbounds %struct.dma_map_ops, %struct.dma_map_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.device.0*, i32)*, i32 (%struct.device.0*, i32)** %15, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = bitcast %struct.device* %17 to %struct.device.0*
  %19 = load i32, i32* %5, align 4
  %20 = call i32 %16(%struct.device.0* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DMA_BIT_MASK(i32 24)
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

26:                                               ; preds = %21
  %27 = load i64, i64* @iommu_sac_force, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @DMA_BIT_MASK(i32 40)
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %29, %26
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %25, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.dma_map_ops* @get_dma_ops(%struct.device*) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
