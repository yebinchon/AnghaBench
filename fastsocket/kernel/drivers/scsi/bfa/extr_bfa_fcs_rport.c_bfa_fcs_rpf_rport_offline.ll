; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_rport_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rpf_rport_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@RPFSM_EVENT_RPORT_OFFLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_rpf_rport_offline(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %3 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bfa_trc(i32 %5, i32 %8)
  %10 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @__fcs_min_cfg(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %22, i32 0, i32 0
  %24 = load i32, i32* @RPFSM_EVENT_RPORT_OFFLINE, align 4
  %25 = call i32 @bfa_sm_send_event(%struct.TYPE_4__* %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @__fcs_min_cfg(i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
