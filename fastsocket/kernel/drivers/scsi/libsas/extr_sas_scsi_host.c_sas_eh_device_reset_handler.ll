; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_device_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_device_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i32 }
%struct.scsi_lun = type { i32 }
%struct.domain_device = type { i32 }
%struct.sas_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.domain_device*, i32)* }

@current = common dso_local global i64 0, align 8
@SAS_DEV_LU_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_eh_device_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_lun, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca %struct.sas_internal*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %6, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = call %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd* %14)
  store %struct.domain_device* %15, %struct.domain_device** %7, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sas_internal* @to_sas_internal(i32 %18)
  store %struct.sas_internal* %19, %struct.sas_internal** %8, align 8
  %20 = load i64, i64* @current, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %27 = load i32, i32* @SAS_DEV_LU_RESET, align 4
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @sas_queue_reset(%struct.domain_device* %26, i32 %27, i32 %32, i32 0)
  store i32 %33, i32* %2, align 4
  br label %70

34:                                               ; preds = %1
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @int_to_scsilun(i32 %39, %struct.scsi_lun* %5)
  %41 = load %struct.sas_internal*, %struct.sas_internal** %8, align 8
  %42 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.domain_device*, i32)*, i32 (%struct.domain_device*, i32)** %44, align 8
  %46 = icmp ne i32 (%struct.domain_device*, i32)* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @FAILED, align 4
  store i32 %48, i32* %2, align 4
  br label %70

49:                                               ; preds = %34
  %50 = load %struct.sas_internal*, %struct.sas_internal** %8, align 8
  %51 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.domain_device*, i32)*, i32 (%struct.domain_device*, i32)** %53, align 8
  %55 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %56 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 %54(%struct.domain_device* %55, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %49
  %67 = load i32, i32* @SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @FAILED, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %66, %47, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_queue_reset(%struct.domain_device*, i32, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
