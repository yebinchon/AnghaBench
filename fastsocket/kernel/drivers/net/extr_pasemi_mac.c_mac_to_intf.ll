; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_mac_to_intf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pasemi_mac.c_mac_to_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PAS_DMA_CAP_IFI = common dso_local global i32 0, align 4
@PAS_DMA_CAP_IFI_NIN_M = common dso_local global i32 0, align 4
@PAS_DMA_CAP_IFI_NIN_S = common dso_local global i32 0, align 4
@PAS_DMA_CAP_IFI_IOFF_M = common dso_local global i32 0, align 4
@PAS_DMA_CAP_IFI_IOFF_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_mac*)* @mac_to_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_to_intf(%struct.pasemi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pasemi_mac*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %3, align 8
  %11 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %12 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @PAS_DMA_CAP_IFI, align 4
  %18 = call i32 @read_dma_reg(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PAS_DMA_CAP_IFI_NIN_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PAS_DMA_CAP_IFI_NIN_S, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PAS_DMA_CAP_IFI_IOFF_M, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @PAS_DMA_CAP_IFI_IOFF_S, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %62, %1
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 3
  %33 = sdiv i32 %32, 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 4, %37
  %39 = add nsw i32 %36, %38
  %40 = call i32 @read_dma_reg(i32 %39)
  store i32 %40, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %58, %35
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 4
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 8, %46
  %48 = ashr i32 %45, %47
  %49 = and i32 %48, 255
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %53, 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %2, align 4
  br label %66

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %41

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %29

65:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @read_dma_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
