; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_sci_remote_device_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_port = type { i32 }
%struct.isci_remote_device = type { i32, i32, i64, %struct.isci_port* }

@sci_remote_device_state_table = common dso_local global i32 0, align 4
@SCI_DEV_INITIAL = common dso_local global i32 0, align 4
@SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_port*, %struct.isci_remote_device*)* @sci_remote_device_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_device_construct(%struct.isci_port* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca %struct.isci_port*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  store %struct.isci_port* %0, %struct.isci_port** %3, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %4, align 8
  %5 = load %struct.isci_port*, %struct.isci_port** %3, align 8
  %6 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %7 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %6, i32 0, i32 3
  store %struct.isci_port* %5, %struct.isci_port** %7, align 8
  %8 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %9 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %11 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %10, i32 0, i32 1
  %12 = load i32, i32* @sci_remote_device_state_table, align 4
  %13 = load i32, i32* @SCI_DEV_INITIAL, align 4
  %14 = call i32 @sci_init_sm(i32* %11, i32 %12, i32 %13)
  %15 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %16 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %15, i32 0, i32 0
  %17 = load i32, i32* @SCIC_SDS_REMOTE_NODE_CONTEXT_INVALID_INDEX, align 4
  %18 = call i32 @sci_remote_node_context_construct(i32* %16, i32 %17)
  ret void
}

declare dso_local i32 @sci_init_sm(i32*, i32, i32) #1

declare dso_local i32 @sci_remote_node_context_construct(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
