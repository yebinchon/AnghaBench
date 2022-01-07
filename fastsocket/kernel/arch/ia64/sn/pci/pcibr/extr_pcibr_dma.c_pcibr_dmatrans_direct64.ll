; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmatrans_direct64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmatrans_direct64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcidev_info = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pcibus_info = type { i64 }

@SN_DMA_ADDR_PHYS = common dso_local global i64 0, align 8
@PCI64_ATTR_PREF = common dso_local global i32 0, align 4
@PIC_PCI64_ATTR_TARG_SHFT = common dso_local global i32 0, align 4
@SN_DMA_MSI = common dso_local global i32 0, align 4
@TIOCP_PCI64_CMDTYPE_MSI = common dso_local global i32 0, align 4
@TIOCP_PCI64_CMDTYPE_MEM = common dso_local global i32 0, align 4
@PCI64_ATTR_VIRTUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcidev_info*, i32, i32, i32)* @pcibr_dmatrans_direct64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcibr_dmatrans_direct64(%struct.pcidev_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pcidev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcibus_info*, align 8
  %10 = alloca i32, align 4
  store %struct.pcidev_info* %0, %struct.pcidev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pcidev_info*, %struct.pcidev_info** %5, align 8
  %12 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.pcibus_info*
  store %struct.pcibus_info* %16, %struct.pcibus_info** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @SN_DMA_ADDRTYPE(i32 %17)
  %19 = load i64, i64* @SN_DMA_ADDR_PHYS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %23 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @PHYS_TO_DMA(i32 %26)
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @PHYS_TO_TIODMA(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  store i32 %32, i32* %10, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %40 = call i64 @IS_PCIX(%struct.pcibus_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* @PCI64_ATTR_PREF, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %42, %35
  %48 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %49 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %53 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @PIC_PCI64_ATTR_TARG_SHFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %73

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SN_DMA_MSI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @TIOCP_PCI64_CMDTYPE_MSI, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @TIOCP_PCI64_CMDTYPE_MEM, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %51
  %74 = load %struct.pcibus_info*, %struct.pcibus_info** %9, align 8
  %75 = call i64 @IS_PCIX(%struct.pcibus_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load %struct.pcidev_info*, %struct.pcidev_info** %5, align 8
  %79 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @PCI_FUNC(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* @PCI64_ATTR_VIRTUAL, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %85, %77, %73
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local i64 @SN_DMA_ADDRTYPE(i32) #1

declare dso_local i64 @IS_PIC_SOFT(%struct.pcibus_info*) #1

declare dso_local i32 @PHYS_TO_DMA(i32) #1

declare dso_local i32 @PHYS_TO_TIODMA(i32) #1

declare dso_local i64 @IS_PCIX(%struct.pcibus_info*) #1

declare dso_local i64 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
