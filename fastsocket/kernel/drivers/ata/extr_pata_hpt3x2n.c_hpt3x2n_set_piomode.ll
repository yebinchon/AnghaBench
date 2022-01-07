; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @hpt3x2n_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3x2n_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 2, %22
  %24 = add nsw i32 %19, %23
  %25 = mul nsw i32 4, %24
  %26 = add nsw i32 64, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 4, %29
  %31 = add nsw i32 81, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 %33, i32* %10)
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, -8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_read_config_dword(%struct.pci_dev* %41, i32 %42, i32* %8)
  %44 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %45 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hpt3x2n_find_mode(%struct.ata_port* %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %49, -809238529
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 809238528
  store i32 %52, i32* %8, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @pci_write_config_dword(%struct.pci_dev* %53, i32 %54, i32 %57)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @hpt3x2n_find_mode(%struct.ata_port*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
