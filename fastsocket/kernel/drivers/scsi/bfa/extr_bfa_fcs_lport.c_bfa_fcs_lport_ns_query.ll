; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32, i32 }
%struct.bfa_fcs_lport_ns_s = type { i32 }

@bfa_fcs_lport_ns_sm_online = common dso_local global i32 0, align 4
@NSSM_EVENT_NS_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_ns_query(%struct.bfa_fcs_lport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_lport_s*, align 8
  %3 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %2, align 8
  %4 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %5 = call %struct.bfa_fcs_lport_ns_s* @BFA_FCS_GET_NS_FROM_PORT(%struct.bfa_fcs_lport_s* %4)
  store %struct.bfa_fcs_lport_ns_s* %5, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %6 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bfa_trc(i32 %8, i32 %11)
  %13 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %14 = load i32, i32* @bfa_fcs_lport_ns_sm_online, align 4
  %15 = call i64 @bfa_sm_cmp_state(%struct.bfa_fcs_lport_ns_s* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %3, align 8
  %19 = load i32, i32* @NSSM_EVENT_NS_QUERY, align 4
  %20 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.bfa_fcs_lport_ns_s* @BFA_FCS_GET_NS_FROM_PORT(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @bfa_sm_cmp_state(%struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
