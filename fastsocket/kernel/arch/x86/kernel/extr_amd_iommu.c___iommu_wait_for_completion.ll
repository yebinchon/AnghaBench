; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i64 }

@compl_wait = common dso_local global i32 0, align 4
@EXIT_LOOP_COUNT = common dso_local global i64 0, align 8
@MMIO_STATUS_OFFSET = common dso_local global i64 0, align 8
@MMIO_STATUS_COM_WAIT_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @__iommu_wait_for_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_wait_for_completion(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @compl_wait, align 4
  %7 = call i32 @INC_STATS_COUNTER(i32 %6)
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EXIT_LOOP_COUNT, align 8
  %14 = icmp ult i64 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %29

17:                                               ; preds = %15
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %21 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMIO_STATUS_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MMIO_STATUS_COM_WAIT_INT_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %15
  %30 = load i32, i32* @MMIO_STATUS_COM_WAIT_INT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %36 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MMIO_STATUS_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @EXIT_LOOP_COUNT, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %29
  %48 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %49 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %52 = call i32 @reset_iommu_command_buffer(%struct.amd_iommu* %51)
  %53 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %54 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  br label %56

56:                                               ; preds = %47, %29
  ret void
}

declare dso_local i32 @INC_STATS_COUNTER(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reset_iommu_command_buffer(%struct.amd_iommu*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
