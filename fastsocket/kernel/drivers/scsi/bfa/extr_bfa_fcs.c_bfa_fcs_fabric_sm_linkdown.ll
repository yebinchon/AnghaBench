; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_linkdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_linkdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_6__*, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_flogi = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_linkdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_linkdown(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.bfa_s*, %struct.bfa_s** %9, align 8
  store %struct.bfa_s* %10, %struct.bfa_s** %5, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(%struct.TYPE_6__* %13, i32 %18)
  %20 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bfa_trc(%struct.TYPE_6__* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %75 [
    i32 131, label %26
    i32 129, label %62
    i32 130, label %62
    i32 132, label %63
    i32 128, label %69
  ]

26:                                               ; preds = %2
  %27 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %28 = call i32 @bfa_fcport_get_topology(%struct.bfa_s* %27)
  %29 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %33 = load i32, i32* @bfa_fcs_fabric_sm_flogi, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %32, i32 %33)
  %35 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %36 = call i32 @bfa_fcs_fabric_login(%struct.bfa_fcs_fabric_s* %35)
  br label %81

37:                                               ; preds = %26
  %38 = load i32, i32* @BFA_FCS_FABRIC_LOOP, align 4
  %39 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %42 = call i32 @bfa_fcport_get_myalpa(%struct.bfa_s* %41)
  %43 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @bfa_hton3b(i32 %49)
  %51 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %55 = load i32, i32* @bfa_fcs_fabric_sm_online, align 4
  %56 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %54, i32 %55)
  %57 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %58 = call i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s* %57)
  %59 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %59, i32 0, i32 1
  %61 = call i32 @bfa_fcs_lport_online(%struct.TYPE_7__* %60)
  br label %81

62:                                               ; preds = %2, %2
  br label %81

63:                                               ; preds = %2
  %64 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %65 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %66 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %64, i32 %65)
  %67 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %68 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %67)
  br label %81

69:                                               ; preds = %2
  %70 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %71 = load i32, i32* @bfa_fcs_fabric_sm_cleanup, align 4
  %72 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %70, i32 %71)
  %73 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %74 = call i32 @bfa_fcs_fabric_stop(%struct.bfa_fcs_fabric_s* %73)
  br label %81

75:                                               ; preds = %2
  %76 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %77 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @bfa_sm_fault(%struct.TYPE_6__* %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %69, %63, %62, %37, %31
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_fcport_get_topology(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcs_fabric_login(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcport_get_myalpa(%struct.bfa_s*) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_lport_online(%struct.TYPE_7__*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_stop(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
