; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_sm_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32, i32* }

@bfa_fcs_vport_sm_deleting = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_stopping = common dso_local global i32 0, align 4
@BFA_FCS_PORT_SM_STOP = common dso_local global i32 0, align 4
@bfa_fcs_vport_sm_offline = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*, i32)* @bfa_fcs_vport_sm_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_sm_online(%struct.bfa_fcs_vport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_vport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %6 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %5)
  %7 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %8 = call i32 @__vport_pwwn(%struct.bfa_fcs_vport_s* %7)
  %9 = call i32 @bfa_trc(i32 %6, i32 %8)
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %11 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @bfa_trc(i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %42 [
    i32 130, label %15
    i32 128, label %22
    i32 129, label %30
  ]

15:                                               ; preds = %2
  %16 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %17 = load i32, i32* @bfa_fcs_vport_sm_deleting, align 4
  %18 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %16, i32 %17)
  %19 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %19, i32 0, i32 0
  %21 = call i32 @bfa_fcs_lport_delete(i32* %20)
  br label %47

22:                                               ; preds = %2
  %23 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %24 = load i32, i32* @bfa_fcs_vport_sm_stopping, align 4
  %25 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %23, i32 %24)
  %26 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %26, i32 0, i32 0
  %28 = load i32, i32* @BFA_FCS_PORT_SM_STOP, align 4
  %29 = call i32 @bfa_sm_send_event(i32* %27, i32 %28)
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %32 = load i32, i32* @bfa_fcs_vport_sm_offline, align 4
  %33 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s* %31, i32 %32)
  %34 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %38 = call i32 @bfa_sm_send_event(i32* %36, i32 %37)
  %39 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %39, i32 0, i32 0
  %41 = call i32 @bfa_fcs_lport_offline(i32* %40)
  br label %47

42:                                               ; preds = %2
  %43 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %3, align 8
  %44 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @bfa_sm_fault(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %30, %22, %15
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @__vport_pwwn(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_delete(i32*) #1

declare dso_local i32 @bfa_sm_send_event(i32*, i32) #1

declare dso_local i32 @bfa_fcs_lport_offline(i32*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
