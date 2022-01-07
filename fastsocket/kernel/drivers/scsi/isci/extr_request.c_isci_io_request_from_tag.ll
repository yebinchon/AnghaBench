; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_isci_io_request_from_tag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_request.c_isci_io_request_from_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sas_task* }
%struct.isci_host = type { i32 }
%struct.sas_task = type { %struct.isci_request* }

@IREQ_TMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isci_request* (%struct.isci_host*, %struct.sas_task*, i32)* @isci_io_request_from_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isci_request* @isci_io_request_from_tag(%struct.isci_host* %0, %struct.sas_task* %1, i32 %2) #0 {
  %4 = alloca %struct.isci_host*, align 8
  %5 = alloca %struct.sas_task*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.isci_request*, align 8
  store %struct.isci_host* %0, %struct.isci_host** %4, align 8
  store %struct.sas_task* %1, %struct.sas_task** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.isci_host*, %struct.isci_host** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.isci_request* @isci_request_from_tag(%struct.isci_host* %8, i32 %9)
  store %struct.isci_request* %10, %struct.isci_request** %7, align 8
  %11 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %12 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %13 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.sas_task* %11, %struct.sas_task** %14, align 8
  %15 = load i32, i32* @IREQ_TMF, align 4
  %16 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %17 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %16, i32 0, i32 0
  %18 = call i32 @clear_bit(i32 %15, i32* %17)
  %19 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  %20 = load %struct.sas_task*, %struct.sas_task** %5, align 8
  %21 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %20, i32 0, i32 0
  store %struct.isci_request* %19, %struct.isci_request** %21, align 8
  %22 = load %struct.isci_request*, %struct.isci_request** %7, align 8
  ret %struct.isci_request* %22
}

declare dso_local %struct.isci_request* @isci_request_from_tag(%struct.isci_host*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
