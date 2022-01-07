; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_retry_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_nodelist = type { %struct.lpfc_work_evt, %struct.lpfc_vport* }
%struct.lpfc_work_evt = type { i32, i32, i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }

@LPFC_EVT_ELS_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_els_retry_delay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lpfc_nodelist*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.lpfc_work_evt*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %9, %struct.lpfc_nodelist** %3, align 8
  %10 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %10, i32 0, i32 1
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %4, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %5, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 0
  store %struct.lpfc_work_evt* %17, %struct.lpfc_work_evt** %7, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %22, i32 0, i32 0
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %3, align 8
  %33 = call i64 @lpfc_nlp_get(%struct.lpfc_nodelist* %32)
  %34 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %35 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %37 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load i32, i32* @LPFC_EVT_ELS_RETRY, align 4
  %42 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.lpfc_work_evt*, %struct.lpfc_work_evt** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_work_evt, %struct.lpfc_work_evt* %44, i32 0, i32 0
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %50 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %49)
  br label %51

51:                                               ; preds = %40, %31
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
