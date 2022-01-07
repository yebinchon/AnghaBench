; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_abort_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_eh_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64, i32 }
%struct.sas_task = type { i32 }
%struct.sas_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sas_task*)* }

@current = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sas_eh_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = call %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd* %8)
  store %struct.sas_task* %9, %struct.sas_task** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %13, align 8
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sas_internal* @to_sas_internal(i32 %17)
  store %struct.sas_internal* %18, %struct.sas_internal** %7, align 8
  %19 = load i64, i64* @current, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @FAILED, align 4
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %28 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %30, align 8
  %32 = icmp ne i32 (%struct.sas_task*)* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @FAILED, align 4
  store i32 %34, i32* %2, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %37 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %39, align 8
  %41 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %42 = call i32 %40(%struct.sas_task* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %35
  %51 = load i32, i32* @SUCCESS, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %33, %24
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.sas_task* @TO_SAS_TASK(%struct.scsi_cmnd*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
