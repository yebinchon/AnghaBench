; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_fdisc_rejected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_vport_fdisc_rejected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_vport_s = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BFA_FCS_VPORT_MAX_RETRIES = common dso_local global i32 0, align 4
@BFA_FCS_VPORT_SM_RSP_ERROR = common dso_local global i32 0, align 4
@BFA_LPORT_AEN_NPIV_DUP_WWN = common dso_local global i32 0, align 4
@BFA_FCS_VPORT_SM_RSP_DUP_WWN = common dso_local global i32 0, align 4
@BFA_LPORT_AEN_NPIV_FABRIC_MAX = common dso_local global i32 0, align 4
@BFA_FCS_VPORT_SM_FABRIC_MAX = common dso_local global i32 0, align 4
@BFA_LPORT_AEN_NPIV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcs_vport_s*)* @bfa_fcs_vport_fdisc_rejected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_vport_fdisc_rejected(%struct.bfa_fcs_vport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_vport_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfa_fcs_vport_s* %0, %struct.bfa_fcs_vport_s** %2, align 8
  %5 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %16 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @bfa_trc(i32 %16, i32 %17)
  %19 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %20 = call i32 @__vport_fcs(%struct.bfa_fcs_vport_s* %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bfa_trc(i32 %20, i32 %21)
  %23 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %66 [
    i32 128, label %28
    i32 129, label %28
    i32 130, label %47
  ]

28:                                               ; preds = %1, %1
  %29 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BFA_FCS_VPORT_MAX_RETRIES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %36 = load i32, i32* @BFA_FCS_VPORT_SM_RSP_ERROR, align 4
  %37 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s* %35, i32 %36)
  br label %46

38:                                               ; preds = %28
  %39 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %39, i32 0, i32 0
  %41 = load i32, i32* @BFA_LPORT_AEN_NPIV_DUP_WWN, align 4
  %42 = call i32 @bfa_fcs_vport_aen_post(i32* %40, i32 %41)
  %43 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %44 = load i32, i32* @BFA_FCS_VPORT_SM_RSP_DUP_WWN, align 4
  %45 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %34
  br label %80

47:                                               ; preds = %1
  %48 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %49 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BFA_FCS_VPORT_MAX_RETRIES, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %55 = load i32, i32* @BFA_FCS_VPORT_SM_RSP_ERROR, align 4
  %56 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s* %54, i32 %55)
  br label %65

57:                                               ; preds = %47
  %58 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %58, i32 0, i32 0
  %60 = load i32, i32* @BFA_LPORT_AEN_NPIV_FABRIC_MAX, align 4
  %61 = call i32 @bfa_fcs_vport_aen_post(i32* %59, i32 %60)
  %62 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %63 = load i32, i32* @BFA_FCS_VPORT_SM_FABRIC_MAX, align 4
  %64 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %53
  br label %80

66:                                               ; preds = %1
  %67 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %72, i32 0, i32 0
  %74 = load i32, i32* @BFA_LPORT_AEN_NPIV_UNKNOWN, align 4
  %75 = call i32 @bfa_fcs_vport_aen_post(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %2, align 8
  %78 = load i32, i32* @BFA_FCS_VPORT_SM_RSP_ERROR, align 4
  %79 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %65, %46
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @__vport_fcs(%struct.bfa_fcs_vport_s*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_vport_s*, i32) #1

declare dso_local i32 @bfa_fcs_vport_aen_post(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
