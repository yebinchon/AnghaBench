; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_wcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i8* }
%struct.lpfc_queue = type { i32, i32, i32 }
%struct.lpfc_cqe = type { i32 }
%struct.lpfc_wcqe_release = type { i32 }
%struct.lpfc_wcqe_complete = type { i32 }
%struct.sli4_wcqe_xri_aborted = type { i32 }

@lpfc_wcqe_c_code = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"0144 Not a valid WCQE code: x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_cqe*)* @lpfc_sli4_fp_handle_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_fp_handle_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_cqe* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_cqe*, align 8
  %7 = alloca %struct.lpfc_wcqe_release, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_cqe* %2, %struct.lpfc_cqe** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %6, align 8
  %10 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_cqe* %9, %struct.lpfc_wcqe_release* %7, i32 4)
  %11 = load i32, i32* @lpfc_wcqe_c_code, align 4
  %12 = call i32 @bf_get(i32 %11, %struct.lpfc_wcqe_release* %7)
  switch i32 %12, label %45 [
    i32 130, label %13
    i32 129, label %25
    i32 128, label %33
  ]

13:                                               ; preds = %3
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i8*, i8** @jiffies, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %22 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %23 = bitcast %struct.lpfc_wcqe_release* %7 to %struct.lpfc_wcqe_complete*
  %24 = call i32 @lpfc_sli4_fp_handle_fcp_wcqe(%struct.lpfc_hba* %21, %struct.lpfc_queue* %22, %struct.lpfc_wcqe_complete* %23)
  br label %52

25:                                               ; preds = %3
  %26 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %31 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %32 = call i32 @lpfc_sli4_fp_handle_rel_wcqe(%struct.lpfc_hba* %30, %struct.lpfc_queue* %31, %struct.lpfc_wcqe_release* %7)
  br label %52

33:                                               ; preds = %3
  %34 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** @jiffies, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %43 = bitcast %struct.lpfc_wcqe_release* %7 to %struct.sli4_wcqe_xri_aborted*
  %44 = call i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba* %41, %struct.lpfc_queue* %42, %struct.sli4_wcqe_xri_aborted* %43)
  store i32 %44, i32* %8, align 4
  br label %52

45:                                               ; preds = %3
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i32, i32* @LOG_SLI, align 4
  %49 = load i32, i32* @lpfc_wcqe_c_code, align 4
  %50 = call i32 @bf_get(i32 %49, %struct.lpfc_wcqe_release* %7)
  %51 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %45, %33, %25, %13
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_cqe*, %struct.lpfc_wcqe_release*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_fp_handle_fcp_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_sli4_fp_handle_rel_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.sli4_wcqe_xri_aborted*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
