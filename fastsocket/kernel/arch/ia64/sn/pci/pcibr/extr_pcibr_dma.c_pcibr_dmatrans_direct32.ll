; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmatrans_direct32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmatrans_direct32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcidev_info = type { i64, %struct.pcidev_info* }
%struct.pcibus_info = type { i64 }

@SN_DMA_MSI = common dso_local global i32 0, align 4
@SN_DMA_ADDR_PHYS = common dso_local global i64 0, align 8
@PCI32_DIRECT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pcidev_info*, i64, i64, i64, i32)* @pcibr_dmatrans_direct32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcibr_dmatrans_direct32(%struct.pcidev_info* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcidev_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcidev_info*, align 8
  %13 = alloca %struct.pcibus_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.pcidev_info* %0, %struct.pcidev_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.pcidev_info*, %struct.pcidev_info** %7, align 8
  %19 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %18, i32 0, i32 1
  %20 = load %struct.pcidev_info*, %struct.pcidev_info** %19, align 8
  store %struct.pcidev_info* %20, %struct.pcidev_info** %12, align 8
  %21 = load %struct.pcidev_info*, %struct.pcidev_info** %12, align 8
  %22 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.pcibus_info*
  store %struct.pcibus_info* %24, %struct.pcibus_info** %13, align 8
  %25 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %26 = call i64 @IS_PCIX(%struct.pcibus_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %78

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SN_DMA_MSI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i64 0, i64* %6, align 8
  br label %78

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @SN_DMA_ADDRTYPE(i32 %36)
  %38 = load i64, i64* @SN_DMA_ADDR_PHYS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %42 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @PHYS_TO_DMA(i64 %45)
  br label %50

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @PHYS_TO_TIODMA(i64 %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i64 [ %46, %44 ], [ %49, %47 ]
  store i64 %51, i64* %14, align 8
  br label %54

52:                                               ; preds = %35
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %56 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = sub i64 %58, %59
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %16, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %17, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp ugt i64 %64, 2147483648
  br i1 %65, label %73, label %66

66:                                               ; preds = %54
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %17, align 8
  %72 = icmp ugt i64 %71, 2147483648
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %66, %54
  store i64 0, i64* %6, align 8
  br label %78

74:                                               ; preds = %70
  %75 = load i64, i64* @PCI32_DIRECT_BASE, align 8
  %76 = load i64, i64* %16, align 8
  %77 = or i64 %75, %76
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %74, %73, %34, %28
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @IS_PCIX(%struct.pcibus_info*) #1

declare dso_local i64 @SN_DMA_ADDRTYPE(i32) #1

declare dso_local i64 @IS_PIC_SOFT(%struct.pcibus_info*) #1

declare dso_local i64 @PHYS_TO_DMA(i64) #1

declare dso_local i64 @PHYS_TO_TIODMA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
