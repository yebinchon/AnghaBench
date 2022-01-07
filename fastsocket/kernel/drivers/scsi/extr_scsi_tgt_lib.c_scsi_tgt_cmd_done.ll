; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_tgt_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_scsi_tgt_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_tgt_cmd* }
%struct.scsi_tgt_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"cmd %p %u\0A\00", align 1
@scsi_tgtd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @scsi_tgt_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_tgt_cmd_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.scsi_tgt_cmd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %7, align 8
  store %struct.scsi_tgt_cmd* %8, %struct.scsi_tgt_cmd** %3, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @rq_data_dir(%struct.TYPE_2__* %12)
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %9, i32 %13)
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %16 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scsi_tgt_uspace_send_status(%struct.scsi_cmnd* %15, i32 %18, i32 %21)
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = call i32 @scsi_release_buffers(%struct.scsi_cmnd* %23)
  %25 = load i32, i32* @scsi_tgtd, align 4
  %26 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %26, i32 0, i32 0
  %28 = call i32 @queue_work(i32 %25, i32* %27)
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.scsi_cmnd*, i32) #1

declare dso_local i32 @rq_data_dir(%struct.TYPE_2__*) #1

declare dso_local i32 @scsi_tgt_uspace_send_status(%struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @scsi_release_buffers(%struct.scsi_cmnd*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
