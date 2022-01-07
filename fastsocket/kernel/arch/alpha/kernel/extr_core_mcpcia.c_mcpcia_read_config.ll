; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_mcpcia.c_mcpcia_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_core_mcpcia.c_mcpcia_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_controller* }
%struct.pci_controller = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i64*)* @mcpcia_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcpcia_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.pci_controller*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %17 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %16, i32 0, i32 0
  %18 = load %struct.pci_controller*, %struct.pci_controller** %17, align 8
  store %struct.pci_controller* %18, %struct.pci_controller** %12, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  %23 = call i64 @mk_conf_addr(%struct.pci_bus* %19, i32 %20, i32 %21, %struct.pci_controller* %22, i64* %13, i8* %15)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %26, i32* %6, align 4
  br label %56

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  %30 = mul nsw i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %13, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i8, i8* %15, align 1
  %36 = load %struct.pci_controller*, %struct.pci_controller** %12, align 8
  %37 = call i64 @conf_read(i64 %34, i8 zeroext %35, %struct.pci_controller* %36)
  store i64 %37, i64* %14, align 8
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %54 [
    i32 1, label %39
    i32 2, label %45
    i32 4, label %51
  ]

39:                                               ; preds = %27
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 3
  %43 = call i64 @__kernel_extbl(i64 %40, i32 %42)
  %44 = load i64*, i64** %11, align 8
  store i64 %43, i64* %44, align 8
  br label %54

45:                                               ; preds = %27
  %46 = load i64, i64* %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 3
  %49 = call i64 @__kernel_extwl(i64 %46, i32 %48)
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  br label %54

51:                                               ; preds = %27
  %52 = load i64, i64* %14, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %27, %51, %45, %39
  %55 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @mk_conf_addr(%struct.pci_bus*, i32, i32, %struct.pci_controller*, i64*, i8*) #1

declare dso_local i64 @conf_read(i64, i8 zeroext, %struct.pci_controller*) #1

declare dso_local i64 @__kernel_extbl(i64, i32) #1

declare dso_local i64 @__kernel_extwl(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
