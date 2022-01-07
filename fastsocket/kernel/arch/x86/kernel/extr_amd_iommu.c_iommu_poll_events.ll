; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_poll_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c_iommu_poll_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i32, i64, i64 }

@MMIO_EVT_HEAD_OFFSET = common dso_local global i64 0, align 8
@MMIO_EVT_TAIL_OFFSET = common dso_local global i64 0, align 8
@EVENT_ENTRY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*)* @iommu_poll_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_poll_events(%struct.amd_iommu* %0) #0 {
  %2 = alloca %struct.amd_iommu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %2, align 8
  %6 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %7 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %6, i32 0, i32 1
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %11 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMIO_EVT_HEAD_OFFSET, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %17 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMIO_EVT_TAIL_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %26, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %28 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %29 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @iommu_print_event(%struct.amd_iommu* %27, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @EVENT_ENTRY_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %39 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = srem i32 %37, %40
  store i32 %41, i32* %3, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %45 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MMIO_EVT_HEAD_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.amd_iommu*, %struct.amd_iommu** %2, align 8
  %51 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %50, i32 0, i32 1
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iommu_print_event(%struct.amd_iommu*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
