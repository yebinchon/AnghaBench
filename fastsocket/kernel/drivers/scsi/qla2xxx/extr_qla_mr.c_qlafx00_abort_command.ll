; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_abort_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_abort_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { %struct.TYPE_5__** }
%struct.qla_hw_data = type { i32 }

@DEFAULT_OUTSTANDING_COMMANDS = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlafx00_abort_command(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.req_que*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  store %struct.scsi_qla_host* %15, %struct.scsi_qla_host** %7, align 8
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %17 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %16, i32 0, i32 1
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %8, align 8
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %20 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %19, i32 0, i32 0
  %21 = load %struct.req_que*, %struct.req_que** %20, align 8
  store %struct.req_que* %21, %struct.req_que** %9, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i64 1, i64* %5, align 8
  br label %26

26:                                               ; preds = %41, %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @DEFAULT_OUTSTANDING_COMMANDS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.req_que*, %struct.req_que** %9, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = icmp eq %struct.TYPE_5__* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %26

44:                                               ; preds = %39, %26
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 0
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @DEFAULT_OUTSTANDING_COMMANDS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = call i32 @qlafx00_async_abt_cmd(%struct.TYPE_5__* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qlafx00_async_abt_cmd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
