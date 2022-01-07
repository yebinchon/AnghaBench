; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_nofabric.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_sm_nofabric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@bfa_fcs_fabric_sm_linkdown = common dso_local global i32 0, align 4
@BFA_LPS_SM_OFFLINE = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_deleting = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_fabric_s*, i32)* @bfa_fcs_fabric_sm_nofabric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_fabric_sm_nofabric(%struct.bfa_fcs_fabric_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %5, i32 0, i32 1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bfa_trc(%struct.TYPE_7__* %7, i32 %12)
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @bfa_trc(%struct.TYPE_7__* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %55 [
    i32 130, label %20
    i32 131, label %31
    i32 129, label %37
    i32 128, label %54
  ]

20:                                               ; preds = %2
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = load i32, i32* @bfa_fcs_fabric_sm_linkdown, align 4
  %23 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %21, i32 %22)
  %24 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BFA_LPS_SM_OFFLINE, align 4
  %28 = call i32 @bfa_sm_send_event(i32 %26, i32 %27)
  %29 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %30 = call i32 @bfa_fcs_fabric_notify_offline(%struct.bfa_fcs_fabric_s* %29)
  br label %61

31:                                               ; preds = %2
  %32 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %33 = load i32, i32* @bfa_fcs_fabric_sm_deleting, align 4
  %34 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %32, i32 %33)
  %35 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %36 = call i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s* %35)
  br label %61

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bfa_trc(%struct.TYPE_7__* %40, i32 %43)
  %45 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bfa_fcport_set_tx_bbcredit(i32 %49, i32 %52)
  br label %61

54:                                               ; preds = %2
  br label %61

55:                                               ; preds = %2
  %56 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @bfa_sm_fault(%struct.TYPE_7__* %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %54, %37, %31, %20
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(i32, i32) #1

declare dso_local i32 @bfa_fcs_fabric_notify_offline(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcs_fabric_delete(%struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_fcport_set_tx_bbcredit(i32, i32) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
