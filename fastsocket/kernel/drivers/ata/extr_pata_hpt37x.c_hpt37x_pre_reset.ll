; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt37x_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt37x_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@hpt37x_pre_reset.hpt37x_enable_bits = internal constant [2 x %struct.pci_bits] [%struct.pci_bits { i32 80, i32 1, i32 4, i32 4 }, %struct.pci_bits { i32 84, i32 1, i32 4, i32 4 }], align 16
@ENOENT = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @hpt37x_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt37x_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 0
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %8, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %9, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds [2 x %struct.pci_bits], [2 x %struct.pci_bits]* @hpt37x_pre_reset.hpt37x_enable_bits, i64 0, i64 %22
  %24 = call i32 @pci_test_config_bits(%struct.pci_dev* %19, %struct.pci_bits* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %31 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 91, i32* %6)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -2
  %35 = call i32 @pci_write_config_byte(%struct.pci_dev* %32, i32 91, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %36, i32 90, i32* %7)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @pci_write_config_byte(%struct.pci_dev* %38, i32 91, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = ashr i32 2, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %29
  %50 = load i32, i32* @ATA_CBL_PATA40, align 4
  %51 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %57

53:                                               ; preds = %29
  %54 = load i32, i32* @ATA_CBL_PATA80, align 4
  %55 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %59 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 4, %61
  %63 = add i64 80, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i32 %64, i32 55)
  %66 = call i32 @udelay(i32 100)
  %67 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @ata_sff_prereset(%struct.ata_link* %67, i64 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %26
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_test_config_bits(%struct.pci_dev*, %struct.pci_bits*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ata_sff_prereset(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
