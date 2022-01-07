; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu_init.c_iommu_read_l1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu_init.c_iommu_read_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, i32, i32)* @iommu_read_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_read_l1(%struct.amd_iommu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %9 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 16
  %14 = or i32 %11, %13
  %15 = call i32 @pci_write_config_dword(i32 %10, i32 248, i32 %14)
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %17 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pci_read_config_dword(i32 %18, i32 252, i32* %7)
  %20 = load i32, i32* %7, align 4
  ret i32 %20
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
