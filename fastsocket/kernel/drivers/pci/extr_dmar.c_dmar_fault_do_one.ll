; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_fault_do_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_dmar.c_dmar_fault_do_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_iommu = type { i32 }

@INTR_REMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"INTR-REMAP: Request device [[%02x:%02x.%d] fault index %llx\0AINTR-REMAP:[fault reason %02d] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"DMAR:[%s] Request device [%02x:%02x.%d] fault addr %llx \0ADMAR:[fault reason %02d] %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DMA Read\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DMA Write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_iommu*, i32, i32, i32, i64)* @dmar_fault_do_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_fault_do_one(%struct.intel_iommu* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.intel_iommu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_iommu* %0, %struct.intel_iommu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i8* @dmar_get_fault_reason(i32 %13, i32* %12)
  store i8* %14, i8** %11, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @INTR_REMAP, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 8
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 255
  %23 = call i32 @PCI_SLOT(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @PCI_FUNC(i32 %25)
  %27 = load i64, i64* %10, align 8
  %28 = lshr i64 %27, 48
  %29 = load i32, i32* %8, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i64 %28, i32 %29, i8* %30)
  br label %49

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %37 = load i32, i32* %9, align 4
  %38 = ashr i32 %37, 8
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @PCI_SLOT(i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @PCI_FUNC(i32 %43)
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %38, i32 %41, i32 %44, i64 %45, i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %32, %18
  ret i32 0
}

declare dso_local i8* @dmar_get_fault_reason(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
