; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_completion_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_completion_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.iommu_cmd = type { i32* }

@CMD_COMPL_WAIT_INT_MASK = common dso_local global i32 0, align 4
@CMD_COMPL_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*)* @__iommu_completion_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_completion_wait(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca %struct.iommu_cmd, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %4 = call i32 @memset(%struct.iommu_cmd* %3, i32 0, i32 8)
  %5 = load i32, i32* @CMD_COMPL_WAIT_INT_MASK, align 4
  %6 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %3, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @CMD_COMPL_WAIT, align 4
  %10 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %3, i32 %9)
  %11 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %12 = call i32 @__iommu_queue_command(%struct.amd_iommu* %11, %struct.iommu_cmd* %3)
  ret i32 %12
}

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

declare dso_local i32 @__iommu_queue_command(%struct.amd_iommu*, %struct.iommu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
