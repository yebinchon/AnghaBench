; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__*, i32, {}* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.MPT3SAS_DEVICE*, i32 }
%struct.MPT3SAS_DEVICE = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.MPT3SAS_ADAPTER = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting task abort! scmd(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"device been deleted! scmd(%p)\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_RAID_COMPONENT = common dso_local global i32 0, align 4
@MPT_TARGET_FLAGS_VOLUME = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK = common dso_local global i32 0, align 4
@TM_MUTEX_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"task abort: %s scmd(%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SUCCESS\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @_scsih_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.MPT3SAS_DEVICE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.MPT3SAS_ADAPTER* @shost_priv(i32 %12)
  store %struct.MPT3SAS_ADAPTER* %13, %struct.MPT3SAS_ADAPTER** %3, align 8
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %14, %struct.TYPE_4__* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %18)
  %20 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %22 = call i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER* %20, %struct.scsi_cmnd* %21)
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %26, align 8
  store %struct.MPT3SAS_DEVICE* %27, %struct.MPT3SAS_DEVICE** %4, align 8
  %28 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %29 = icmp ne %struct.MPT3SAS_DEVICE* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %32 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %41 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %36, %struct.TYPE_4__* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.scsi_cmnd* %40)
  %42 = load i32, i32* @DID_NO_CONNECT, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 3
  %48 = bitcast {}** %47 to i32 (%struct.scsi_cmnd*)**
  %49 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %48, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %51 = call i32 %49(%struct.scsi_cmnd* %50)
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %7, align 4
  br label %121

53:                                               ; preds = %30
  %54 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %56 = call i32 @_scsih_scsi_lookup_find_by_scmd(%struct.MPT3SAS_ADAPTER* %54, %struct.scsi_cmnd* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @DID_RESET, align 4
  %61 = shl i32 %60, 16
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @SUCCESS, align 4
  store i32 %64, i32* %7, align 4
  br label %121

65:                                               ; preds = %53
  %66 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %67 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MPT_TARGET_FLAGS_RAID_COMPONENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %76 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MPT_TARGET_FLAGS_VOLUME, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74, %65
  %84 = load i32, i32* @DID_RESET, align 4
  %85 = shl i32 %84, 16
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @FAILED, align 4
  store i32 %88, i32* %7, align 4
  br label %121

89:                                               ; preds = %74
  %90 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %91 = call i32 @mpt3sas_halt_firmware(%struct.MPT3SAS_ADAPTER* %90)
  %92 = load %struct.MPT3SAS_DEVICE*, %struct.MPT3SAS_DEVICE** %4, align 8
  %93 = getelementptr inbounds %struct.MPT3SAS_DEVICE, %struct.MPT3SAS_DEVICE* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @MPI2_SCSITASKMGMT_TASKTYPE_ABORT_TASK, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @TM_MUTEX_ON, align 4
  %120 = call i32 @mpt3sas_scsih_issue_tm(%struct.MPT3SAS_ADAPTER* %97, i32 %98, i32 %103, i32 %108, i32 %113, i32 %114, i32 %115, i32 30, i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %89, %83, %59, %35
  %122 = load i32, i32* @KERN_INFO, align 4
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SUCCESS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %132 = call i32 (i32, %struct.TYPE_4__*, i8*, ...) @sdev_printk(i32 %122, %struct.TYPE_4__* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %130, %struct.scsi_cmnd* %131)
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local %struct.MPT3SAS_ADAPTER* @shost_priv(i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @_scsih_tm_display_info(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

declare dso_local i32 @_scsih_scsi_lookup_find_by_scmd(%struct.MPT3SAS_ADAPTER*, %struct.scsi_cmnd*) #1

declare dso_local i32 @mpt3sas_halt_firmware(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @mpt3sas_scsih_issue_tm(%struct.MPT3SAS_ADAPTER*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
