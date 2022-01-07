; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atiixp.c_atiixp_set_pio_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atiixp.c_atiixp_set_pio_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@atiixp_set_pio_timing.pio_timings = internal global [5 x i32] [i32 93, i32 71, i32 52, i32 34, i32 32], align 16
@ATIIXP_IDE_PIO_MODE = common dso_local global i32 0, align 4
@ATIIXP_IDE_PIO_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @atiixp_set_pio_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_set_pio_timing(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %7, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 2, %20
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 16, %28
  %30 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %31 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, 1
  %34 = mul nsw i32 8, %33
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = load i32, i32* @ATIIXP_IDE_PIO_MODE, align 4
  %38 = call i32 @pci_read_config_word(%struct.pci_dev* %36, i32 %37, i32* %11)
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 4, %39
  %41 = shl i32 7, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 4, %46
  %48 = shl i32 %45, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = load i32, i32* @ATIIXP_IDE_PIO_MODE, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @pci_write_config_word(%struct.pci_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %56 = load i32, i32* @ATIIXP_IDE_PIO_TIMING, align 4
  %57 = call i32 @pci_read_config_dword(%struct.pci_dev* %55, i32 %56, i32* %10)
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 255, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* @atiixp_set_pio_timing.pio_timings, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %72 = load i32, i32* @ATIIXP_IDE_PIO_TIMING, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @pci_write_config_dword(%struct.pci_dev* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
