; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_iseries_vscsi.c_iseriesvscsi_send_crq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_iseries_vscsi.c_iseriesvscsi_send_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { i32 }

@single_host_data = common dso_local global %struct.ibmvscsi_host_data* null, align 8
@viopath_hostLp = common dso_local global i32 0, align 4
@HvLpEvent_Type_VirtualIo = common dso_local global i32 0, align 4
@viomajorsubtype_scsi = common dso_local global i32 0, align 4
@HvLpEvent_AckInd_NoAck = common dso_local global i32 0, align 4
@HvLpEvent_AckType_ImmediateAck = common dso_local global i32 0, align 4
@VIOVERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvscsi_host_data*, i32, i32)* @iseriesvscsi_send_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iseriesvscsi_send_crq(%struct.ibmvscsi_host_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ibmvscsi_host_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %4, align 8
  store %struct.ibmvscsi_host_data* %7, %struct.ibmvscsi_host_data** @single_host_data, align 8
  %8 = load i32, i32* @viopath_hostLp, align 4
  %9 = load i32, i32* @HvLpEvent_Type_VirtualIo, align 4
  %10 = load i32, i32* @viomajorsubtype_scsi, align 4
  %11 = load i32, i32* @HvLpEvent_AckInd_NoAck, align 4
  %12 = load i32, i32* @HvLpEvent_AckType_ImmediateAck, align 4
  %13 = load i32, i32* @viopath_hostLp, align 4
  %14 = call i32 @viopath_sourceinst(i32 %13)
  %15 = load i32, i32* @viopath_hostLp, align 4
  %16 = call i32 @viopath_targetinst(i32 %15)
  %17 = load i32, i32* @VIOVERSION, align 4
  %18 = shl i32 %17, 16
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @HvCallEvent_signalLpEventFast(i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %14, i32 %16, i32 0, i32 %18, i32 %19, i32 %20, i32 0, i32 0)
  ret i32 %21
}

declare dso_local i32 @HvCallEvent_signalLpEventFast(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @viopath_sourceinst(i32) #1

declare dso_local i32 @viopath_targetinst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
