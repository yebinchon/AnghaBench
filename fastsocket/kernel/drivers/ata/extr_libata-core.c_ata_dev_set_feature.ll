; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_feature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32 }
%struct.ata_taskfile = type { i32, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"set features - SATA features\0A\00", align 1
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EXIT, err_mask=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i8*, i8*)* @ata_dev_set_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_set_feature(%struct.ata_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ata_taskfile, align 8
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %11 = call i32 @ata_tf_init(%struct.ata_device* %10, %struct.ata_taskfile* %7)
  %12 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %13 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 3
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %17 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @ATA_PROT_NODATA, align 4
  %23 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = load i32, i32* @DMA_NONE, align 4
  %28 = call i32 @ata_exec_internal(%struct.ata_device* %26, %struct.ata_taskfile* %7, i32* null, i32 %27, i32* null, i32 0, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
