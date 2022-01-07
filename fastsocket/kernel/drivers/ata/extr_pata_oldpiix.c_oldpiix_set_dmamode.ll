; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_oldpiix.c_oldpiix_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_oldpiix.c_oldpiix_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.ata_device*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64, i32, i64 }
%struct.pci_dev = type { i32 }

@oldpiix_set_dmamode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @oldpiix_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oldpiix_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 66, i32 64
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XFER_MW_DMA_0, align 4
  %28 = sub i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %30 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  %34 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %34, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XFER_PIO_0, align 4
  %40 = sub i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pci_read_config_word(%struct.pci_dev* %41, i32 %42, i32* %7)
  store i32 3, i32* %9, align 4
  %44 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATA_DEV_ATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %55, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, 8
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %52
  %65 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 52448
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %82

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 52238
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %78, 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %75, %69
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @oldpiix_set_dmamode.timings, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 12
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @oldpiix_set_dmamode.timings, i64 0, i64 %90
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %88, %94
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pci_write_config_word(%struct.pci_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %103 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %104 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %103, i32 0, i32 0
  store %struct.ata_device* %102, %struct.ata_device** %104, align 8
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
