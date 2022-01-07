; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_construct_dummy_rnc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_port.c_sci_port_construct_dummy_rnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %union.scu_remote_node_context* }
%union.scu_remote_node_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, i64)* @sci_port_construct_dummy_rnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_port_construct_dummy_rnc(%struct.isci_port* %0, i64 %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.scu_remote_node_context*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %7 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %union.scu_remote_node_context, %union.scu_remote_node_context* %10, i64 %11
  store %union.scu_remote_node_context* %12, %union.scu_remote_node_context** %5, align 8
  %13 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %14 = call i32 @memset(%union.scu_remote_node_context* %13, i32 0, i32 72)
  %15 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %16 = bitcast %union.scu_remote_node_context* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 10
  store i64 0, i64* %17, align 8
  %18 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %19 = bitcast %union.scu_remote_node_context* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %23 = bitcast %union.scu_remote_node_context* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %26 = bitcast %union.scu_remote_node_context* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %29 = getelementptr inbounds %struct.isci_port, %struct.isci_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %32 = bitcast %union.scu_remote_node_context* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 8
  store i32 %30, i32* %33, align 8
  %34 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %35 = bitcast %union.scu_remote_node_context* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %38 = bitcast %union.scu_remote_node_context* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 8
  %40 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %41 = bitcast %union.scu_remote_node_context* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  store i32 1, i32* %42, align 4
  %43 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %44 = bitcast %union.scu_remote_node_context* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  store i32 1, i32* %45, align 8
  %46 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %47 = bitcast %union.scu_remote_node_context* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = load %union.scu_remote_node_context*, %union.scu_remote_node_context** %5, align 8
  %50 = bitcast %union.scu_remote_node_context* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i32 @memset(%union.scu_remote_node_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
