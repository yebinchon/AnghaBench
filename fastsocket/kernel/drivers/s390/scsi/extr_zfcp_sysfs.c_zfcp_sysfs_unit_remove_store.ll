; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_unit_remove_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_unit_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zfcp_port = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_unit = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_lun = type { i32 }

@unit_remove_lh = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ZFCP_STATUS_COMMON_REMOVE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syurs_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_unit_remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_unit_remove_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.zfcp_port*, align 8
  %11 = alloca %struct.zfcp_unit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.zfcp_port* @dev_get_drvdata(%struct.device* %14)
  store %struct.zfcp_port* %15, %struct.zfcp_port** %10, align 8
  %16 = load i32, i32* @unit_remove_lh, align 4
  %17 = call i32 @LIST_HEAD(i32 %16)
  %18 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 2
  %21 = call i32 @atomic_read(i32* %20)
  %22 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %107

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i32* %12 to i64*
  %32 = call i64 @strict_strtoull(i8* %30, i32 0, i64* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %107

38:                                               ; preds = %29
  %39 = call i32 @read_lock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 1))
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call %struct.zfcp_unit* @zfcp_get_unit_by_lun(%struct.zfcp_port* %40, i32 %41)
  store %struct.zfcp_unit* %42, %struct.zfcp_unit** %11, align 8
  %43 = call i32 @read_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 1))
  %44 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %45 = icmp ne %struct.zfcp_unit* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %48 = load i32, i32* @ENXIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %107

50:                                               ; preds = %38
  %51 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %52 = call i32 @zfcp_unit_get(%struct.zfcp_unit* %51)
  %53 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %55 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.zfcp_port*, %struct.zfcp_port** %10, align 8
  %60 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = bitcast i32* %12 to %struct.scsi_lun*
  %63 = call i32 @scsilun_to_int(%struct.scsi_lun* %62)
  %64 = call %struct.scsi_device* @scsi_device_lookup(i32 %58, i32 0, i32 %61, i32 %63)
  store %struct.scsi_device* %64, %struct.scsi_device** %13, align 8
  %65 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %66 = icmp ne %struct.scsi_device* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %69 = call i32 @scsi_remove_device(%struct.scsi_device* %68)
  %70 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  %71 = call i32 @scsi_device_put(%struct.scsi_device* %70)
  br label %72

72:                                               ; preds = %67, %50
  %73 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %74 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %75 = call i32 @zfcp_unit_put(%struct.zfcp_unit* %74)
  %76 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %77 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %76, i32 0, i32 3
  %78 = call i32 @atomic_read(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %82 = load i32, i32* @ENXIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %107

84:                                               ; preds = %72
  %85 = call i32 @write_lock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 1))
  %86 = load i32, i32* @ZFCP_STATUS_COMMON_REMOVE, align 4
  %87 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %88 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %87, i32 0, i32 2
  %89 = call i32 @atomic_set_mask(i32 %86, i32* %88)
  %90 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %91 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %90, i32 0, i32 1
  %92 = call i32 @list_move(i32* %91, i32* @unit_remove_lh)
  %93 = call i32 @write_unlock_irq(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 1))
  %94 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0))
  %95 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %96 = call i32 @zfcp_erp_unit_shutdown(%struct.zfcp_unit* %95, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %97 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %98 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @zfcp_erp_wait(i32 %101)
  %103 = load %struct.zfcp_unit*, %struct.zfcp_unit** %11, align 8
  %104 = call i32 @zfcp_unit_dequeue(%struct.zfcp_unit* %103)
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %84, %80, %46, %34, %25
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.zfcp_port* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @strict_strtoull(i8*, i32, i64*) #1

declare dso_local i32 @read_lock_irq(i32*) #1

declare dso_local %struct.zfcp_unit* @zfcp_get_unit_by_lun(%struct.zfcp_port*, i32) #1

declare dso_local i32 @read_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_unit_get(%struct.zfcp_unit*) #1

declare dso_local %struct.scsi_device* @scsi_device_lookup(i32, i32, i32, i32) #1

declare dso_local i32 @scsilun_to_int(%struct.scsi_lun*) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @zfcp_unit_put(%struct.zfcp_unit*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_unit_shutdown(%struct.zfcp_unit*, i32, i8*, i32*) #1

declare dso_local i32 @zfcp_erp_wait(i32) #1

declare dso_local i32 @zfcp_unit_dequeue(%struct.zfcp_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
