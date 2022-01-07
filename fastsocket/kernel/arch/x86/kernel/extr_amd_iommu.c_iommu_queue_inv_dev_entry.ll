; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_queue_inv_dev_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_queue_inv_dev_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32 }
%struct.iommu_cmd = type { i32* }

@CMD_INV_DEV_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, i32)* @iommu_queue_inv_dev_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_queue_inv_dev_entry(%struct.amd_iommu* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_cmd, align 8
  %6 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %8 = icmp eq %struct.amd_iommu* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = call i32 @memset(%struct.iommu_cmd* %5, i32 0, i32 8)
  %12 = load i32, i32* @CMD_INV_DEV_ENTRY, align 4
  %13 = call i32 @CMD_SET_TYPE(%struct.iommu_cmd* %5, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.iommu_cmd, %struct.iommu_cmd* %5, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %19 = call i32 @iommu_queue_command(%struct.amd_iommu* %18, %struct.iommu_cmd* %5)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.iommu_cmd*, i32, i32) #1

declare dso_local i32 @CMD_SET_TYPE(%struct.iommu_cmd*, i32) #1

declare dso_local i32 @iommu_queue_command(%struct.amd_iommu*, %struct.iommu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
