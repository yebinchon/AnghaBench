; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_cmd_hashlist_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_cmd_hashlist_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_tgt_cmd*, %struct.request_queue* }
%struct.scsi_tgt_cmd = type { i32 }
%struct.request_queue = type { %struct.scsi_tgt_queuedata* }
%struct.scsi_tgt_queuedata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @cmd_hashlist_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_hashlist_del(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.scsi_tgt_queuedata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_tgt_cmd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %3, align 8
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %13, align 8
  store %struct.scsi_tgt_queuedata* %14, %struct.scsi_tgt_queuedata** %4, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %18, align 8
  store %struct.scsi_tgt_cmd* %19, %struct.scsi_tgt_cmd** %6, align 8
  %20 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %21 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %27, i32 0, i32 0
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
