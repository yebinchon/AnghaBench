; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, %struct.TYPE_5__*, i32, i32, %struct.ipr_resource_entry* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ipr_resource_entry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ata_port* }
%struct.ata_port = type { i32 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@TYPE_RAID = common dso_local global i32 0, align 4
@IPR_VSET_RW_TIMEOUT = common dso_local global i32 0, align 4
@IPR_VSET_MAX_SECTORS = common dso_local global i32 0, align 4
@IPR_MAX_CMD_PER_ATA_LUN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Resource path: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @ipr_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_resource_entry*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %16, %struct.ipr_ioa_cfg** %4, align 8
  store %struct.ata_port* null, %struct.ata_port** %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 5
  %30 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %29, align 8
  store %struct.ipr_resource_entry* %30, %struct.ipr_resource_entry** %5, align 8
  %31 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %32 = icmp ne %struct.ipr_resource_entry* %31, null
  br i1 %32, label %33, label %125

33:                                               ; preds = %1
  %34 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %35 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @TYPE_RAID, align 4
  %39 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %43 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %47 = call i64 @ipr_is_ioa_resource(%struct.ipr_resource_entry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %41
  %50 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %51 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %56 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IPR_VSET_RW_TIMEOUT, align 4
  %63 = call i32 @blk_queue_rq_timeout(i32 %61, i32 %62)
  %64 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPR_VSET_MAX_SECTORS, align 4
  %68 = call i32 @blk_queue_max_hw_sectors(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %58, %54
  %70 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %71 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %75 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %80 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.ata_port*, %struct.ata_port** %82, align 8
  store %struct.ata_port* %83, %struct.ata_port** %6, align 8
  br label %84

84:                                               ; preds = %78, %73, %69
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32 %89, i64 %90)
  %92 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %93 = icmp ne %struct.ata_port* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %96 = load i32, i32* @IPR_MAX_CMD_PER_ATA_LUN, align 4
  %97 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %95, i32 0, i32 %96)
  %98 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %99 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %100 = call i32 @ata_sas_slave_configure(%struct.scsi_device* %98, %struct.ata_port* %99)
  br label %109

101:                                              ; preds = %84
  %102 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %103 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %104 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %102, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %101, %94
  %110 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %111 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* @KERN_INFO, align 4
  %116 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %117 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %118 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %5, align 8
  %119 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = trunc i64 %18 to i32
  %122 = call i32 @ipr_format_res_path(%struct.ipr_ioa_cfg* %117, i32 %120, i8* %20, i32 %121)
  %123 = call i32 @sdev_printk(i32 %115, %struct.scsi_device* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %114, %109
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %133

125:                                              ; preds = %1
  %126 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %127 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32 %130, i64 %131)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %124
  %134 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #2

declare dso_local i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry*) #2

declare dso_local i64 @ipr_is_ioa_resource(%struct.ipr_resource_entry*) #2

declare dso_local i64 @ipr_is_vset_device(%struct.ipr_resource_entry*) #2

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #2

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #2

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #2

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #2

declare dso_local i32 @ata_sas_slave_configure(%struct.scsi_device*, %struct.ata_port*) #2

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #2

declare dso_local i32 @ipr_format_res_path(%struct.ipr_ioa_cfg*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
