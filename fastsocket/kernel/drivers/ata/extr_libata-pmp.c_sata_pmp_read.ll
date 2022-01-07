; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-pmp.c_sata_pmp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_device* }
%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_CMD_PMP_READ = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@SATA_PMP_RW_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32*)* @sata_pmp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_read(%struct.ata_link* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ata_device*, align 8
  %10 = alloca %struct.ata_taskfile, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 1
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %8, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ata_device*, %struct.ata_device** %17, align 8
  store %struct.ata_device* %18, %struct.ata_device** %9, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %20 = call i32 @ata_tf_init(%struct.ata_device* %19, %struct.ata_taskfile* %10)
  %21 = load i32, i32* @ATA_CMD_PMP_READ, align 4
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ATA_PROT_NODATA, align 4
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %26 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %6, align 4
  %34 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 6
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  %40 = load i32, i32* @DMA_NONE, align 4
  %41 = load i32, i32* @SATA_PMP_RW_TIMEOUT, align 4
  %42 = call i32 @ata_exec_internal(%struct.ata_device* %39, %struct.ata_taskfile* %10, i32* null, i32 %40, i32* null, i32 0, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %49, %52
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %53, %56
  %58 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %10, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = or i32 %57, %60
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %45
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
