; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_program_udma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_program_udma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__*, %struct.it821x_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.it821x_dev = type { i64, i64 }
%struct.ata_device = type { i32 }
%struct.pci_dev = type { i32 }

@ATA_66 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @it821x_program_udma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_program_udma(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.it821x_dev*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 2
  %14 = load %struct.it821x_dev*, %struct.it821x_dev** %13, align 8
  store %struct.it821x_dev* %14, %struct.it821x_dev** %7, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.it821x_dev*, %struct.it821x_dev** %7, align 8
  %28 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_66, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 8
  store i32 %34, i32* %11, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.it821x_dev*, %struct.it821x_dev** %7, align 8
  %40 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 4, %45
  %47 = add nsw i32 86, %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @pci_write_config_byte(%struct.pci_dev* %44, i32 %49, i32 %50)
  br label %66

52:                                               ; preds = %38
  %53 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 4, %54
  %56 = add nsw i32 86, %55
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @pci_write_config_byte(%struct.pci_dev* %53, i32 %56, i32 %57)
  %59 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 4, %60
  %62 = add nsw i32 86, %61
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %59, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %52, %43
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
