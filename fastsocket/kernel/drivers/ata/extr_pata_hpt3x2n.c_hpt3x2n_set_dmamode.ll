; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @hpt3x2n_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpt3x2n_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %20, %24
  %26 = mul nsw i32 4, %25
  %27 = add nsw i32 64, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 4, %30
  %32 = add nsw i32 81, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 %34, i32* %11)
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, -8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @pci_write_config_byte(%struct.pci_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XFER_UDMA_0, align 8
  %46 = icmp slt i64 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 834667007, i32 809238528
  store i32 %48, i32* %10, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %49, i32 %50, i32* %8)
  %52 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %53 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @hpt3x2n_find_mode(%struct.ata_port* %52, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @pci_write_config_dword(%struct.pci_dev* %64, i32 %65, i32 %68)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @hpt3x2n_find_mode(%struct.ata_port*, i64) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
