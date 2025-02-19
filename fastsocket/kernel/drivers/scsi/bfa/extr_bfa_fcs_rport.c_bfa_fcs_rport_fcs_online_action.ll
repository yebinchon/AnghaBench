; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_fcs_online_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_fcs_online_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_rport_s = type { i32, i32, i32, i32 }

@BFA_FCS_ITNIM_SM_FCS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_rport_s*)* @bfa_fcs_rport_fcs_online_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_fcs_online_action(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_rport_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %2, align 8
  %3 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(i32 %15, i32 %18)
  %20 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfa_sm_fault(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %12, %7
  %28 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BFA_FCS_ITNIM_SM_FCS_ONLINE, align 4
  %32 = call i32 @bfa_sm_send_event(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
