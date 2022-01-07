; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_task_request_construct_task_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_scu_ssp_task_request_construct_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.scu_task_context* }
%struct.scu_task_context = type { i32, i32, %struct.TYPE_3__, i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCU_TASK_PRIORITY_HIGH = common dso_local global i32 0, align 4
@SCU_TASK_TYPE_RAW_FRAME = common dso_local global i32 0, align 4
@SSP_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @scu_ssp_task_request_construct_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scu_ssp_task_request_construct_task_context(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.scu_task_context*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %4 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %5 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %4, i32 0, i32 0
  %6 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  store %struct.scu_task_context* %6, %struct.scu_task_context** %3, align 8
  %7 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %8 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %9 = call i32 @scu_ssp_reqeust_construct_task_context(%struct.isci_request* %7, %struct.scu_task_context* %8)
  %10 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %11 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* @SCU_TASK_PRIORITY_HIGH, align 4
  %13 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %14 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @SCU_TASK_TYPE_RAW_FRAME, align 4
  %16 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %17 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %19 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @SSP_TASK, align 4
  %21 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %22 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.scu_task_context*, %struct.scu_task_context** %3, align 8
  %26 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  ret void
}

declare dso_local i32 @scu_ssp_reqeust_construct_task_context(%struct.isci_request*, %struct.scu_task_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
