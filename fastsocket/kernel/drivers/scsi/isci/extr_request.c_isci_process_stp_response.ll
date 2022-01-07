; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_isci_process_stp_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_isci_process_stp_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.task_status_struct }
%struct.task_status_struct = type { i32, i32, i32, i32* }
%struct.dev_to_host_fis = type { i32 }
%struct.ata_task_resp = type { i32, i32 }

@ATA_DF = common dso_local global i32 0, align 4
@SAS_PROTO_RESPONSE = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@SAS_TASK_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sas_task*, %struct.dev_to_host_fis*)* @isci_process_stp_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isci_process_stp_response(%struct.sas_task* %0, %struct.dev_to_host_fis* %1) #0 {
  %3 = alloca %struct.sas_task*, align 8
  %4 = alloca %struct.dev_to_host_fis*, align 8
  %5 = alloca %struct.task_status_struct*, align 8
  %6 = alloca %struct.ata_task_resp*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  store %struct.dev_to_host_fis* %1, %struct.dev_to_host_fis** %4, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 0
  store %struct.task_status_struct* %8, %struct.task_status_struct** %5, align 8
  %9 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.ata_task_resp*
  store %struct.ata_task_resp* %14, %struct.ata_task_resp** %6, align 8
  %15 = load %struct.ata_task_resp*, %struct.ata_task_resp** %6, align 8
  %16 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %15, i32 0, i32 0
  store i32 4, i32* %16, align 4
  %17 = load %struct.ata_task_resp*, %struct.ata_task_resp** %6, align 8
  %18 = getelementptr inbounds %struct.ata_task_resp, %struct.ata_task_resp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %4, align 8
  %21 = call i32 @memcpy(i32 %19, %struct.dev_to_host_fis* %20, i32 4)
  %22 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %23 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %22, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %4, align 8
  %25 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATA_DF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @SAS_PROTO_RESPONSE, align 4
  %32 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %33 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.dev_to_host_fis*, %struct.dev_to_host_fis** %4, align 8
  %36 = getelementptr inbounds %struct.dev_to_host_fis, %struct.dev_to_host_fis* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATA_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %43 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %44 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load i32, i32* @SAM_STAT_GOOD, align 4
  %47 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %48 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %41
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* @SAS_TASK_COMPLETE, align 4
  %52 = load %struct.task_status_struct*, %struct.task_status_struct** %5, align 8
  %53 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, %struct.dev_to_host_fis*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
