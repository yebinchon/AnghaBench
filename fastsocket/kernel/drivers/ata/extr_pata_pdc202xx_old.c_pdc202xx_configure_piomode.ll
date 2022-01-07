; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pdc202xx_old.c_pdc202xx_configure_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_pdc202xx_old.c_pdc202xx_configure_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@pdc202xx_configure_piomode.pio_timing = internal global [5 x i32] [i32 2323, i32 1292, i32 776, i32 518, i32 260], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @pdc202xx_configure_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc202xx_configure_piomode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %7, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 8, %19
  %21 = add nsw i32 96, %20
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 4, %24
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pci_read_config_byte(%struct.pci_dev* %27, i32 %28, i32* %9)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 %32, i32* %10)
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, -64
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, -32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* @pdc202xx_configure_piomode.pio_timing, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* @pdc202xx_configure_piomode.pio_timing, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 255
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %53 = call i64 @ata_pio_need_iordy(%struct.ata_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, 32
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %3
  %59 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATA_DEV_ATA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, 16
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @pci_write_config_byte(%struct.pci_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @pci_write_config_byte(%struct.pci_dev* %72, i32 %74, i32 %75)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
