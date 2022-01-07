; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c___ata_change_queue_depth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c___ata_change_queue_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.scsi_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ata_device = type { i32, i32 }

@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATA_DFLAG_NCQ_OFF = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MSG_SIMPLE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ata_change_queue_depth(%struct.ata_port* %0, %struct.scsi_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_device*, align 8
  %11 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %6, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %106

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %18
  %28 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  br label %106

31:                                               ; preds = %21
  %32 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %33 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %34 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %32, %struct.scsi_device* %33)
  store %struct.ata_device* %34, %struct.ata_device** %10, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %36 = icmp ne %struct.ata_device* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %39 = call i32 @ata_dev_enabled(%struct.ata_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  br label %106

45:                                               ; preds = %37
  %46 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_lock_irqsave(i32 %48, i64 %49)
  %51 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %61 = call i32 @ata_ncq_enabled(%struct.ata_device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59, %45
  %64 = load i32, i32* @ATA_DFLAG_NCQ_OFF, align 4
  %65 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  store i32 1, i32* %8, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32 %72, i64 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @min(i32 %75, i64 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ata_device*, %struct.ata_device** %10, align 8
  %84 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ata_id_queue_depth(i32 %85)
  %87 = call i32 @min(i32 %82, i64 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* @ATA_MAX_QUEUE, align 8
  %90 = sub nsw i64 %89, 1
  %91 = call i32 @min(i32 %88, i64 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %93 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %69
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %106

100:                                              ; preds = %69
  %101 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %102 = load i32, i32* @MSG_SIMPLE_TAG, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @scsi_adjust_queue_depth(%struct.scsi_device* %101, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %100, %97, %41, %27, %15
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i32 @ata_dev_enabled(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_ncq_enabled(%struct.ata_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @ata_id_queue_depth(i32) #1

declare dso_local i32 @scsi_adjust_queue_depth(%struct.scsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
