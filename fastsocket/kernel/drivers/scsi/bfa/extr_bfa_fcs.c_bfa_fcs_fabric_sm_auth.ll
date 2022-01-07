; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_auth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@bfa_fcs_fabric_sm_auth_failed = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_evfp = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_linkdown = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_auth(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(i32 %7, i32 %12)
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %54 [
    i32 132, label %20
    i32 131, label %29
    i32 128, label %35
    i32 129, label %39
    i32 130, label %48
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = load i32, i32* @bfa_fcs_fabric_sm_auth_failed, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %21, i32 %22)
  %24 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %28 = call i32 @bfa_sm_send_event(i32 %26, i32 %27)
  br label %60

29:                                               ; preds = %2
  %30 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %31 = load i32, i32* @bfa_fcs_fabric_sm_online, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %30, i32 %31)
  %33 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %34 = call i32 @bfa_fcs_fabric_notify_online(%struct.bfa_fcs_fabric_s* %33)
  br label %60

35:                                               ; preds = %2
  %36 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %37 = load i32, i32* @bfa_fcs_fabric_sm_evfp, align 4
  %38 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %36, i32 %37)
  br label %60

39:                                               ; preds = %2
  %40 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %41 = load i32, i32* @bfa_fcs_fabric_sm_linkdown, align 4
  %42 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %40, i32 %41)
  %43 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %47 = call i32 @bfa_sm_send_event(i32 %45, i32 %46)
  br label %60

48:                                               ; preds = %2
  %49 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %50 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %51 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %49, i32 %50)
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %53 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %52)
  br label %60

54:                                               ; preds = %2
  %55 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @bfa_sm_fault(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48, %39, %35, %29, %20
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_fcs_fabric_notify_online(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_fault(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
