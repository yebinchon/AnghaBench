; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_send_task_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_send_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.task_abort_req = type { i8*, i8*, i8*, i8* }

@ABORT_SINGLE = common dso_local global i32 0, align 4
@ABORT_MASK = common dso_local global i32 0, align 4
@ABORT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i32, i32, i32, i32, i32)* @send_task_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_task_abort(%struct.pm8001_hba_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pm8001_hba_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.task_abort_req, align 8
  %14 = alloca %struct.inbound_queue_table*, align 8
  %15 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %17 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %16, i32 0, i32 0
  %18 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %17, align 8
  %19 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %18, i64 0
  store %struct.inbound_queue_table* %19, %struct.inbound_queue_table** %14, align 8
  %20 = call i32 @memset(%struct.task_abort_req* %13, i32 0, i32 32)
  %21 = load i32, i32* @ABORT_SINGLE, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @ABORT_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 2
  store i8* null, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_le32(i32 %28)
  %30 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i8* @cpu_to_le32(i32 %34)
  %36 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  br label %53

37:                                               ; preds = %6
  %38 = load i32, i32* @ABORT_ALL, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ABORT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = call i8* @cpu_to_le32(i32 1)
  %45 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.task_abort_req, %struct.task_abort_req* %13, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %7, align 8
  %55 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %14, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %54, %struct.inbound_queue_table* %55, i32 %56, %struct.task_abort_req* %13, i32 0)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.task_abort_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.task_abort_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
