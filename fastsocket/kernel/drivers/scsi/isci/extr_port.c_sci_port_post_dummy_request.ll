; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_post_dummy_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_post_dummy_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64, i32, %struct.isci_host* }
%struct.isci_host = type { %struct.scu_task_context* }
%struct.scu_task_context = type { i64 }

@SCU_CONTEXT_COMMAND_REQUEST_TYPE_POST_TC = common dso_local global i64 0, align 8
@SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*)* @sci_port_post_dummy_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_post_dummy_request(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scu_task_context*, align 8
  %6 = alloca i64, align 8
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  %7 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %8 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %7, i32 0, i32 2
  %9 = load %struct.isci_host*, %struct.isci_host** %8, align 8
  store %struct.isci_host* %9, %struct.isci_host** %3, align 8
  %10 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %11 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %14 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %13, i32 0, i32 0
  %15 = load %struct.scu_task_context*, %struct.scu_task_context** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @ISCI_TAG_TCI(i32 %16)
  %18 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %15, i64 %17
  store %struct.scu_task_context* %18, %struct.scu_task_context** %5, align 8
  %19 = load %struct.scu_task_context*, %struct.scu_task_context** %5, align 8
  %20 = getelementptr inbounds %struct.scu_task_context, %struct.scu_task_context* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* @SCU_CONTEXT_COMMAND_REQUEST_TYPE_POST_TC, align 8
  %22 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %23 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = or i64 %21, %26
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @ISCI_TAG_TCI(i32 %28)
  %30 = or i64 %27, %29
  store i64 %30, i64* %6, align 8
  %31 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @sci_controller_post_request(%struct.isci_host* %31, i64 %32)
  ret void
}

declare dso_local i64 @ISCI_TAG_TCI(i32) #1

declare dso_local i32 @sci_controller_post_request(%struct.isci_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
