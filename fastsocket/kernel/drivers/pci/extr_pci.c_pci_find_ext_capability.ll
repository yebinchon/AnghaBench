; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_find_ext_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_find_ext_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_ext_capability(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %11 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @pci_read_config_dword(%struct.pci_dev* %21, i32 %22, i64* %6)
  %24 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %59

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @PCI_EXT_CAP_ID(i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %36
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @PCI_EXT_CAP_NEXT(i64 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %58

50:                                               ; preds = %43
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @pci_read_config_dword(%struct.pci_dev* %51, i32 %52, i64* %6)
  %54 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %58

57:                                               ; preds = %50
  br label %32

58:                                               ; preds = %56, %49, %32
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %41, %30, %26, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @PCI_EXT_CAP_ID(i64) #1

declare dso_local i32 @PCI_EXT_CAP_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
