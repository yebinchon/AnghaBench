; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_efar.c_efar_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_efar.c_efar_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64, i64 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@efar_set_piomode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @efar_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efar_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @XFER_PIO_0, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %6, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 66, i32 64
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = call i64 @ata_pio_need_iordy(%struct.ata_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATA_DEV_ATA, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pci_read_config_word(%struct.pci_dev* %51, i32 %52, i32* %8)
  %54 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 52464
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %65
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 8
  %69 = shl i32 %68, 12
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %71
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = or i32 %69, %75
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %115

79:                                               ; preds = %50
  %80 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %81 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 4, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 52239
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %91 = call i32 @pci_read_config_byte(%struct.pci_dev* %90, i32 68, i32* %11)
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 15, %92
  %94 = load i32, i32* %11, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %5, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %97
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %98, i64 0, i64 0
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %103
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %104, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %101, %106
  %108 = load i32, i32* %10, align 4
  %109 = shl i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @pci_write_config_byte(%struct.pci_dev* %112, i32 68, i32 %113)
  br label %115

115:                                              ; preds = %79, %58
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, 16384
  store i32 %117, i32* %8, align 4
  %118 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @pci_write_config_word(%struct.pci_dev* %118, i32 %119, i32 %120)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
