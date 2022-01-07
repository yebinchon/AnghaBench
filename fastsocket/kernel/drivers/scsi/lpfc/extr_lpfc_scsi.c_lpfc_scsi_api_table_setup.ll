; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_api_table_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_api_table_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lpfc_scsi_unprep_dma_buf = common dso_local global i32 0, align 4
@lpfc_scsi_prep_cmnd = common dso_local global i32 0, align 4
@lpfc_new_scsi_buf_s3 = common dso_local global i32 0, align 4
@lpfc_scsi_prep_dma_buf_s3 = common dso_local global i32 0, align 4
@lpfc_bg_scsi_prep_dma_buf_s3 = common dso_local global i32 0, align 4
@lpfc_release_scsi_buf_s3 = common dso_local global i32 0, align 4
@lpfc_get_scsi_buf_s3 = common dso_local global i32 0, align 4
@lpfc_new_scsi_buf_s4 = common dso_local global i32 0, align 4
@lpfc_scsi_prep_dma_buf_s4 = common dso_local global i32 0, align 4
@lpfc_bg_scsi_prep_dma_buf_s4 = common dso_local global i32 0, align 4
@lpfc_release_scsi_buf_s4 = common dso_local global i32 0, align 4
@lpfc_get_scsi_buf_s4 = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"1418 Invalid HBA PCI-device group: 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@lpfc_rampdown_queue_depth = common dso_local global i32 0, align 4
@lpfc_scsi_cmd_iocb_cmpl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_scsi_api_table_setup(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @lpfc_scsi_unprep_dma_buf, align 4
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @lpfc_scsi_prep_cmnd, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %45 [
    i32 129, label %13
    i32 128, label %29
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @lpfc_new_scsi_buf_s3, align 4
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @lpfc_scsi_prep_dma_buf_s3, align 4
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @lpfc_bg_scsi_prep_dma_buf_s3, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @lpfc_release_scsi_buf_s3, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @lpfc_get_scsi_buf_s3, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load i32, i32* @lpfc_new_scsi_buf_s4, align 4
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @lpfc_scsi_prep_dma_buf_s4, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @lpfc_bg_scsi_prep_dma_buf_s4, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @lpfc_release_scsi_buf_s4, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @lpfc_get_scsi_buf_s4, align 4
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %53

45:                                               ; preds = %2
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_INIT, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %29, %13
  %54 = load i32, i32* @lpfc_rampdown_queue_depth, align 4
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @lpfc_scsi_cmd_iocb_cmpl, align 4
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %45
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
