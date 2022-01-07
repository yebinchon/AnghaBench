; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_atiixp.c_atiixp_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_atiixp.c_atiixp_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@atiixp_lock = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_CONTROL = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_MODE = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_MDMA_TIMING = common dso_local global i32 0, align 4
@mdma_timing = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @atiixp_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_set_dma_mode(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = xor i32 %20, 1
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @spin_lock_irqsave(i32* @atiixp_lock, i64 %23)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %25, i32 %26, i32* %10)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @XFER_UDMA_0, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %34 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i32 %33, i32* %9)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 4
  %39 = shl i32 7, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 7
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = shl i32 %44, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @pci_write_config_word(%struct.pci_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = shl i32 1, %58
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %109

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XFER_MW_DMA_0, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %108

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 3
  store i32 %68, i32* %11, align 4
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = load i32, i32* @ATIIXP_IDE_MDMA_TIMING, align 4
  %71 = call i32 @pci_read_config_dword(%struct.pci_dev* %69, i32 %70, i32* %8)
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 255, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mdma_timing, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %82, %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mdma_timing, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 4
  %93 = shl i32 %90, %92
  %94 = or i32 %84, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = load i32, i32* @ATIIXP_IDE_MDMA_TIMING, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @pci_write_config_dword(%struct.pci_dev* %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %66, %62
  br label %109

109:                                              ; preds = %108, %31
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @pci_write_config_word(%struct.pci_dev* %110, i32 %111, i32 %112)
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* @atiixp_lock, i64 %114)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
