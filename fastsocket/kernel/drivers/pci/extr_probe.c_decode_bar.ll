; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_decode_bar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_decode_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_BASE_ADDRESS_SPACE = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_SPACE_IO = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_IO_MASK = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_MASK = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_PREFETCH = common dso_local global i64 0, align 8
@IORESOURCE_PREFETCH = common dso_local global i64 0, align 8
@PCI_BASE_ADDRESS_MEM_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"1M mem BAR treated as 32-bit BAR\0A\00", align 1
@IORESOURCE_MEM_64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"mem unknown type %x treated as 32-bit BAR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pci_dev*, i32)* @decode_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_bar(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PCI_BASE_ADDRESS_SPACE, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @PCI_BASE_ADDRESS_SPACE_IO, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PCI_BASE_ADDRESS_IO_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @IORESOURCE_IO, align 8
  %20 = load i64, i64* %7, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %3, align 8
  br label %61

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PCI_BASE_ADDRESS_MEM_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @IORESOURCE_MEM, align 8
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @PCI_BASE_ADDRESS_MEM_PREFETCH, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i64, i64* @IORESOURCE_PREFETCH, align 8
  %38 = load i64, i64* %7, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %36, %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %54 [
    i32 129, label %45
    i32 130, label %46
    i32 128, label %50
  ]

45:                                               ; preds = %40
  br label %59

46:                                               ; preds = %40
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %59

50:                                               ; preds = %40
  %51 = load i64, i64* @IORESOURCE_MEM_64, align 8
  %52 = load i64, i64* %7, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %59

54:                                               ; preds = %40
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %54, %50, %46, %45
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %3, align 8
  br label %61

61:                                               ; preds = %59, %13
  %62 = load i64, i64* %3, align 8
  ret i64 %62
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
