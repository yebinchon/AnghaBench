; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_stopping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_created = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_cleanup = common dso_local global i32 0, align 4
@BFA_LPS_SM_LOGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_stopping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_stopping(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.bfa_s*, %struct.bfa_s** %9, align 8
  store %struct.bfa_s* %10, %struct.bfa_s** %5, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(%struct.TYPE_7__* %13, i32 %18)
  %20 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bfa_trc(%struct.TYPE_7__* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %60 [
    i32 128, label %26
    i32 129, label %45
    i32 130, label %46
  ]

26:                                               ; preds = %2
  %27 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %28 = call i32 @bfa_fcport_get_topology(%struct.bfa_s* %27)
  %29 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %33 = load i32, i32* @bfa_fcs_fabric_sm_created, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %32, i32 %33)
  br label %44

35:                                               ; preds = %26
  %36 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %37 = load i32, i32* @bfa_fcs_fabric_sm_cleanup, align 4
  %38 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %36, i32 %37)
  %39 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BFA_LPS_SM_LOGOUT, align 4
  %43 = call i32 @bfa_sm_send_event(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %31
  br label %66

45:                                               ; preds = %2
  br label %66

46:                                               ; preds = %2
  %47 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %48 = call i32 @bfa_fcport_get_topology(%struct.bfa_s* %47)
  %49 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %53 = load i32, i32* @bfa_fcs_fabric_sm_created, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %52, i32 %53)
  br label %59

55:                                               ; preds = %46
  %56 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %57 = load i32, i32* @bfa_fcs_fabric_sm_cleanup, align 4
  %58 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %66

60:                                               ; preds = %2
  %61 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %59, %45, %44
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_fcport_get_topology(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
