; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmamap_ate32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_pcibr_dmamap_ate32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcidev_info = type { %struct.TYPE_2__*, %struct.pcidev_info*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pcibus_info = type { i32, i32* }

@PCI32_ATE_V = common dso_local global i32 0, align 4
@IOPGSIZE = common dso_local global i32 0, align 4
@PCI32_ATE_PREF = common dso_local global i32 0, align 4
@SN_DMA_ADDR_PHYS = common dso_local global i32 0, align 4
@PIC_ATE_TARGETID_SHFT = common dso_local global i32 0, align 4
@SN_DMA_MSI = common dso_local global i32 0, align 4
@PCI32_ATE_MSI = common dso_local global i32 0, align 4
@PCI32_ATE_PIO = common dso_local global i32 0, align 4
@PCI32_MAPPED_BASE = common dso_local global i32 0, align 4
@PCIBR_DEV_SWAP_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcidev_info*, i32, i64, i32, i32)* @pcibr_dmamap_ate32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcibr_dmamap_ate32(%struct.pcidev_info* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcidev_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcidev_info*, align 8
  %13 = alloca %struct.pcibus_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pcidev_info* %0, %struct.pcidev_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load %struct.pcidev_info*, %struct.pcidev_info** %7, align 8
  %23 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %22, i32 0, i32 1
  %24 = load %struct.pcidev_info*, %struct.pcidev_info** %23, align 8
  store %struct.pcidev_info* %24, %struct.pcidev_info** %12, align 8
  %25 = load %struct.pcidev_info*, %struct.pcidev_info** %12, align 8
  %26 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.pcibus_info*
  store %struct.pcibus_info* %28, %struct.pcibus_info** %13, align 8
  %29 = load %struct.pcidev_info*, %struct.pcidev_info** %12, align 8
  %30 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %29, i32 0, i32 1
  %31 = load %struct.pcidev_info*, %struct.pcidev_info** %30, align 8
  %32 = getelementptr inbounds %struct.pcidev_info, %struct.pcidev_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @PCI_SLOT(i32 %35)
  %37 = sub i64 %36, 1
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PCI32_ATE_V, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %17, align 4
  %41 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %42 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %5
  %45 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %46 = call i64 @IS_PCIX(%struct.pcibus_info* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %168

49:                                               ; preds = %44, %5
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @MINIMAL_ATE_FLAG(i32 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @IOPGSIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  %61 = call i32 @IOPG(i64 %60)
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %68

63:                                               ; preds = %49
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 1
  %66 = call i32 @IOPG(i64 %65)
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @pcibr_ate_alloc(%struct.pcibus_info* %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %168

75:                                               ; preds = %68
  %76 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %77 = call i64 @IS_PCIX(%struct.pcibus_info* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @PCI32_ATE_PREF, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %17, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SN_DMA_ADDR_PHYS, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @SN_DMA_ADDRTYPE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %93 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @PHYS_TO_DMA(i32 %96)
  br label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @PHYS_TO_TIODMA(i32 %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = phi i32 [ %97, %95 ], [ %100, %98 ]
  store i32 %102, i32* %20, align 4
  br label %105

103:                                              ; preds = %84
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = load i32, i32* %20, align 4
  %107 = call i32 @IOPGOFF(i32 %106)
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %21, align 4
  %111 = sub nsw i32 %109, %110
  %112 = or i32 %108, %111
  store i32 %112, i32* %18, align 4
  %113 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %114 = call i64 @IS_PIC_SOFT(%struct.pcibus_info* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %105
  %117 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %118 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PIC_ATE_TARGETID_SHFT, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %18, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %116, %105
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @SN_DMA_MSI, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %124
  %130 = load i32, i32* @PCI32_ATE_MSI, align 4
  %131 = load i32, i32* %18, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %18, align 4
  %133 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %134 = call i64 @IS_TIOCP_SOFT(%struct.pcibus_info* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @PCI32_ATE_PIO, align 4
  %138 = load i32, i32* %18, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %136, %129
  br label %141

141:                                              ; preds = %140, %124
  %142 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %18, align 4
  %146 = call i32 @ate_write(%struct.pcibus_info* %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* @PCI32_MAPPED_BASE, align 4
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* @IOPGSIZE, align 4
  %151 = load i32, i32* %16, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %149, %152
  store i32 %153, i32* %19, align 4
  %154 = load %struct.pcibus_info*, %struct.pcibus_info** %13, align 8
  %155 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @PCIBR_DEV_SWAP_DIR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %141
  %164 = load i32, i32* %19, align 4
  %165 = call i32 @ATE_SWAP_ON(i32 %164)
  br label %166

166:                                              ; preds = %163, %141
  %167 = load i32, i32* %19, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %166, %74, %48
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i64 @IS_PIC_SOFT(%struct.pcibus_info*) #1

declare dso_local i64 @IS_PCIX(%struct.pcibus_info*) #1

declare dso_local i32 @MINIMAL_ATE_FLAG(i32, i64) #1

declare dso_local i32 @IOPG(i64) #1

declare dso_local i32 @pcibr_ate_alloc(%struct.pcibus_info*, i32) #1

declare dso_local i64 @SN_DMA_ADDRTYPE(i32) #1

declare dso_local i32 @PHYS_TO_DMA(i32) #1

declare dso_local i32 @PHYS_TO_TIODMA(i32) #1

declare dso_local i32 @IOPGOFF(i32) #1

declare dso_local i64 @IS_TIOCP_SOFT(%struct.pcibus_info*) #1

declare dso_local i32 @ate_write(%struct.pcibus_info*, i32, i32, i32) #1

declare dso_local i32 @ATE_SWAP_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
