; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-sni.c_pcit_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_ops-sni.c_pcit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIMT_CONFIG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pcit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcit_read(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = call i32 @pcit_set_config_address(i64 0, i32 0, i32 104)
  %19 = call i32 @inl(i32 3324)
  %20 = or i32 %19, -1073741824
  %21 = call i32 @outl(i32 %20, i32 3324)
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pcit_set_config_address(i64 0, i32 %22, i32 0)
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %67

27:                                               ; preds = %17
  %28 = call i32 @outl(i32 -1, i32 3324)
  %29 = call i32 @pcit_set_config_address(i64 0, i32 0, i32 104)
  %30 = call i32 @inl(i32 3324)
  %31 = and i32 %30, 1048576
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %34, i32* %6, align 4
  br label %67

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %5
  %37 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pcit_set_config_address(i64 %39, i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %67

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  switch i32 %47, label %66 [
    i32 1, label %48
    i32 2, label %55
    i32 4, label %62
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 3
  %52 = add nsw i32 %49, %51
  %53 = call i32 @inb(i32 %52)
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 2
  %59 = add nsw i32 %56, %58
  %60 = call i32 @inw(i32 %59)
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load i32, i32* @PCIMT_CONFIG_DATA, align 4
  %64 = call i32 @inl(i32 %63)
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %46, %62, %55, %48
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %44, %33, %25
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @pcit_set_config_address(i64, i32, i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
