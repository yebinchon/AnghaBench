; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_created.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_created.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { %struct.TYPE_6__*, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bfa_fcs_fabric_sm_linkdown = common dso_local global i32 0, align 4
@BFA_PORT_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_LOOP = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_online = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_flogi = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_created to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_created(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
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
  switch i32 %25, label %82 [
    i32 128, label %26
    i32 129, label %75
    i32 130, label %75
    i32 131, label %76
  ]

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.bfa_s*, %struct.bfa_s** %30, align 8
  %32 = call i32 @bfa_fcport_is_linkup(%struct.bfa_s* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %36 = load i32, i32* @bfa_fcs_fabric_sm_linkdown, align 4
  %37 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %35, i32 %36)
  br label %88

38:                                               ; preds = %26
  %39 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %40 = call i32 @bfa_fcport_get_topology(%struct.bfa_s* %39)
  %41 = load i32, i32* @BFA_PORT_TOPOLOGY_LOOP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load i32, i32* @BFA_FCS_FABRIC_LOOP, align 4
  %45 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %48 = call i32 @bfa_fcport_get_myalpa(%struct.bfa_s* %47)
  %49 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bfa_hton3b(i32 %55)
  %57 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %61 = load i32, i32* @bfa_fcs_fabric_sm_online, align 4
  %62 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %60, i32 %61)
  %63 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %64 = call i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s* %63)
  %65 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %65, i32 0, i32 1
  %67 = call i32 @bfa_fcs_lport_online(%struct.TYPE_7__* %66)
  br label %74

68:                                               ; preds = %38
  %69 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %70 = load i32, i32* @bfa_fcs_fabric_sm_flogi, align 4
  %71 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %69, i32 %70)
  %72 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %73 = call i32 @bfa_fcs_fabric_login(%struct.bfa_fcs_fabric_s* %72)
  br label %74

74:                                               ; preds = %68, %43
  br label %88

75:                                               ; preds = %2, %2
  br label %88

76:                                               ; preds = %2
  %77 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %78 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %79 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %77, i32 %78)
  %80 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %81 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %80)
  br label %88

82:                                               ; preds = %2
  %83 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %84 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @bfa_sm_fault(%struct.TYPE_6__* %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %76, %75, %74, %34
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bfa_fcport_is_linkup(%struct.bfa_s*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcport_get_topology(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_get_myalpa(%struct.bfa_s*) #1

declare dso_local i32 @bfa_hton3b(i32) #1

declare dso_local i32 @bfa_fcs_fabric_set_opertype(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_lport_online(%struct.TYPE_7__*) #1

declare dso_local i32 @bfa_fcs_fabric_login(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
