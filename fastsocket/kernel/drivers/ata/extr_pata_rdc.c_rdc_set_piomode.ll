; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_rdc.c_rdc_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_rdc.c_rdc_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@rdc_set_piomode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @rdc_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XFER_PIO_0, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %6, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 66, i32 64
  store i32 %35, i32* %8, align 4
  store i32 68, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp uge i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %2
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = call i64 @ata_pio_need_iordy(%struct.ata_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, 2
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %50 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ATA_DEV_ATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, 4
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @pci_read_config_word(%struct.pci_dev* %58, i32 %59, i32* %10)
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 65295
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, 16384
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = shl i32 %68, 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %72, i32 %73, i32* %11)
  %75 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %76 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 15, i32 240
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 8
  %88 = shl i32 %87, 2
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %90
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %88, %93
  %95 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %96 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 4, i32 0
  %101 = shl i32 %94, %100
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %125

104:                                              ; preds = %57
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 52464
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %111
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 0
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 12
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %117
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = or i32 %115, %121
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %104, %63
  %126 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @pci_write_config_word(%struct.pci_dev* %126, i32 %127, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @pci_write_config_byte(%struct.pci_dev* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %125
  %138 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %139 = call i32 @pci_read_config_byte(%struct.pci_dev* %138, i32 72, i32* %12)
  %140 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %141 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 2, %142
  %144 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %145 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = shl i32 1, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @pci_write_config_byte(%struct.pci_dev* %152, i32 72, i32 %153)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
