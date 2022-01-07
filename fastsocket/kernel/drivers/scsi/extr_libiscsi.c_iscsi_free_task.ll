; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_free_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_iscsi_free_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.scsi_cmnd*, i32, i32, %struct.iscsi_conn* }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.iscsi_task*)* }

@.str = private unnamed_addr constant [38 x i8] c"freeing task itt 0x%x state %d sc %p\0A\00", align 1
@ISCSI_TASK_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @iscsi_free_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_free_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %6 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %7 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %6, i32 0, i32 3
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_conn* %8, %struct.iscsi_conn** %3, align 8
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %10 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %9, i32 0, i32 1
  %11 = load %struct.iscsi_session*, %struct.iscsi_session** %10, align 8
  store %struct.iscsi_session* %11, %struct.iscsi_session** %4, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 0
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  store %struct.scsi_cmnd* %14, %struct.scsi_cmnd** %5, align 8
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %23 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %22, i32 0, i32 0
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %23, align 8
  %25 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, %struct.scsi_cmnd* %24)
  %26 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %27 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.iscsi_task*)*, i32 (%struct.iscsi_task*)** %29, align 8
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %32 = call i32 %30(%struct.iscsi_task* %31)
  %33 = load i32, i32* @ISCSI_TASK_FREE, align 4
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %37 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %36, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %37, align 8
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 0
  %40 = load %struct.iscsi_task*, %struct.iscsi_task** %39, align 8
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %42 = icmp eq %struct.iscsi_task* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %1
  br label %70

44:                                               ; preds = %1
  %45 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = bitcast %struct.iscsi_task** %2 to i8*
  %50 = call i32 @__kfifo_put(i32 %48, i8* %49, i32 8)
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = icmp ne %struct.scsi_cmnd* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %44
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %55 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %54, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %55, align 8
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 0
  %61 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %60, align 8
  %62 = icmp ne i32 (%struct.scsi_cmnd*)* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %65, align 8
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = call i32 %66(%struct.scsi_cmnd* %67)
  br label %69

69:                                               ; preds = %63, %53
  br label %70

70:                                               ; preds = %43, %69, %44
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
