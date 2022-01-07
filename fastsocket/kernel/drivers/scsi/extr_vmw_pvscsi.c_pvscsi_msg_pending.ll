; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_msg_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_msg_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.PVSCSIRingsState* }
%struct.PVSCSIRingsState = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvscsi_adapter*)* @pvscsi_msg_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvscsi_msg_pending(%struct.pvscsi_adapter* %0) #0 {
  %2 = alloca %struct.pvscsi_adapter*, align 8
  %3 = alloca %struct.PVSCSIRingsState*, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %2, align 8
  %4 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %4, i32 0, i32 0
  %6 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %5, align 8
  store %struct.PVSCSIRingsState* %6, %struct.PVSCSIRingsState** %3, align 8
  %7 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %8 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.PVSCSIRingsState*, %struct.PVSCSIRingsState** %3, align 8
  %11 = getelementptr inbounds %struct.PVSCSIRingsState, %struct.PVSCSIRingsState* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
