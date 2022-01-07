; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_read_native_max_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_read_native_max_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32 }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32 }

@ATA_TFLAG_DEVICE = common dso_local global i32 0, align 4
@ATA_TFLAG_ISADDR = common dso_local global i32 0, align 4
@ATA_CMD_READ_NATIVE_MAX_EXT = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@ATA_CMD_READ_NATIVE_MAX = common dso_local global i32 0, align 4
@ATA_PROT_NODATA = common dso_local global i32 0, align 4
@ATA_LBA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to read native max address (err_mask=0x%x)\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_ABORTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ATA_HORKAGE_HPA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i64*)* @ata_read_native_max_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_read_native_max_address(%struct.ata_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %10 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ata_id_has_lba48(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = call i32 @ata_tf_init(%struct.ata_device* %13, %struct.ata_taskfile* %7)
  %15 = load i32, i32* @ATA_TFLAG_DEVICE, align 4
  %16 = load i32, i32* @ATA_TFLAG_ISADDR, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @ATA_CMD_READ_NATIVE_MAX_EXT, align 4
  %25 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %27 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ATA_CMD_READ_NATIVE_MAX, align 4
  %32 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @ATA_PROT_NODATA, align 4
  %35 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @ATA_LBA, align 4
  %39 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %43 = load i32, i32* @DMA_NONE, align 4
  %44 = call i32 @ata_exec_internal(%struct.ata_device* %42, %struct.ata_taskfile* %7, i32* null, i32 %43, i32* null, i32 0, i32 0)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %33
  %48 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ata_dev_printk(%struct.ata_device* %48, i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @AC_ERR_DEV, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ATA_ABORTED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %90

64:                                               ; preds = %55, %47
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %90

67:                                               ; preds = %33
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i64 @ata_tf_to_lba48(%struct.ata_taskfile* %7)
  %72 = add nsw i64 %71, 1
  %73 = load i64*, i64** %5, align 8
  store i64 %72, i64* %73, align 8
  br label %78

74:                                               ; preds = %67
  %75 = call i64 @ata_tf_to_lba(%struct.ata_taskfile* %7)
  %76 = add nsw i64 %75, 1
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ATA_HORKAGE_HPA_SIZE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %85, %78
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %64, %61
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ata_id_has_lba48(i32) #1

declare dso_local i32 @ata_tf_init(%struct.ata_device*, %struct.ata_taskfile*) #1

declare dso_local i32 @ata_exec_internal(%struct.ata_device*, %struct.ata_taskfile*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

declare dso_local i64 @ata_tf_to_lba48(%struct.ata_taskfile*) #1

declare dso_local i64 @ata_tf_to_lba(%struct.ata_taskfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
