; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_post_dummy_remote_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_post_dummy_remote_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i64, i64, %struct.isci_host* }
%struct.isci_host = type { %struct.TYPE_4__*, %union.scu_remote_node_context* }
%struct.TYPE_4__ = type { i32 }
%union.scu_remote_node_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCU_CONTEXT_COMMAND_POST_RNC_32 = common dso_local global i64 0, align 8
@SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT = common dso_local global i64 0, align 8
@SCU_CONTEXT_COMMAND_POST_RNC_SUSPEND_TX_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*)* @sci_port_post_dummy_remote_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_post_dummy_remote_node(%struct.isci_port* %0) #0 {
  %2 = alloca %struct.isci_port*, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.scu_remote_node_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.isci_port* %0, %struct.isci_port** %2, align 8
  %8 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %9 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %8, i32 0, i32 2
  %10 = load %struct.isci_host*, %struct.isci_host** %9, align 8
  store %struct.isci_host* %10, %struct.isci_host** %3, align 8
  %11 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %12 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.isci_port*, %struct.isci_port** %2, align 8
  %15 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %18 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %17, i32 0, i32 1
  %19 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %union.scu_remote_node_context, %union.scu_remote_node_context* %19, i64 %20
  store %union.scu_remote_node_context* %21, %union.scu_remote_node_context** %5, align 8
  %22 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %23 = bitcast %union.scu_remote_node_context* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i64, i64* @SCU_CONTEXT_COMMAND_POST_RNC_32, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT, align 8
  %28 = shl i64 %26, %27
  %29 = or i64 %25, %28
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @sci_controller_post_request(%struct.isci_host* %32, i64 %33)
  %35 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %36 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @readl(i32* %38)
  %40 = call i32 @udelay(i32 10)
  %41 = load i64, i64* @SCU_CONTEXT_COMMAND_POST_RNC_SUSPEND_TX_RX, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = or i64 %41, %44
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %45, %46
  store i64 %47, i64* %7, align 8
  %48 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @sci_controller_post_request(%struct.isci_host* %48, i64 %49)
  ret void
}

declare dso_local i32 @sci_controller_post_request(%struct.isci_host*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
