; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_xfermode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_set_xfermode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"set features - xfer mode\0A\00", align 1
@ATA_CMD_SET_FEATURES = common dso_local global i32 0, align 4
@SETFEATURES_XFER = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"EXIT, err_mask=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_dev_set_xfermode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_set_xfermode(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %6 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %8 = call i32 @ata_tf_init(%struct.ata_device* %7, %struct.ata_taskfile* %4)
  %9 = load i32, i32* @ATA_CMD_SET_FEATURES, align 4
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 4
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @SETFEATURES_XFER, align 4
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %14 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @ATA_PROT_NODATA, align 4
  %22 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %24 = call i64 @ata_pio_need_iordy(%struct.ata_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %41

31:                                               ; preds = %1
  %32 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ata_id_has_iordy(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %4, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %48

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %43 = load i32, i32* @DMA_NONE, align 4
  %44 = call i32 @ata_exec_internal(%struct.ata_device* %42, %struct.ata_taskfile* %4, i32* null, i32 %43, i32* null, i32 0, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %39
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i64 @ata_id_has_iordy(i32) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
