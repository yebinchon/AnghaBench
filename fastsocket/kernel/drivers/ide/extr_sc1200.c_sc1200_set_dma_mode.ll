; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sc1200.c_sc1200_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.pci_dev = type { i32 }

@sc1200_set_dma_mode.udma_timing = internal constant [3 x [3 x i32]] [[3 x i32] [i32 9572944, i32 9507136, i32 9506864], [3 x i32] [i32 9643120, i32 9577056, i32 9576768], [3 x i32] [i32 9713313, i32 9647233, i32 9581153]], align 16
@sc1200_set_dma_mode.mwdma_timing = internal constant [3 x [3 x i32]] [[3 x i32] [i32 489329, i32 74017, i32 8224], [3 x i32] [i32 768946, i32 148033, i32 78129], [3 x i32] [i32 1048563, i32 217938, i32 86353]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @sc1200_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc1200_set_dma_mode(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %5, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 80, i32 64
  store i32 %23, i32* %10, align 4
  %24 = call zeroext i16 (...) @sc1200_get_pci_clock()
  store i16 %24, i16* %9, align 2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @XFER_UDMA_0, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i16, i16* %9, align 2
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @sc1200_set_dma_mode.udma_timing, i64 0, i64 %30
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @XFER_UDMA_0, align 8
  %34 = sub nsw i64 %32, %33
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  br label %46

37:                                               ; preds = %2
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @sc1200_set_dma_mode.mwdma_timing, i64 0, i64 %39
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @XFER_MW_DMA_0, align 8
  %43 = sub nsw i64 %41, %42
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %37, %28
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 4
  %56 = call i32 @pci_read_config_dword(%struct.pci_dev* %53, i32 %55, i32* %7)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, -2147483648
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pci_write_config_dword(%struct.pci_dev* %61, i32 %63, i32 %64)
  br label %72

66:                                               ; preds = %46
  %67 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 12
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @pci_write_config_dword(%struct.pci_dev* %67, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %52
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local zeroext i16 @sc1200_get_pci_clock(...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
