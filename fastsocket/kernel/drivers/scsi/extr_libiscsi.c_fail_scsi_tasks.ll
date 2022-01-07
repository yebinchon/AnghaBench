; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_fail_scsi_tasks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi.c_fail_scsi_tasks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.iscsi_task** }
%struct.iscsi_task = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ISCSI_TASK_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"failing sc %p itt 0x%x state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_conn*, i32, i32)* @fail_scsi_tasks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fail_scsi_tasks(%struct.iscsi_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_task*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %72

17:                                               ; preds = %9
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.iscsi_task**, %struct.iscsi_task*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %22, i64 %24
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %25, align 8
  store %struct.iscsi_task* %26, %struct.iscsi_task** %7, align 8
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %33 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ISCSI_TASK_FREE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %17
  br label %69

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %44 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %42, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %69

52:                                               ; preds = %41, %38
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %57 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %60 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @ISCSI_DBG_SESSION(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %58, i32 %61, i64 %64)
  %66 = load %struct.iscsi_task*, %struct.iscsi_task** %7, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @fail_scsi_task(%struct.iscsi_task* %66, i32 %67)
  br label %69

69:                                               ; preds = %52, %51, %37
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.TYPE_5__*, i8*, %struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @fail_scsi_task(%struct.iscsi_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
