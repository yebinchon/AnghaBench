; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_stop_hba_timers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_stop_hba_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"0297 Invalid device group (x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_stop_hba_timers(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %3 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @lpfc_stop_vport_timers(i32 %5)
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 9
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @del_timer_sync(i32* %9)
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 8
  %13 = call i32 @del_timer_sync(i32* %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 7
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 6
  %19 = call i32 @del_timer_sync(i32* %18)
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPFC_SLI_REV4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 5
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %48 [
    i32 129, label %41
    i32 128, label %45
  ]

41:                                               ; preds = %35
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 2
  %44 = call i32 @del_timer_sync(i32* %43)
  br label %56

45:                                               ; preds = %35
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = call i32 @lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba* %46)
  br label %56

48:                                               ; preds = %35
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @LOG_INIT, align 4
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %41
  ret void
}

declare dso_local i32 @lpfc_stop_vport_timers(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lpfc_sli4_stop_fcf_redisc_wait_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
