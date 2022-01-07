; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32, i32 }

@DMAR_FSTS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DRHD: handling fault status reg %x\0A\00", align 1
@DMA_FSTS_PPF = common dso_local global i32 0, align 4
@PRIMARY_FAULT_REG_LEN = common dso_local global i32 0, align 4
@DMA_FRCD_F = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_fault(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.intel_iommu*
  store %struct.intel_iommu* %16, %struct.intel_iommu** %5, align 8
  %17 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %18 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %17, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %22 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMAR_FSTS_REG, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @readl(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @DMA_FSTS_PPF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %129

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dma_fsts_fault_record_index(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cap_fault_reg_offset(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %123
  %46 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %47 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PRIMARY_FAULT_REG_LEN, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = add nsw i32 %54, 12
  %56 = call i32 @readl(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @DMA_FRCD_F, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %45
  br label %128

62:                                               ; preds = %45
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @dma_frcd_fault_reason(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @dma_frcd_type(i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %68 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PRIMARY_FAULT_REG_LEN, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 8
  %77 = call i32 @readl(i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @dma_frcd_source_id(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %81 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @PRIMARY_FAULT_REG_LEN, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = call i32 @dmar_readq(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @dma_frcd_page_addr(i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* @DMA_FRCD_F, align 4
  %93 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %94 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @PRIMARY_FAULT_REG_LEN, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = add nsw i32 %101, 12
  %103 = call i32 @writel(i32 %92, i32 %102)
  %104 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %105 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %104, i32 0, i32 1
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @dmar_fault_do_one(%struct.intel_iommu* %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %118 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cap_num_fault_regs(i32 %119)
  %121 = icmp sge i32 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %62
  store i32 0, i32* %7, align 4
  br label %123

123:                                              ; preds = %122, %62
  %124 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %125 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %124, i32 0, i32 1
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @spin_lock_irqsave(i32* %125, i64 %126)
  br label %45

128:                                              ; preds = %61
  br label %129

129:                                              ; preds = %128, %37
  %130 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %131 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @DMAR_FSTS_REG, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @readl(i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %138 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DMAR_FSTS_REG, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @writel(i32 %136, i32 %141)
  %143 = load %struct.intel_iommu*, %struct.intel_iommu** %5, align 8
  %144 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %143, i32 0, i32 1
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dma_fsts_fault_record_index(i32) #1

declare dso_local i32 @cap_fault_reg_offset(i32) #1

declare dso_local i32 @dma_frcd_fault_reason(i32) #1

declare dso_local i32 @dma_frcd_type(i32) #1

declare dso_local i32 @dma_frcd_source_id(i32) #1

declare dso_local i32 @dmar_readq(i32) #1

declare dso_local i32 @dma_frcd_page_addr(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dmar_fault_do_one(%struct.intel_iommu*, i32, i32, i32, i32) #1

declare dso_local i32 @cap_num_fault_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
