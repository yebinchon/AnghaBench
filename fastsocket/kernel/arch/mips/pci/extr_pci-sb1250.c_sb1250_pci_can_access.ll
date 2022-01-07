; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pci-sb1250.c_sb1250_pci_can_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/pci/extr_pci-sb1250.c_sb1250_pci_can_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@sb1250_bus_status = common dso_local global i32 0, align 4
@PCI_BUS_ENABLED = common dso_local global i32 0, align 4
@PCI_DEVICE_MODE = common dso_local global i32 0, align 4
@LDT_BRIDGE_DEVICE = common dso_local global i64 0, align 8
@LDT_BUS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @sb1250_pci_can_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1250_pci_can_access(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @sb1250_bus_status, align 4
  %8 = load i32, i32* @PCI_BUS_ENABLED, align 4
  %9 = load i32, i32* @PCI_DEVICE_MODE, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @PCI_SLOT(i32 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @LDT_BRIDGE_DEVICE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @sb1250_bus_status, align 4
  %27 = load i32, i32* @LDT_BUS_ENABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @sb1250_bus_status, align 4
  %33 = load i32, i32* @PCI_DEVICE_MODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %36, %25, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
