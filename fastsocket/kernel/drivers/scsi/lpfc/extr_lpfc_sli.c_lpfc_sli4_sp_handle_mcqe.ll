; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_mcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_mcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_cqe = type { i32 }
%struct.lpfc_mcqe = type { i32 }

@lpfc_trailer_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_cqe*)* @lpfc_sli4_sp_handle_mcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_mcqe(%struct.lpfc_hba* %0, %struct.lpfc_cqe* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_cqe*, align 8
  %5 = alloca %struct.lpfc_mcqe, align 4
  %6 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_cqe* %1, %struct.lpfc_cqe** %4, align 8
  %7 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %4, align 8
  %8 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_cqe* %7, %struct.lpfc_mcqe* %5, i32 4)
  %9 = load i32, i32* @lpfc_trailer_async, align 4
  %10 = call i32 @bf_get(i32 %9, %struct.lpfc_mcqe* %5)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = call i32 @lpfc_sli4_sp_handle_mbox_event(%struct.lpfc_hba* %13, %struct.lpfc_mcqe* %5)
  store i32 %14, i32* %6, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = call i32 @lpfc_sli4_sp_handle_async_event(%struct.lpfc_hba* %16, %struct.lpfc_mcqe* %5)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_cqe*, %struct.lpfc_mcqe*, i32) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_mcqe*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_mbox_event(%struct.lpfc_hba*, %struct.lpfc_mcqe*) #1

declare dso_local i32 @lpfc_sli4_sp_handle_async_event(%struct.lpfc_hba*, %struct.lpfc_mcqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
