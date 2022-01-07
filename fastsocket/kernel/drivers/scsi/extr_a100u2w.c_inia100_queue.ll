; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_inia100_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_inia100_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.orc_scb = type { i32 }
%struct.orc_host = type { i32 }

@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @inia100_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inia100_queue(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.orc_scb*, align 8
  %7 = alloca %struct.orc_host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.orc_host*
  store %struct.orc_host* %15, %struct.orc_host** %7, align 8
  %16 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %16, void (%struct.scsi_cmnd*)** %18, align 8
  %19 = load %struct.orc_host*, %struct.orc_host** %7, align 8
  %20 = call %struct.orc_scb* @orc_alloc_scb(%struct.orc_host* %19)
  store %struct.orc_scb* %20, %struct.orc_scb** %6, align 8
  %21 = icmp eq %struct.orc_scb* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load %struct.orc_host*, %struct.orc_host** %7, align 8
  %26 = load %struct.orc_scb*, %struct.orc_scb** %6, align 8
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = call i64 @inia100_build_scb(%struct.orc_host* %25, %struct.orc_scb* %26, %struct.scsi_cmnd* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.orc_host*, %struct.orc_host** %7, align 8
  %32 = load %struct.orc_scb*, %struct.orc_scb** %6, align 8
  %33 = call i32 @orc_release_scb(%struct.orc_host* %31, %struct.orc_scb* %32)
  %34 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %24
  %36 = load %struct.orc_host*, %struct.orc_host** %7, align 8
  %37 = load %struct.orc_scb*, %struct.orc_scb** %6, align 8
  %38 = call i32 @orc_exec_scb(%struct.orc_host* %36, %struct.orc_scb* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30, %22
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.orc_scb* @orc_alloc_scb(%struct.orc_host*) #1

declare dso_local i64 @inia100_build_scb(%struct.orc_host*, %struct.orc_scb*, %struct.scsi_cmnd*) #1

declare dso_local i32 @orc_release_scb(%struct.orc_host*, %struct.orc_scb*) #1

declare dso_local i32 @orc_exec_scb(%struct.orc_host*, %struct.orc_scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
