; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp2000/extr_pci.c_ixp2000_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@pci_master_aborts = common dso_local global i64 0, align 8
@bytemask = common dso_local global i32* null, align 8
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixp2000_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = srem i32 %14, 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32* @ixp2000_pci_config_addr(i32 %18, i32 %19, i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %25, i32* %6, align 4
  br label %46

26:                                               ; preds = %5
  store i64 0, i64* @pci_master_aborts, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = mul nsw i32 8, %29
  %31 = ashr i32 %28, %30
  %32 = load i32*, i32** @bytemask, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i64, i64* @pci_master_aborts, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  store i64 0, i64* @pci_master_aborts, align 8
  %42 = load i32*, i32** %11, align 8
  store i32 -1, i32* %42, align 4
  %43 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %43, i32* %6, align 4
  br label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %41, %24
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32* @ixp2000_pci_config_addr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
