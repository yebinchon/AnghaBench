; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_target_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, {}* }
%struct.TYPE_4__ = type { i32, i32, %struct.MPT3SAS_DEVICE*, %struct.scsi_target*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.scsi_target = type { i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempting target reset! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"target been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET = common dso_local global i32 0, align 4
@TM_MUTEX_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"target reset: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @_scsih_target_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_target_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_target*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %14)
  store %struct.MPT3SAS_ADAPTER* %15, %struct.MPT3SAS_ADAPTER** %3, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.scsi_target*, %struct.scsi_target** %19, align 8
  store %struct.scsi_target* %20, %struct.scsi_target** %9, align 8
  %21 = load i32, i32* @KERN_INFO, align 4
  %22 = load %struct.scsi_target*, %struct.scsi_target** %9, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %21, %struct.scsi_target* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %23)
  %25 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %27 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %25, %struct.scsi_cmnd* %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %31, align 8
  store %struct.MPT3SAS_DEVICE* %32, %struct.MPT3SAS_DEVICE** %4, align 8
  %33 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %34 = icmp ne %struct.MPT3SAS_DEVICE* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %37 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %35, %1
  %41 = load i32, i32* @KERN_INFO, align 4
  %42 = load %struct.scsi_target*, %struct.scsi_target** %9, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %44 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %41, %struct.scsi_target* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %43)
  %45 = load i32, i32* @DID_NO_CONNECT, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 2
  %51 = bitcast {}** %50 to i32 (%struct.scsi_cmnd*)**
  %52 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %51, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %54 = call i32 %52(%struct.scsi_cmnd* %53)
  %55 = load i32, i32* @SUCCESS, align 4
  store i32 %55, i32* %8, align 4
  br label %119

56:                                               ; preds = %35
  store i64 0, i64* %7, align 8
  %57 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %58 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %67 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %66, i32 0, i32 0
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %71 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %72 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call %struct._sas_device* @_scsih_sas_device_find_by_handle(%struct.MPT3SAS_ADAPTER* %70, i64 %75)
  store %struct._sas_device* %76, %struct._sas_device** %5, align 8
  %77 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %78 = icmp ne %struct._sas_device* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %65
  %80 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %81 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %79, %65
  %84 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %85 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %84, i32 0, i32 0
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  br label %94

88:                                               ; preds = %56
  %89 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %90 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i64, i64* %7, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @DID_RESET, align 4
  %99 = shl i32 %98, 16
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @FAILED, align 4
  store i32 %102, i32* %8, align 4
  br label %119

103:                                              ; preds = %94
  %104 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_TARGET_RESET, align 4
  %117 = load i32, i32* @TM_MUTEX_ON, align 4
  %118 = call i32 @mpt3sas_scsih_issue_tm(%struct.MPT3SAS_ADAPTER* %104, i64 %105, i32 %110, i32 %115, i32 0, i32 %116, i32 0, i32 30, i32 0, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %103, %97, %40
  %120 = load i32, i32* @KERN_INFO, align 4
  %121 = load %struct.scsi_target*, %struct.scsi_target** %9, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @SUCCESS, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %128 = call i32 (i32, %struct.scsi_target*, i8*, ...) @starget_printk(i32 %120, %struct.scsi_target* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %126, %struct.scsi_cmnd* %127)
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @starget_printk(i32, %struct.scsi_target*, i8*, ...) #1

declare dso_local i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @_scsih_sas_device_find_by_handle(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpt3sas_scsih_issue_tm(%struct.MPT3SAS_ADAPTER*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
