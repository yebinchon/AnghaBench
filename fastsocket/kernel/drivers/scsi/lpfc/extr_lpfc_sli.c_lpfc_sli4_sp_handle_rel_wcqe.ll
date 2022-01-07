; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rel_wcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rel_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_wcqe_release = type { i32 }

@lpfc_wcqe_r_wq_id = common dso_local global i32 0, align 4
@lpfc_wcqe_r_wqe_index = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"2579 Slow-path wqe consume event carries miss-matched qid: wcqe-qid=x%x, sp-qid=x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_wcqe_release*)* @lpfc_sli4_sp_handle_rel_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_sp_handle_rel_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_wcqe_release* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_wcqe_release*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_wcqe_release* %1, %struct.lpfc_wcqe_release** %4, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* @lpfc_wcqe_r_wq_id, align 4
  %17 = load %struct.lpfc_wcqe_release*, %struct.lpfc_wcqe_release** %4, align 8
  %18 = call i64 @bf_get(i32 %16, %struct.lpfc_wcqe_release* %17)
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %18, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @lpfc_wcqe_r_wqe_index, align 4
  %32 = load %struct.lpfc_wcqe_release*, %struct.lpfc_wcqe_release** %4, align 8
  %33 = call i64 @bf_get(i32 %31, %struct.lpfc_wcqe_release* %32)
  %34 = call i32 @lpfc_sli4_wq_release(%struct.TYPE_4__* %30, i64 %33)
  br label %49

35:                                               ; preds = %15
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = load i32, i32* @KERN_WARNING, align 4
  %38 = load i32, i32* @LOG_SLI, align 4
  %39 = load i32, i32* @lpfc_wcqe_r_wqe_index, align 4
  %40 = load %struct.lpfc_wcqe_release*, %struct.lpfc_wcqe_release** %4, align 8
  %41 = call i64 @bf_get(i32 %39, %struct.lpfc_wcqe_release* %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %47)
  br label %49

49:                                               ; preds = %14, %35, %26
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_wcqe_release*) #1

declare dso_local i32 @lpfc_sli4_wq_release(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
