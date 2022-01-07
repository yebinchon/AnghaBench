; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_target_reap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_scan.c_scsi_target_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@STARGET_DEL = common dso_local global i32 0, align 4
@STARGET_CREATED = common dso_local global i32 0, align 4
@scsi_target_reap_usercontext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_target_reap(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %7 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.Scsi_Host* @dev_to_shost(i32 %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %13 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %26, i32 0, i32 3
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  %31 = load i32, i32* @STARGET_DEL, align 4
  %32 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %33 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %25, %1
  %35 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %36 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32 %37, i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %60

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @STARGET_DEL, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @STARGET_CREATED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %54 = call i32 @scsi_target_destroy(%struct.scsi_target* %53)
  br label %60

55:                                               ; preds = %43
  %56 = load i32, i32* @scsi_target_reap_usercontext, align 4
  %57 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %58 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %57, i32 0, i32 2
  %59 = call i32 @execute_in_process_context(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %42, %55, %52
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scsi_target_destroy(%struct.scsi_target*) #1

declare dso_local i32 @execute_in_process_context(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
