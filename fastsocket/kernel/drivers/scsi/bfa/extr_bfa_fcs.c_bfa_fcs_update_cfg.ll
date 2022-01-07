; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_update_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_update_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_s = type { %struct.bfa_fcs_fabric_s }
%struct.bfa_fcs_fabric_s = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.bfa_ioc_s }
%struct.bfa_ioc_s = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.bfa_lport_cfg_s }
%struct.bfa_lport_cfg_s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_update_cfg(%struct.bfa_fcs_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_s*, align 8
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca %struct.bfa_lport_cfg_s*, align 8
  %5 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_fcs_s* %0, %struct.bfa_fcs_s** %2, align 8
  %6 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %6, i32 0, i32 0
  store %struct.bfa_fcs_fabric_s* %7, %struct.bfa_fcs_fabric_s** %3, align 8
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.bfa_lport_cfg_s* %10, %struct.bfa_lport_cfg_s** %4, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.bfa_ioc_s* %16, %struct.bfa_ioc_s** %5, align 8
  %17 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %23 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
