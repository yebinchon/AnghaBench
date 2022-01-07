; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_raw_pci_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/pci/extr_pci.c_raw_pci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@sal_revision = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raw_pci_read(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %15, align 8
  %18 = load i64*, i64** %13, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = icmp ugt i32 %21, 65535
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = icmp ugt i32 %27, 255
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 4095
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %26, %23, %20, %6
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %36, %37
  %39 = icmp ule i32 %38, 255
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @PCI_SAL_ADDRESS(i32 %41, i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %14, align 8
  store i32 0, i32* %16, align 4
  br label %60

46:                                               ; preds = %35
  %47 = load i64, i64* @sal_revision, align 8
  %48 = call i64 @SAL_VERSION_CODE(i32 3, i32 2)
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @PCI_SAL_EXT_ADDRESS(i32 %51, i32 %52, i32 %53, i32 %54)
  store i64 %55, i64* %14, align 8
  store i32 1, i32* %16, align 4
  br label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %73

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i64, i64* %14, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @ia64_sal_pci_config_read(i64 %61, i32 %62, i32 %63, i64* %15)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %73

70:                                               ; preds = %60
  %71 = load i64, i64* %15, align 8
  %72 = load i64*, i64** %13, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %67, %56, %32
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i64 @PCI_SAL_ADDRESS(i32, i32, i32, i32) #1

declare dso_local i64 @SAL_VERSION_CODE(i32, i32) #1

declare dso_local i64 @PCI_SAL_EXT_ADDRESS(i32, i32, i32, i32) #1

declare dso_local i32 @ia64_sal_pci_config_read(i64, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
