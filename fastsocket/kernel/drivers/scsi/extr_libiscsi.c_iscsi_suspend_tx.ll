; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_suspend_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_suspend_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_host = type { i64 }

@ISCSI_SUSPEND_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_suspend_tx(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_conn*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.iscsi_host*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %2, align 8
  %5 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %3, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %11 = call %struct.iscsi_host* @shost_priv(%struct.Scsi_Host* %10)
  store %struct.iscsi_host* %11, %struct.iscsi_host** %4, align 8
  %12 = load i32, i32* @ISCSI_SUSPEND_BIT, align 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %2, align 8
  %14 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.iscsi_host*, %struct.iscsi_host** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.iscsi_host*, %struct.iscsi_host** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_host, %struct.iscsi_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @flush_workqueue(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  ret void
}

declare dso_local %struct.iscsi_host* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
