; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_raw_pci_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_raw_pci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@sal_revision = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw_pci_write(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %28, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = icmp ugt i32 %20, 255
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = icmp ugt i32 %23, 255
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 4095
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22, %19, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %32, %33
  %35 = icmp ule i32 %34, 255
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @PCI_SAL_ADDRESS(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load i64, i64* @sal_revision, align 8
  %44 = call i64 @SAL_VERSION_CODE(i32 3, i32 2)
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @PCI_SAL_EXT_ADDRESS(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %68

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ia64_sal_pci_config_write(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64, %52, %28
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @PCI_SAL_ADDRESS(i32, i32, i32, i32) #1

declare dso_local i64 @SAL_VERSION_CODE(i32, i32) #1

declare dso_local i32 @PCI_SAL_EXT_ADDRESS(i32, i32, i32, i32) #1

declare dso_local i32 @ia64_sal_pci_config_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
