; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_alloc_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_alloc_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, i8*, i8*, %struct.scsi_cmnd*, %struct.iscsi_conn*, i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@ISCSI_TASK_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_task* (%struct.iscsi_conn*, %struct.scsi_cmnd*)* @iscsi_alloc_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_task* @iscsi_alloc_task(%struct.iscsi_conn* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %struct.iscsi_task** %6 to i8*
  %14 = call i32 @__kfifo_get(i32 %12, i8* %13, i32 8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.iscsi_task* null, %struct.iscsi_task** %3, align 8
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %27 = bitcast %struct.iscsi_task* %26 to i8*
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %31, i32 0, i32 7
  %33 = call i32 @atomic_set(i32* %32, i32 1)
  %34 = load i32, i32* @ISCSI_TASK_PENDING, align 4
  %35 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %36 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 5
  store %struct.iscsi_conn* %37, %struct.iscsi_conn** %39, align 8
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %42 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %41, i32 0, i32 4
  store %struct.scsi_cmnd* %40, %struct.scsi_cmnd** %42, align 8
  %43 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i8*, i8** @jiffies, align 8
  %46 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @jiffies, align 8
  %49 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %51, i32 0, i32 1
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  store %struct.iscsi_task* %54, %struct.iscsi_task** %3, align 8
  br label %55

55:                                               ; preds = %17, %16
  %56 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  ret %struct.iscsi_task* %56
}

declare dso_local i32 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
