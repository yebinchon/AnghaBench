; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_133_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_sis.c_sis_133_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32 }
%struct.pci_dev = type { i32 }

@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@sis_133_set_dmamode.timing_u100 = internal constant [7 x i32] [i32 1712, i32 1136, i32 848, i32 320, i32 288, i32 272, i32 0], align 16
@sis_133_set_dmamode.timing_u133 = internal constant [7 x i32] [i32 2544, i32 1696, i32 1136, i32 592, i32 560, i32 544, i32 528], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @sis_133_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_133_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XFER_MW_DMA_0, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %6, align 4
  store i32 64, i32* %7, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = call i32 @pci_read_config_dword(%struct.pci_dev* %21, i32 84, i32* %9)
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 1073741824
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 112, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 8, %30
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 4, %34
  %36 = add nsw i32 %31, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %39, i32 %40, i32* %8)
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @XFER_UDMA_0, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %27
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, -5
  store i32 %50, i32* %8, align 4
  br label %81

51:                                               ; preds = %27
  %52 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @XFER_UDMA_0, align 8
  %57 = sub nsw i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -4081
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* @sis_133_set_dmamode.timing_u133, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %80

73:                                               ; preds = %51
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [7 x i32], [7 x i32]* @sis_133_set_dmamode.timing_u100, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @pci_write_config_dword(%struct.pci_dev* %82, i32 %83, i32 %84)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
