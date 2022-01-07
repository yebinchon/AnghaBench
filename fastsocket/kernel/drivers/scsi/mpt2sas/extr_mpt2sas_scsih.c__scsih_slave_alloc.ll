; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c__scsih_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, %struct.MPT2SAS_DEVICE*, i32 }
%struct.MPT2SAS_DEVICE = type { %struct.MPT2SAS_TARGET*, i32, i32 }
%struct.MPT2SAS_TARGET = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.MPT2SAS_ADAPTER = type { i32 }
%struct.scsi_target = type { i64, i32, i32, %struct.MPT2SAS_TARGET* }
%struct._raid_device = type { %struct.scsi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPT_DEVICE_FLAGS_INIT = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@RAID_CHANNEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @_scsih_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %6 = alloca %struct.MPT2SAS_TARGET*, align 8
  %7 = alloca %struct.MPT2SAS_DEVICE*, align 8
  %8 = alloca %struct.scsi_target*, align 8
  %9 = alloca %struct._raid_device*, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.MPT2SAS_DEVICE* @kzalloc(i32 24, i32 %11)
  store %struct.MPT2SAS_DEVICE* %12, %struct.MPT2SAS_DEVICE** %7, align 8
  %13 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %7, align 8
  %14 = icmp ne %struct.MPT2SAS_DEVICE* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %7, align 8
  %23 = getelementptr inbounds %struct.MPT2SAS_DEVICE, %struct.MPT2SAS_DEVICE* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MPT_DEVICE_FLAGS_INIT, align 4
  %25 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %7, align 8
  %26 = getelementptr inbounds %struct.MPT2SAS_DEVICE, %struct.MPT2SAS_DEVICE* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = call %struct.scsi_target* @scsi_target(%struct.scsi_device* %27)
  store %struct.scsi_target* %28, %struct.scsi_target** %8, align 8
  %29 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %30 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %29, i32 0, i32 3
  %31 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %30, align 8
  store %struct.MPT2SAS_TARGET* %31, %struct.MPT2SAS_TARGET** %6, align 8
  %32 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %33 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %37 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %7, align 8
  %38 = getelementptr inbounds %struct.MPT2SAS_DEVICE, %struct.MPT2SAS_DEVICE* %37, i32 0, i32 0
  store %struct.MPT2SAS_TARGET* %36, %struct.MPT2SAS_TARGET** %38, align 8
  %39 = load %struct.MPT2SAS_DEVICE*, %struct.MPT2SAS_DEVICE** %7, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %40, i32 0, i32 1
  store %struct.MPT2SAS_DEVICE* %39, %struct.MPT2SAS_DEVICE** %41, align 8
  %42 = load %struct.MPT2SAS_TARGET*, %struct.MPT2SAS_TARGET** %6, align 8
  %43 = getelementptr inbounds %struct.MPT2SAS_TARGET, %struct.MPT2SAS_TARGET* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %18
  %52 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %53 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %52, i32 0, i32 2
  %54 = call %struct.Scsi_Host* @dev_to_shost(i32* %53)
  store %struct.Scsi_Host* %54, %struct.Scsi_Host** %4, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %56 = call %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %55)
  store %struct.MPT2SAS_ADAPTER* %56, %struct.MPT2SAS_ADAPTER** %5, align 8
  %57 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %58 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RAID_CHANNEL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %51
  %63 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %64 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %63, i32 0, i32 0
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %68 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.scsi_target*, %struct.scsi_target** %8, align 8
  %72 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT2SAS_ADAPTER* %67, i32 %70, i64 %73)
  store %struct._raid_device* %74, %struct._raid_device** %9, align 8
  %75 = load %struct._raid_device*, %struct._raid_device** %9, align 8
  %76 = icmp ne %struct._raid_device* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %79 = load %struct._raid_device*, %struct._raid_device** %9, align 8
  %80 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %79, i32 0, i32 0
  store %struct.scsi_device* %78, %struct.scsi_device** %80, align 8
  br label %81

81:                                               ; preds = %77, %62
  %82 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %5, align 8
  %83 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %82, i32 0, i32 0
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %51
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.MPT2SAS_DEVICE* @kzalloc(i32, i32) #1

declare dso_local %struct.scsi_target* @scsi_target(%struct.scsi_device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32*) #1

declare dso_local %struct.MPT2SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT2SAS_ADAPTER*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
