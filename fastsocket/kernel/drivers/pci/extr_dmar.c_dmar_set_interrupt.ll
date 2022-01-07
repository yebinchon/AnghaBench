; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_set_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_set_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"IOMMU: no free vectors\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dmar_fault = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"IOMMU: can't request irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_set_interrupt(%struct.intel_iommu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_iommu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %3, align 8
  %6 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %7 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = call i32 (...) @create_irq()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %22 = call i32 @set_irq_data(i32 %20, %struct.intel_iommu* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %25 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @arch_setup_dmar_msi(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @set_irq_data(i32 %31, %struct.intel_iommu* null)
  %33 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %34 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @destroy_irq(i32 %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %52

38:                                               ; preds = %19
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @dmar_fault, align 4
  %41 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %42 = getelementptr inbounds %struct.intel_iommu, %struct.intel_iommu* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intel_iommu*, %struct.intel_iommu** %3, align 8
  %45 = call i32 @request_irq(i32 %39, i32 %40, i32 0, i32 %43, %struct.intel_iommu* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %38
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %30, %15, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @create_irq(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_irq_data(i32, %struct.intel_iommu*) #1

declare dso_local i32 @arch_setup_dmar_msi(i32) #1

declare dso_local i32 @destroy_irq(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.intel_iommu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
