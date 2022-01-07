; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_domain_on_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_flush_domain_on_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.iommu_cmd = type { i32 }

@CMD_INV_IOMMU_ALL_PAGES_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, i32)* @flush_domain_on_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_domain_on_iommu(%struct.amd_iommu* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_cmd, align 4
  %6 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CMD_INV_IOMMU_ALL_PAGES_ADDRESS, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @__iommu_build_inv_iommu_pages(%struct.iommu_cmd* %5, i32 %7, i32 %8, i32 1, i32 1)
  %10 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %11 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %15 = call i32 @__iommu_queue_command(%struct.amd_iommu* %14, %struct.iommu_cmd* %5)
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %17 = call i32 @__iommu_completion_wait(%struct.amd_iommu* %16)
  %18 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %19 = call i32 @__iommu_wait_for_completion(%struct.amd_iommu* %18)
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %21 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @__iommu_build_inv_iommu_pages(%struct.iommu_cmd*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__iommu_queue_command(%struct.amd_iommu*, %struct.iommu_cmd*) #1

declare dso_local i32 @__iommu_completion_wait(%struct.amd_iommu*) #1

declare dso_local i32 @__iommu_wait_for_completion(%struct.amd_iommu*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
