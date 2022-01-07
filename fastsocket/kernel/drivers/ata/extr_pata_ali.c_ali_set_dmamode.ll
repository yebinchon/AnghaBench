; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i64, i64 }
%struct.ata_timing = type { i32 }
%struct.pci_dev = type { i32 }

@ali_set_dmamode.udma_timing = internal global [7 x i32] [i32 12, i32 11, i32 10, i32 9, i32 8, i32 15, i32 13], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_UDMA_3 = common dso_local global i64 0, align 8
@ATA_TIMING_SETUP = common dso_local global i32 0, align 4
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @ali_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.ata_timing, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_timing, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %11)
  store %struct.ata_device* %12, %struct.ata_device** %5, align 8
  store i64 30000, i64* %7, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %8, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATA_DEV_ATA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = call i32 @ali_fifo_control(%struct.ata_port* %25, %struct.ata_device* %26, i32 8)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XFER_UDMA_0, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %37 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XFER_UDMA_0, align 8
  %41 = sub nsw i64 %39, %40
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* @ali_set_dmamode.udma_timing, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ali_program_modes(%struct.ata_port* %35, %struct.ata_device* %36, %struct.ata_timing* null, i32 %43)
  %45 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %46 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XFER_UDMA_3, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %34
  %51 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %52 = call i32 @pci_read_config_byte(%struct.pci_dev* %51, i32 75, i32* %9)
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @pci_write_config_byte(%struct.pci_dev* %55, i32 75, i32 %56)
  br label %58

58:                                               ; preds = %50, %34
  br label %99

59:                                               ; preds = %28
  %60 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %61 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ata_timing_compute(%struct.ata_device* %60, i64 %63, %struct.ata_timing* %6, i64 %64, i32 1)
  %66 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %67 = icmp ne %struct.ata_device* %66, null
  br i1 %67, label %68, label %95

68:                                               ; preds = %59
  %69 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %70 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %71 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @ata_timing_compute(%struct.ata_device* %69, i64 %72, %struct.ata_timing* %10, i64 %73, i32 1)
  %75 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %76 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @ata_timing_merge(%struct.ata_timing* %10, %struct.ata_timing* %6, %struct.ata_timing* %6, i32 %77)
  %79 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %68
  %84 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %85 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %86 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @ata_timing_compute(%struct.ata_device* %84, i64 %87, %struct.ata_timing* %10, i64 %88, i32 1)
  %90 = load i32, i32* @ATA_TIMING_SETUP, align 4
  %91 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @ata_timing_merge(%struct.ata_timing* %10, %struct.ata_timing* %6, %struct.ata_timing* %6, i32 %92)
  br label %94

94:                                               ; preds = %83, %68
  br label %95

95:                                               ; preds = %94, %59
  %96 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %97 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %98 = call i32 @ali_program_modes(%struct.ata_port* %96, %struct.ata_device* %97, %struct.ata_timing* %6, i32 0)
  br label %99

99:                                               ; preds = %95, %58
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ali_fifo_control(%struct.ata_port*, %struct.ata_device*, i32) #1

declare dso_local i32 @ali_program_modes(%struct.ata_port*, %struct.ata_device*, %struct.ata_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i64, %struct.ata_timing*, i64, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
