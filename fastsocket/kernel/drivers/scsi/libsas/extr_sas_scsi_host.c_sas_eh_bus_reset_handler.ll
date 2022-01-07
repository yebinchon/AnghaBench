; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_bus_reset_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_bus_reset_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i32 }
%struct.domain_device = type { i32 }
%struct.sas_internal = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.domain_device*)* }

@current = common dso_local global i64 0, align 8
@SAS_DEV_RESET = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_eh_bus_reset_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %11, align 8
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %5, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = call %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd* %13)
  store %struct.domain_device* %14, %struct.domain_device** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sas_internal* @to_sas_internal(i32 %17)
  store %struct.sas_internal* %18, %struct.sas_internal** %7, align 8
  %19 = load i64, i64* @current, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %26 = load i32, i32* @SAS_DEV_RESET, align 4
  %27 = call i32 @sas_queue_reset(%struct.domain_device* %25, i32 %26, i32 0, i32 0)
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %1
  %29 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %30 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %32, align 8
  %34 = icmp ne i32 (%struct.domain_device*)* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @FAILED, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %39 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.domain_device*)*, i32 (%struct.domain_device*)** %41, align 8
  %43 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %44 = call i32 %42(%struct.domain_device* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %48, %37
  %58 = load i32, i32* @SUCCESS, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @FAILED, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %57, %35, %24
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.domain_device* @cmd_to_domain_dev(%struct.scsi_cmnd*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @sas_queue_reset(%struct.domain_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
