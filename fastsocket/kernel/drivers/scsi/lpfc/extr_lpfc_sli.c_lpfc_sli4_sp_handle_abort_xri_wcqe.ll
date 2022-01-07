; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_abort_xri_wcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_abort_xri_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lpfc_queue = type { i32 }
%struct.sli4_wcqe_xri_aborted = type { i32 }
%struct.lpfc_cq_event = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"0602 Failed to allocate CQ_EVENT entry\0A\00", align 1
@FCP_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@ELS_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"0603 Invalid work queue CQE subtype (x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.sli4_wcqe_xri_aborted*)* @lpfc_sli4_sp_handle_abort_xri_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_abort_xri_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.sli4_wcqe_xri_aborted* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_queue*, align 8
  %7 = alloca %struct.sli4_wcqe_xri_aborted*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_cq_event*, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %6, align 8
  store %struct.sli4_wcqe_xri_aborted* %2, %struct.sli4_wcqe_xri_aborted** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %12 = call %struct.lpfc_cq_event* @lpfc_sli4_cq_event_alloc(%struct.lpfc_hba* %11)
  store %struct.lpfc_cq_event* %12, %struct.lpfc_cq_event** %9, align 8
  %13 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %14 = icmp ne %struct.lpfc_cq_event* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @LOG_SLI, align 4
  %19 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %78

20:                                               ; preds = %3
  %21 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %22 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %21, i32 0, i32 1
  %23 = load %struct.sli4_wcqe_xri_aborted*, %struct.sli4_wcqe_xri_aborted** %7, align 8
  %24 = call i32 @memcpy(i32* %22, %struct.sli4_wcqe_xri_aborted* %23, i32 4)
  %25 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %68 [
    i32 128, label %28
    i32 129, label %48
  ]

28:                                               ; preds = %20
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %34 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %33, i32 0, i32 0
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @list_add_tail(i32* %34, i32* %37)
  %39 = load i32, i32* @FCP_XRI_ABORT_EVENT, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  store i32 1, i32* %8, align 4
  br label %76

48:                                               ; preds = %20
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.lpfc_cq_event*, %struct.lpfc_cq_event** %9, align 8
  %54 = getelementptr inbounds %struct.lpfc_cq_event, %struct.lpfc_cq_event* %53, i32 0, i32 0
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @list_add_tail(i32* %54, i32* %57)
  %59 = load i32, i32* @ELS_XRI_ABORT_EVENT, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  store i32 1, i32* %8, align 4
  br label %76

68:                                               ; preds = %20
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_SLI, align 4
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %68, %48, %28
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.lpfc_cq_event* @lpfc_sli4_cq_event_alloc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.sli4_wcqe_xri_aborted*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
