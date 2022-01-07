; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_send_abort_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_send_abort_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table*, %struct.pm8001_ccb_info* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i64, %struct.sas_task*, %struct.pm8001_device* }
%struct.sas_task = type { i32 }
%struct.pm8001_device = type { i64 }
%struct.task_abort_req = type { i8*, i8*, i8* }

@OPC_INB_SATA_ABORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot allocate task\0A\00", align 1
@pm8001_task_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, %struct.pm8001_device*)* @pm8001_send_abort_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_send_abort_all(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pm8001_ccb_info*, align 8
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.task_abort_req, align 8
  %10 = alloca %struct.inbound_queue_table*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %4, align 8
  store %struct.sas_task* null, %struct.sas_task** %8, align 8
  %13 = load i64, i64* @OPC_INB_SATA_ABORT, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %15 = icmp ne %struct.pm8001_device* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %18 = call i32 @pm8001_printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %17, i32 %18)
  br label %72

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sas_task* @sas_alloc_slow_task(i32 %21)
  store %struct.sas_task* %22, %struct.sas_task** %8, align 8
  %23 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %24 = icmp ne %struct.sas_task* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %27 = call i32 @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %26, i32 %27)
  br label %72

29:                                               ; preds = %20
  %30 = load i32, i32* @pm8001_task_done, align 4
  %31 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %32 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %33, i64* %6)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %72

38:                                               ; preds = %29
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 1
  %41 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %41, i64 %42
  store %struct.pm8001_ccb_info* %43, %struct.pm8001_ccb_info** %7, align 8
  %44 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %45 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %46 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %45, i32 0, i32 2
  store %struct.pm8001_device* %44, %struct.pm8001_device** %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %49 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %51 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %7, align 8
  %52 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %51, i32 0, i32 1
  store %struct.sas_task* %50, %struct.sas_task** %52, align 8
  %53 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %54 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %53, i32 0, i32 0
  %55 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %54, align 8
  %56 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %55, i64 0
  store %struct.inbound_queue_table* %56, %struct.inbound_queue_table** %10, align 8
  %57 = call i32 @memset(%struct.task_abort_req* %9, i32 0, i32 24)
  %58 = call i8* @cpu_to_le32(i64 1)
  %59 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %9, i32 0, i32 2
  store i8* %58, i8** %59, align 8
  %60 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %61 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @cpu_to_le32(i64 %62)
  %64 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %9, i32 0, i32 1
  store i8* %63, i8** %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i8* @cpu_to_le32(i64 %65)
  %67 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %9, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %69 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %68, %struct.inbound_queue_table* %69, i64 %70, %struct.task_abort_req* %9, i32 0)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %38, %37, %25, %16
  ret void
}

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local %struct.sas_task* @sas_alloc_slow_task(i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @memset(%struct.task_abort_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.task_abort_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
