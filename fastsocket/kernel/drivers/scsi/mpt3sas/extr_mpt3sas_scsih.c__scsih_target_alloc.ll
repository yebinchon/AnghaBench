; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i32, %struct.TYPE_4__, %struct.MPT3SAS_TARGET* }
%struct.TYPE_4__ = type { i32 }
%struct.MPT3SAS_TARGET = type { i32, i32, i32, %struct.scsi_target* }
%struct.Scsi_Host = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32, i32, i32 }
%struct._sas_device = type { i64, i32, i32, i32, %struct.scsi_target*, i32 }
%struct._raid_device = type { %struct.scsi_target*, i32, i32 }
%struct.sas_rphy = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MPT3SAS_INVALID_DEVICE_HANDLE = common dso_local global i32 0, align 4
@RAID_CHANNEL = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@MPT_TARGET_FASTPATH_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_target*)* @_scsih_target_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_target_alloc(%struct.scsi_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %6 = alloca %struct.MPT3SAS_TARGET*, align 8
  %7 = alloca %struct._sas_device*, align 8
  %8 = alloca %struct._raid_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sas_rphy*, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %3, align 8
  %11 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %11, i32 0, i32 2
  %13 = call %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host* %14)
  store %struct.MPT3SAS_ADAPTER* %15, %struct.MPT3SAS_ADAPTER** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.MPT3SAS_TARGET* @kzalloc(i32 24, i32 %16)
  store %struct.MPT3SAS_TARGET* %17, %struct.MPT3SAS_TARGET** %6, align 8
  %18 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %19 = icmp ne %struct.MPT3SAS_TARGET* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %25 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %25, i32 0, i32 3
  store %struct.MPT3SAS_TARGET* %24, %struct.MPT3SAS_TARGET** %26, align 8
  %27 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %28 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %29 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %28, i32 0, i32 3
  store %struct.scsi_target* %27, %struct.scsi_target** %29, align 8
  %30 = load i32, i32* @MPT3SAS_INVALID_DEVICE_HANDLE, align 4
  %31 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RAID_CHANNEL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %23
  %39 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %40 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %39, i32 0, i32 2
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %44 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER* %43, i32 %46, i32 %49)
  store %struct._raid_device* %50, %struct._raid_device** %8, align 8
  %51 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %52 = icmp ne %struct._raid_device* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %38
  %54 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %55 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %58 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %60 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %63 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %65 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %66 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %70 = load %struct._raid_device*, %struct._raid_device** %8, align 8
  %71 = getelementptr inbounds %struct._raid_device, %struct._raid_device* %70, i32 0, i32 0
  store %struct.scsi_target* %69, %struct.scsi_target** %71, align 8
  br label %72

72:                                               ; preds = %53, %38
  %73 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %74 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %73, i32 0, i32 2
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  store i32 0, i32* %2, align 4
  br label %150

77:                                               ; preds = %23
  %78 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %79 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %78, i32 0, i32 0
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.sas_rphy* @dev_to_rphy(i32 %85)
  store %struct.sas_rphy* %86, %struct.sas_rphy** %10, align 8
  %87 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %88 = load %struct.sas_rphy*, %struct.sas_rphy** %10, align 8
  %89 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER* %87, i32 %91)
  store %struct._sas_device* %92, %struct._sas_device** %7, align 8
  %93 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %94 = icmp ne %struct._sas_device* %93, null
  br i1 %94, label %95, label %145

95:                                               ; preds = %77
  %96 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %97 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %100 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %102 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %105 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %107 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %108 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %107, i32 0, i32 4
  store %struct.scsi_target* %106, %struct.scsi_target** %108, align 8
  %109 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %110 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %113 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %115 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %118 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %120 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %123 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @test_bit(i32 %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %95
  %128 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %129 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %130 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %95
  %134 = load %struct._sas_device*, %struct._sas_device** %7, align 8
  %135 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32, i32* @MPT_TARGET_FASTPATH_IO, align 4
  %140 = load %struct.MPT3SAS_TARGET*, %struct.MPT3SAS_TARGET** %6, align 8
  %141 = getelementptr inbounds %struct.MPT3SAS_TARGET, %struct.MPT3SAS_TARGET* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %77
  %146 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %5, align 8
  %147 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %146, i32 0, i32 0
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %72, %20
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.TYPE_4__*) #1

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.MPT3SAS_TARGET* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._raid_device* @_scsih_raid_device_find_by_id(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(i32) #1

declare dso_local %struct._sas_device* @mpt3sas_scsih_sas_device_find_by_sas_address(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
