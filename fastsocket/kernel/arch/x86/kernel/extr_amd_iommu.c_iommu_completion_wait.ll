; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_completion_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_completion_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*)* @iommu_completion_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_completion_wait(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %6 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %5, i32 0, i32 1
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %10 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %16 = call i32 @__iommu_completion_wait(%struct.amd_iommu* %15)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %18 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %24 = call i32 @__iommu_wait_for_completion(%struct.amd_iommu* %23)
  br label %25

25:                                               ; preds = %22, %21, %13
  %26 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %27 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__iommu_completion_wait(%struct.amd_iommu*) #1

declare dso_local i32 @__iommu_wait_for_completion(%struct.amd_iommu*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
