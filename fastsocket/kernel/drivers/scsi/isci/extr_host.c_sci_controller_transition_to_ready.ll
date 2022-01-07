; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_transition_to_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_host.c_sci_controller_transition_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SCIC_STARTING = common dso_local global i64 0, align 8
@SCIC_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sci_controller_transition_to_ready(%struct.isci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %6 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCIC_STARTING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %13 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %12, i32 0, i32 0
  %14 = load i32, i32* @SCIC_READY, align 4
  %15 = call i32 @sci_change_state(%struct.TYPE_2__* %13, i32 %14)
  %16 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @isci_host_start_complete(%struct.isci_host* %16, i32 %17)
  br label %19

19:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @sci_change_state(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @isci_host_start_complete(%struct.isci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
