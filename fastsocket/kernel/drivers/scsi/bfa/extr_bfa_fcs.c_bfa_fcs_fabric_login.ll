; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.bfa_lport_cfg_s }
%struct.bfa_lport_cfg_s = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*)* @bfa_fcs_fabric_login to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_login(%struct.bfa_fcs_fabric_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_lport_cfg_s*, align 8
  %5 = alloca i32, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %2, align 8
  %6 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.bfa_s*, %struct.bfa_s** %9, align 8
  store %struct.bfa_s* %10, %struct.bfa_s** %3, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.bfa_lport_cfg_s* %13, %struct.bfa_lport_cfg_s** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %20 = call i32 @bfa_fcport_get_maxfrsize(%struct.bfa_s* %19)
  %21 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %22 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_lport_cfg_s*, %struct.bfa_lport_cfg_s** %4, align 8
  %25 = getelementptr inbounds %struct.bfa_lport_cfg_s, %struct.bfa_lport_cfg_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfa_lps_flogi(i32 %16, %struct.bfa_fcs_fabric_s* %17, i32 %18, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %2, align 8
  %32 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local i32 @bfa_lps_flogi(i32, %struct.bfa_fcs_fabric_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcport_get_maxfrsize(%struct.bfa_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
