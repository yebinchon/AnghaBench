; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_dev_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, %struct.TYPE_2__*, i32, %struct.request_queue* }
%struct.TYPE_2__ = type { i64 }
%struct.request_queue = type { i32 }
%struct.ata_device = type { i32, i64, %struct.scsi_device*, i32, i32 }

@ATA_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ATA_SECT_SIZE = common dso_local global i64 0, align 8
@ATA_DMA_PAD_SZ = common dso_local global i64 0, align 8
@ATAPI_MAX_DRAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"drain buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@atapi_drain_needed = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"sector_size=%u > PAGE_SIZE, PIO may malfunction\0A\00", align 1
@ATA_DFLAG_AN = common dso_local global i32 0, align 4
@SDEV_EVT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i64 0, align 8
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.ata_device*)* @ata_scsi_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_dev_config(%struct.scsi_device* %0, %struct.ata_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 4
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %6, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ata_id_has_unload(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %24, i32 %27)
  %29 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %30 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %23
  %35 = load i64, i64* @ATA_SECT_SIZE, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %39 = load i64, i64* @ATA_DMA_PAD_SZ, align 8
  %40 = sub nsw i64 %39, 1
  %41 = call i32 @blk_queue_update_dma_pad(%struct.request_queue* %38, i64 %40)
  %42 = load i32, i32* @ATAPI_MAX_DRAIN, align 4
  %43 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %44 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = or i32 %45, %46
  %48 = call i8* @kmalloc(i32 %42, i32 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %34
  %52 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %52, i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %136

57:                                               ; preds = %34
  %58 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %59 = load i32, i32* @atapi_drain_needed, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @ATAPI_MAX_DRAIN, align 4
  %62 = call i32 @blk_queue_dma_drain(%struct.request_queue* %58, i32 %59, i8* %60, i32 %61)
  br label %72

63:                                               ; preds = %23
  %64 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %65 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ata_id_logical_sector_size(i32 %66)
  %68 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %69 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %63, %57
  %73 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %74 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %80 = load i32, i32* @KERN_WARNING, align 4
  %81 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %82 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.ata_device*, i32, i8*, ...) @ata_dev_printk(%struct.ata_device* %79, i32 %80, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %87 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %88 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i32 @blk_queue_update_dma_alignment(%struct.request_queue* %86, i64 %90)
  %92 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %93 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATA_DFLAG_AN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %85
  %99 = load i32, i32* @SDEV_EVT_MEDIA_CHANGE, align 4
  %100 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %101 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @set_bit(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %85
  %105 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %106 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ATA_DFLAG_NCQ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %104
  %112 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %113 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @ata_id_queue_depth(i32 %119)
  %121 = call i32 @min(i64 %116, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i64, i64* @ATA_MAX_QUEUE, align 8
  %123 = sub nsw i64 %122, 1
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @min(i64 %123, i32 %124)
  store i32 %125, i32* %8, align 4
  %126 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %127 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %111, %104
  %131 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %132 = call i32 @blk_queue_flush_queueable(%struct.request_queue* %131, i32 0)
  %133 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %134 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %135 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %134, i32 0, i32 2
  store %struct.scsi_device* %133, %struct.scsi_device** %135, align 8
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %51
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @ata_id_has_unload(i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_update_dma_pad(%struct.request_queue*, i64) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, ...) #1

declare dso_local i32 @blk_queue_dma_drain(%struct.request_queue*, i32, i8*, i32) #1

declare dso_local i64 @ata_id_logical_sector_size(i32) #1

declare dso_local i32 @blk_queue_update_dma_alignment(%struct.request_queue*, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @ata_id_queue_depth(i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @blk_queue_flush_queueable(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
