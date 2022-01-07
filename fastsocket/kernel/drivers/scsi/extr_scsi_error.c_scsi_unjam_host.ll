; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_unjam_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_unjam_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i64, i64, i32 }

@eh_work_q = common dso_local global i32 0, align 4
@eh_done_q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @scsi_unjam_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_unjam_host(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %4 = load i32, i32* @eh_work_q, align 4
  %5 = call i32 @LIST_HEAD(i32 %4)
  %6 = load i32, i32* @eh_done_q, align 4
  %7 = call i32 @LIST_HEAD(i32 %6)
  %8 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 3
  %15 = call i32 @list_splice_init(i32* %14, i32* @eh_work_q)
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32 %18, i64 %19)
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %22 = call i32 @scsi_eh_prt_fail_stats(%struct.Scsi_Host* %21, i32* @eh_work_q)
  %23 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %22)
  %24 = call i32 @scsi_eh_get_sense(i32* @eh_work_q, i32* @eh_done_q)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %1
  %27 = call i32 @scsi_eh_abort_cmds(i32* @eh_work_q, i32* @eh_done_q)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %31 = call i32 @scsi_eh_ready_devs(%struct.Scsi_Host* %30, i32* @eh_work_q, i32* @eh_done_q)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @spin_lock_irqsave(i32 %36, i64 %37)
  %39 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  %52 = call i32 @scsi_eh_flush_done_q(i32* @eh_done_q)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @scsi_eh_prt_fail_stats(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_eh_get_sense(i32*, i32*) #1

declare dso_local i32 @scsi_eh_abort_cmds(i32*, i32*) #1

declare dso_local i32 @scsi_eh_ready_devs(%struct.Scsi_Host*, i32*, i32*) #1

declare dso_local i32 @scsi_eh_flush_done_q(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
