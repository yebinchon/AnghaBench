; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_dev_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, {}* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.MPT3SAS_DEVICE*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_device = type { i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"attempting device reset! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET = common dso_local global i32 0, align 4
@TM_MUTEX_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"device reset: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @_scsih_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_dev_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %13)
  store %struct.MPT3SAS_ADAPTER* %14, %struct.MPT3SAS_ADAPTER** %3, align 8
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %20 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %15, %struct.TYPE_4__* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %19)
  %21 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %23 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %21, %struct.scsi_cmnd* %22)
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %27, align 8
  store %struct.MPT3SAS_DEVICE* %28, %struct.MPT3SAS_DEVICE** %4, align 8
  %29 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %30 = icmp ne %struct.MPT3SAS_DEVICE* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %33 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %31, %1
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %42 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %37, %struct.TYPE_4__* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %41)
  %43 = load i32, i32* @DID_NO_CONNECT, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 2
  %49 = bitcast {}** %48 to i32 (%struct.scsi_cmnd*)**
  %50 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %49, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %52 = call i32 %50(%struct.scsi_cmnd* %51)
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %8, align 4
  br label %122

54:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  %55 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %56 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %54
  %64 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %65 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %69 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %70 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call %struct._sas_device* @_scsih_sas_device_find_by_handle(%struct.MPT3SAS_ADAPTER* %68, i64 %73)
  store %struct._sas_device* %74, %struct._sas_device** %5, align 8
  %75 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %76 = icmp ne %struct._sas_device* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %63
  %78 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %79 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %77, %63
  %82 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %83 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %92

86:                                               ; preds = %54
  %87 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %88 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @DID_RESET, align 4
  %97 = shl i32 %96, 16
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @FAILED, align 4
  store i32 %100, i32* %8, align 4
  br label %122

101:                                              ; preds = %92
  %102 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_LOGICAL_UNIT_RESET, align 4
  %120 = load i32, i32* @TM_MUTEX_ON, align 4
  %121 = call i32 @mpt3sas_scsih_issue_tm(%struct.MPT3SAS_ADAPTER* %102, i64 %103, i32 %108, i32 %113, i32 %118, i32 %119, i32 0, i32 30, i32 0, i32 %120)
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %101, %95, %36
  %123 = load i32, i32* @KERN_INFO, align 4
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @SUCCESS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %133 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %123, %struct.TYPE_4__* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %131, %struct.scsi_cmnd* %132)
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_4__*, i8*, ...) #1

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
