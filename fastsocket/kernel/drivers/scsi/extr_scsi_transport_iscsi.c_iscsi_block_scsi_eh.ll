; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_block_scsi_eh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_block_scsi_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.iscsi_cls_session = type { i64, i32 }

@ISCSI_SESSION_LOGGED_IN = common dso_local global i64 0, align 8
@ISCSI_SESSION_FREE = common dso_local global i64 0, align 8
@FAST_IO_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_block_scsi_eh(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.iscsi_cls_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @scsi_target(i32 %8)
  %10 = call %struct.iscsi_cls_session* @starget_to_session(i32 %9)
  store %struct.iscsi_cls_session* %10, %struct.iscsi_cls_session** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %29, %1
  %16 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %17 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ISCSI_SESSION_LOGGED_IN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ISCSI_SESSION_FREE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @FAST_IO_FAIL, align 4
  store i32 %28, i32* %5, align 4
  br label %39

29:                                               ; preds = %21
  %30 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %31 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %30, i32 0, i32 1
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = call i32 @msleep(i32 1000)
  %35 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %36 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %35, i32 0, i32 1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  br label %15

39:                                               ; preds = %27, %15
  %40 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %3, align 8
  %41 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %40, i32 0, i32 1
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.iscsi_cls_session* @starget_to_session(i32) #1

declare dso_local i32 @scsi_target(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
