; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_config_dma_addressing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_config_dma_addressing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@qla2x00_calc_iocbs_64 = common dso_local global i32 0, align 4
@qla2x00_build_scsi_iocbs_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qla_hw_data*)* @qla2x00_config_dma_addressing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_config_dma_addressing(%struct.qla_hw_data* %0) #0 {
  %2 = alloca %struct.qla_hw_data*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %2, align 8
  %3 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %4 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = call i32 @DMA_BIT_MASK(i32 64)
  %11 = call i32 @dma_set_mask(i32* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %1
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @dma_get_required_mask(i32* %17)
  %19 = call i64 @MSD(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %13
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @DMA_BIT_MASK(i32 64)
  %26 = call i32 @pci_set_consistent_dma_mask(%struct.TYPE_6__* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @qla2x00_calc_iocbs_64, align 4
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @qla2x00_build_scsi_iocbs_64, align 4
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %55

42:                                               ; preds = %21, %13
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @DMA_BIT_MASK(i32 32)
  %49 = call i32 @dma_set_mask(i32* %47, i32 %48)
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %2, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @DMA_BIT_MASK(i32 32)
  %54 = call i32 @pci_set_consistent_dma_mask(%struct.TYPE_6__* %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %28
  ret void
}

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @MSD(i32) #1

declare dso_local i32 @dma_get_required_mask(i32*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
