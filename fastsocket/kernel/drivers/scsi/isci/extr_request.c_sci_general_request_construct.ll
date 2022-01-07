; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_general_request_construct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_sci_general_request_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32 }
%struct.isci_request = type { i32, i64, i32, i32, i32, %struct.isci_remote_device*, i32 }

@sci_request_state_table = common dso_local global i32 0, align 4
@SCI_REQ_INIT = common dso_local global i32 0, align 4
@SAS_PROTOCOL_NONE = common dso_local global i32 0, align 4
@SCU_INVALID_FRAME_INDEX = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_host*, %struct.isci_remote_device*, %struct.isci_request*)* @sci_general_request_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_general_request_construct(%struct.isci_host* %0, %struct.isci_remote_device* %1, %struct.isci_request* %2) #0 {
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.isci_remote_device*, align 8
  %6 = alloca %struct.isci_request*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %5, align 8
  store %struct.isci_request* %2, %struct.isci_request** %6, align 8
  %7 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %8 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %7, i32 0, i32 6
  %9 = load i32, i32* @sci_request_state_table, align 4
  %10 = load i32, i32* @SCI_REQ_INIT, align 4
  %11 = call i32 @sci_init_sm(i32* %8, i32 %9, i32 %10)
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %5, align 8
  %13 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %14 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %13, i32 0, i32 5
  store %struct.isci_remote_device* %12, %struct.isci_remote_device** %14, align 8
  %15 = load i32, i32* @SAS_PROTOCOL_NONE, align 4
  %16 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %17 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @SCU_INVALID_FRAME_INDEX, align 4
  %19 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %20 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @SCI_SUCCESS, align 4
  %22 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %23 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %25 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.isci_request*, %struct.isci_request** %6, align 8
  %27 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  ret void
}

declare dso_local i32 @sci_init_sm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
