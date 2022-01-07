; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_tlb_read_cr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_iommu2.c_omap2_tlb_read_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i32 }
%struct.cr_regs = type { i8*, i8* }

@MMU_READ_CAM = common dso_local global i32 0, align 4
@MMU_READ_RAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu*, %struct.cr_regs*)* @omap2_tlb_read_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_tlb_read_cr(%struct.iommu* %0, %struct.cr_regs* %1) #0 {
  %3 = alloca %struct.iommu*, align 8
  %4 = alloca %struct.cr_regs*, align 8
  store %struct.iommu* %0, %struct.iommu** %3, align 8
  store %struct.cr_regs* %1, %struct.cr_regs** %4, align 8
  %5 = load %struct.iommu*, %struct.iommu** %3, align 8
  %6 = load i32, i32* @MMU_READ_CAM, align 4
  %7 = call i8* @iommu_read_reg(%struct.iommu* %5, i32 %6)
  %8 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %9 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %8, i32 0, i32 1
  store i8* %7, i8** %9, align 8
  %10 = load %struct.iommu*, %struct.iommu** %3, align 8
  %11 = load i32, i32* @MMU_READ_RAM, align 4
  %12 = call i8* @iommu_read_reg(%struct.iommu* %10, i32 %11)
  %13 = load %struct.cr_regs*, %struct.cr_regs** %4, align 8
  %14 = getelementptr inbounds %struct.cr_regs, %struct.cr_regs* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  ret void
}

declare dso_local i8* @iommu_read_reg(%struct.iommu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
