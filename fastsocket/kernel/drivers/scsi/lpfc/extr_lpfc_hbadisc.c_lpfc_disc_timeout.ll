; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_disc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }

@WORKER_DISC_TMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_disc_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %8, %struct.lpfc_vport** %3, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 2
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %4, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %13 = icmp ne %struct.lpfc_hba* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 1
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @WORKER_DISC_TMO, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @WORKER_DISC_TMO, align 4
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %19
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %38, i32 0, i32 1
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %46 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %45)
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %18
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
