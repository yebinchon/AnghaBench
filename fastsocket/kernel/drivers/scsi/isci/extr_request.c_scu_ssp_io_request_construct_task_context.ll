; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_io_request_construct_task_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_io_request_construct_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_4__, %struct.scu_task_context* }
%struct.TYPE_4__ = type { %struct.sas_task* }
%struct.sas_task = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }
%struct.scu_task_context = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SSP_COMMAND = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_IOREAD = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_IOWRITE = common dso_local global i32 0, align 4
@SCSI_PROT_DIF_TYPE0 = common dso_local global i64 0, align 8
@SCSI_PROT_READ_STRIP = common dso_local global i64 0, align 8
@SCSI_PROT_WRITE_INSERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*, i32, i64)* @scu_ssp_io_request_construct_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scu_ssp_io_request_construct_task_context(%struct.isci_request* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.isci_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.scu_task_context*, align 8
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.isci_request* %0, %struct.isci_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 1
  %14 = load %struct.scu_task_context*, %struct.scu_task_context** %13, align 8
  store %struct.scu_task_context* %14, %struct.scu_task_context** %7, align 8
  %15 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %16 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.sas_task*, %struct.sas_task** %17, align 8
  store %struct.sas_task* %18, %struct.sas_task** %8, align 8
  %19 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %20 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %19, i32 0, i32 0
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %20, align 8
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %9, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %23 = call i64 @scsi_get_prot_type(%struct.scsi_cmnd* %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %25 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %27 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %28 = call i32 @scu_ssp_reqeust_construct_task_context(%struct.isci_request* %26, %struct.scu_task_context* %27)
  %29 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %30 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load i32, i32* @SSP_COMMAND, align 4
  %32 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %33 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %38 [
    i32 130, label %37
    i32 129, label %37
    i32 128, label %42
  ]

37:                                               ; preds = %3, %3
  br label %38

38:                                               ; preds = %3, %37
  %39 = load i32, i32* @SCU_TASK_TYPE_IOREAD, align 4
  %40 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %41 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  br label %46

42:                                               ; preds = %3
  %43 = load i32, i32* @SCU_TASK_TYPE_IOWRITE, align 4
  %44 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %45 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %49 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.scu_task_context*, %struct.scu_task_context** %7, align 8
  %51 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %56 = call i32 @sci_request_build_sgl(%struct.isci_request* %55)
  br label %57

57:                                               ; preds = %54, %46
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @SCSI_PROT_DIF_TYPE0, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @SCSI_PROT_READ_STRIP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @scu_ssp_ireq_dif_strip(%struct.isci_request* %66, i64 %67, i64 %68)
  br label %80

70:                                               ; preds = %61
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @SCSI_PROT_WRITE_INSERT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.isci_request*, %struct.isci_request** %4, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @scu_ssp_ireq_dif_insert(%struct.isci_request* %75, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %65
  br label %81

81:                                               ; preds = %80, %57
  ret void
}

declare dso_local i64 @scsi_get_prot_type(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @scu_ssp_reqeust_construct_task_context(%struct.isci_request*, %struct.scu_task_context*) #1

declare dso_local i32 @sci_request_build_sgl(%struct.isci_request*) #1

declare dso_local i32 @scu_ssp_ireq_dif_strip(%struct.isci_request*, i64, i64) #1

declare dso_local i32 @scu_ssp_ireq_dif_insert(%struct.isci_request*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
