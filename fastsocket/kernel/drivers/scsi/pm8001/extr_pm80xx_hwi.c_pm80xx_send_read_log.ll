; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_send_read_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_send_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table*, %struct.pm8001_ccb_info* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i64, %struct.sas_task*, %struct.pm8001_device* }
%struct.sas_task = type { %struct.domain_device*, i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i64, i32 }
%struct.sata_start_req = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.host_to_dev_fis = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@OPC_INB_SATA_HOST_OPSTART = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot allocate task !!!\0A\00", align 1
@pm8001_task_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"cannot allocate tag !!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Domain device cannot be allocated\0A\00", align 1
@NCQ_READ_LOG_FLAG = common dso_local global i32 0, align 4
@NCQ_2ND_RLE_FLAG = common dso_local global i32 0, align 4
@ATA_CMD_READ_LOG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm8001_hba_info*, %struct.pm8001_device*)* @pm80xx_send_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm80xx_send_read_log(%struct.pm8001_hba_info* %0, %struct.pm8001_device* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca %struct.pm8001_device*, align 8
  %5 = alloca %struct.sata_start_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pm8001_ccb_info*, align 8
  %9 = alloca %struct.sas_task*, align 8
  %10 = alloca %struct.host_to_dev_fis, align 8
  %11 = alloca %struct.domain_device*, align 8
  %12 = alloca %struct.inbound_queue_table*, align 8
  %13 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store %struct.pm8001_device* %1, %struct.pm8001_device** %4, align 8
  store %struct.sas_task* null, %struct.sas_task** %9, align 8
  %14 = load i64, i64* @OPC_INB_SATA_HOST_OPSTART, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sas_task* @sas_alloc_slow_task(i32 %15)
  store %struct.sas_task* %16, %struct.sas_task** %9, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %18 = icmp ne %struct.sas_task* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %21 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %20, i32 %21)
  br label %111

23:                                               ; preds = %2
  %24 = load i32, i32* @pm8001_task_done, align 4
  %25 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %28 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %27, i64* %7)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = call i32 @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %32, i32 %33)
  br label %111

35:                                               ; preds = %23
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.domain_device* @kzalloc(i32 8, i32 %36)
  store %struct.domain_device* %37, %struct.domain_device** %11, align 8
  %38 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  %39 = icmp ne %struct.domain_device* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %42 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %41, i32 %42)
  %44 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %45 = call i32 @sas_free_task(%struct.sas_task* %44)
  br label %111

46:                                               ; preds = %35
  %47 = load %struct.domain_device*, %struct.domain_device** %11, align 8
  %48 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 0
  store %struct.domain_device* %47, %struct.domain_device** %49, align 8
  %50 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %51 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %52 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %51, i32 0, i32 0
  %53 = load %struct.domain_device*, %struct.domain_device** %52, align 8
  %54 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %53, i32 0, i32 0
  store %struct.pm8001_device* %50, %struct.pm8001_device** %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %57 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %56, i32 0, i32 1
  %58 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %58, i64 %59
  store %struct.pm8001_ccb_info* %60, %struct.pm8001_ccb_info** %8, align 8
  %61 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %62 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %63 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %62, i32 0, i32 2
  store %struct.pm8001_device* %61, %struct.pm8001_device** %63, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %66 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.sas_task*, %struct.sas_task** %9, align 8
  %68 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %69 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %68, i32 0, i32 1
  store %struct.sas_task* %67, %struct.sas_task** %69, align 8
  %70 = load i32, i32* @NCQ_READ_LOG_FLAG, align 4
  %71 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %72 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i32, i32* @NCQ_2ND_RLE_FLAG, align 4
  %76 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %77 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = call i32 @memset(%struct.sata_start_req* %5, i32 0, i32 48)
  %81 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %82 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %81, i32 0, i32 0
  %83 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %82, align 8
  %84 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %83, i64 0
  store %struct.inbound_queue_table* %84, %struct.inbound_queue_table** %12, align 8
  %85 = bitcast %struct.host_to_dev_fis* %10 to %struct.sata_start_req*
  %86 = call i32 @memset(%struct.sata_start_req* %85, i32 0, i32 48)
  %87 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 0
  store i32 39, i32* %87, align 8
  %88 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 1
  store i32 128, i32* %88, align 4
  %89 = load i32, i32* @ATA_CMD_READ_LOG_EXT, align 4
  %90 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 8
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 2
  store i32 16, i32* %91, align 8
  %92 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %10, i32 0, i32 3
  store i32 1, i32* %92, align 4
  %93 = load i64, i64* %7, align 8
  %94 = call i8* @cpu_to_le32(i64 %93)
  %95 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 7
  store i8* %94, i8** %95, align 8
  %96 = load %struct.pm8001_device*, %struct.pm8001_device** %4, align 8
  %97 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @cpu_to_le32(i64 %98)
  %100 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 6
  store i8* %99, i8** %100, align 8
  %101 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, 2688
  store i32 %103, i32* %101, align 8
  %104 = getelementptr inbounds %struct.sata_start_req, %struct.sata_start_req* %5, i32 0, i32 5
  %105 = bitcast %struct.host_to_dev_fis* %10 to %struct.sata_start_req*
  %106 = call i32 @memcpy(i32* %104, %struct.sata_start_req* %105, i32 48)
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %107, %struct.inbound_queue_table* %108, i64 %109, %struct.sata_start_req* %5, i32 0)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %55, %40, %31, %19
  ret void
}

declare dso_local %struct.sas_task* @sas_alloc_slow_task(i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local %struct.domain_device* @kzalloc(i32, i32) #1

declare dso_local i32 @sas_free_task(%struct.sas_task*) #1

declare dso_local i32 @memset(%struct.sata_start_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, %struct.sata_start_req*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i64, %struct.sata_start_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
