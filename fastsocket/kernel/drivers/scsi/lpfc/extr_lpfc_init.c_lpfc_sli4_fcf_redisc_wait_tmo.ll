; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_fcf_redisc_wait_tmo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_fcf_redisc_wait_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FCF_REDISC_PEND = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"2776 FCF rediscover quiescent timer expired\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli4_fcf_redisc_wait_tmo(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.lpfc_hba*
  store %struct.lpfc_hba* %5, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_irq(i32* %7)
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FCF_REDISC_PEND, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_irq(i32* %18)
  br label %43

20:                                               ; preds = %1
  %21 = load i32, i32* @FCF_REDISC_PEND, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @FCF_REDISC_EVT, align 4
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = load i32, i32* @KERN_INFO, align 4
  %39 = load i32, i32* @LOG_FIP, align 4
  %40 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %41)
  br label %43

43:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
