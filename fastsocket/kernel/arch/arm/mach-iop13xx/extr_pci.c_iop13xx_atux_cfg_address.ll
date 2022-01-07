; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_cfg_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-iop13xx/extr_pci.c_iop13xx_atux_cfg_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32, %struct.pci_sys_data* }
%struct.pci_sys_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32)* @iop13xx_atux_cfg_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop13xx_atux_cfg_address(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_sys_data*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %10 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 1
  %11 = load %struct.pci_sys_data*, %struct.pci_sys_data** %10, align 8
  store %struct.pci_sys_data* %11, %struct.pci_sys_data** %7, align 8
  %12 = load %struct.pci_sys_data*, %struct.pci_sys_data** %7, align 8
  %13 = getelementptr inbounds %struct.pci_sys_data, %struct.pci_sys_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @PCI_SLOT(i32 %20)
  %22 = add nsw i32 %21, 16
  %23 = shl i32 1, %22
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @PCI_SLOT(i32 %24)
  %26 = shl i32 %25, 11
  %27 = or i32 %23, %26
  store i32 %27, i32* %8, align 4
  br label %38

28:                                               ; preds = %3
  %29 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %30 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PCI_SLOT(i32 %33)
  %35 = shl i32 %34, 11
  %36 = or i32 %32, %35
  %37 = or i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %28, %19
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @PCI_FUNC(i32 %39)
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 255
  %44 = and i32 %43, -4
  %45 = or i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 3840
  %50 = ashr i32 %49, 8
  %51 = shl i32 %50, 24
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
