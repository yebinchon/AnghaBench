; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_queue_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_amd_iommu.c___iommu_queue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { i32, i64, i32* }
%struct.iommu_cmd = type { i32 }

@CMD_BUFFER_UNINITIALIZED = common dso_local global i32 0, align 4
@MMIO_CMD_TAIL_OFFSET = common dso_local global i64 0, align 8
@MMIO_CMD_HEAD_OFFSET = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_iommu*, %struct.iommu_cmd*)* @__iommu_queue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iommu_queue_command(%struct.amd_iommu* %0, %struct.iommu_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_iommu*, align 8
  %5 = alloca %struct.iommu_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.amd_iommu* %0, %struct.amd_iommu** %4, align 8
  store %struct.iommu_cmd* %1, %struct.iommu_cmd** %5, align 8
  %9 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %10 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CMD_BUFFER_UNINITIALIZED, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %16 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MMIO_CMD_TAIL_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %22 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.iommu_cmd*, %struct.iommu_cmd** %5, align 8
  %29 = call i32 @memcpy_toio(i32* %27, %struct.iommu_cmd* %28, i32 4)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %34 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %40 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMIO_CMD_HEAD_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %59

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.amd_iommu*, %struct.amd_iommu** %4, align 8
  %54 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MMIO_CMD_TAIL_OFFSET, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @memcpy_toio(i32*, %struct.iommu_cmd*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
