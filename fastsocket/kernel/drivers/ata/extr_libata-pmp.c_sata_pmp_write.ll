; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_device* }
%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_CMD_PMP_WRITE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@SATA_PMP_RW_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32)* @sata_pmp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_write(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_port*, align 8
  %8 = alloca %struct.ata_device*, align 8
  %9 = alloca %struct.ata_taskfile, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 1
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %7, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ata_device*, %struct.ata_device** %15, align 8
  store %struct.ata_device* %16, %struct.ata_device** %8, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %18 = call i32 @ata_tf_init(%struct.ata_device* %17, %struct.ata_taskfile* %9)
  %19 = load i32, i32* @ATA_CMD_PMP_WRITE, align 4
  %20 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @ATA_PROT_NODATA, align 4
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 7
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %24 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %34 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 6
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 255
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 4
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 24
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ata_device*, %struct.ata_device** %8, align 8
  %53 = load i32, i32* @DMA_NONE, align 4
  %54 = load i32, i32* @SATA_PMP_RW_TIMEOUT, align 4
  %55 = call i32 @ata_exec_internal(%struct.ata_device* %52, %struct.ata_taskfile* %9, i32* null, i32 %53, i32* null, i32 0, i32 %54)
  ret i32 %55
}

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
