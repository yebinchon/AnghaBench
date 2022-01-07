; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt374_fn1_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_hpt37x.c_hpt374_fn1_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@hpt374_fn1_pre_reset.hpt37x_enable_bits = internal constant [2 x %struct.pci_bits] [%struct.pci_bits { i32 80, i32 1, i32 4, i32 4 }, %struct.pci_bits { i32 84, i32 1, i32 4, i32 4 }], align 16
@ENOENT = common dso_local global i32 0, align 4
@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @hpt374_fn1_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt374_fn1_pre_reset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 0
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %8, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %9, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 4, %22
  %24 = add nsw i32 80, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x %struct.pci_bits], [2 x %struct.pci_bits]* @hpt374_fn1_pre_reset.hpt37x_enable_bits, i64 0, i64 %29
  %31 = call i32 @pci_test_config_bits(%struct.pci_dev* %25, %struct.pci_bits* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %81

36:                                               ; preds = %2
  %37 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 2
  %40 = call i32 @pci_read_config_word(%struct.pci_dev* %37, i32 %39, i32* %6)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 32768
  %46 = call i32 @pci_write_config_word(%struct.pci_dev* %41, i32 %43, i32 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %48 = call i32 @pci_read_config_byte(%struct.pci_dev* %47, i32 90, i32* %7)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 2
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @pci_write_config_word(%struct.pci_dev* %49, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %56 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = ashr i32 2, %57
  %59 = and i32 %54, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %36
  %62 = load i32, i32* @ATA_CBL_PATA40, align 4
  %63 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %36
  %66 = load i32, i32* @ATA_CBL_PATA80, align 4
  %67 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %68 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %71 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 4, %73
  %75 = add nsw i32 80, %74
  %76 = call i32 @pci_write_config_byte(%struct.pci_dev* %70, i32 %75, i32 55)
  %77 = call i32 @udelay(i32 100)
  %78 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ata_sff_prereset(%struct.ata_link* %78, i64 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %69, %33
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_test_config_bits(%struct.pci_dev*, %struct.pci_bits*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

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
