; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_task.c_isci_task_query_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_task.c_isci_task_query_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32 }

@SAS_TASK_NEED_DEV_RESET = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@TMF_RESP_FUNC_SUCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_task_query_task(%struct.sas_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_task*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %3, align 8
  %4 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %5 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SAS_TASK_NEED_DEV_RESET, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %11, i32* %2, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TMF_RESP_FUNC_SUCC, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
