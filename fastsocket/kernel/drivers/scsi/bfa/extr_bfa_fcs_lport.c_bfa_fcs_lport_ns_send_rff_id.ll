; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_rff_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ns_send_rff_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_fcs_lport_ns_s = type { %struct.bfa_fcs_lport_s*, %struct.bfa_fcxp_s*, i32 }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_8__, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fchs_s = type { i32 }

@BFA_TRUE = common dso_local global i32 0, align 4
@FC_GS_FCP_FC4_FEATURE_INITIATOR = common dso_local global i32 0, align 4
@FC_TYPE_FCP = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@bfa_fcs_lport_ns_rff_id_response = common dso_local global i32 0, align 4
@FC_MAX_PDUSZ = common dso_local global i32 0, align 4
@FC_FCCT_TOV = common dso_local global i32 0, align 4
@NSSM_EVENT_RFFID_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_rff_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ns_send_rff_id(i8* %0, %struct.bfa_fcxp_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfa_fcxp_s*, align 8
  %5 = alloca %struct.bfa_fcs_lport_ns_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.fchs_s, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bfa_fcs_lport_ns_s*
  store %struct.bfa_fcs_lport_ns_s* %12, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %13 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %14 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %13, i32 0, i32 0
  %15 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %14, align 8
  store %struct.bfa_fcs_lport_s* %15, %struct.bfa_fcs_lport_s** %6, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %17 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bfa_trc(%struct.TYPE_9__* %18, i32 %22)
  %24 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  %25 = icmp ne %struct.bfa_fcxp_s* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %4, align 8
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %30 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* @BFA_TRUE, align 4
  %33 = call %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %26
  %35 = phi %struct.bfa_fcxp_s* [ %27, %26 ], [ %33, %28 ]
  store %struct.bfa_fcxp_s* %35, %struct.bfa_fcxp_s** %9, align 8
  %36 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %37 = icmp ne %struct.bfa_fcxp_s* %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %40 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %49, i32 0, i32 2
  %51 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %52 = load i32, i32* @BFA_TRUE, align 4
  %53 = call i32 @bfa_fcs_fcxp_alloc_wait(i32 %48, i32* %50, void (i8*, %struct.bfa_fcxp_s*)* @bfa_fcs_lport_ns_send_rff_id, %struct.bfa_fcs_lport_ns_s* %51, i32 %52)
  br label %99

54:                                               ; preds = %34
  %55 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %56 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %56, i32 0, i32 1
  store %struct.bfa_fcxp_s* %55, %struct.bfa_fcxp_s** %57, align 8
  %58 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %59 = getelementptr inbounds %struct.bfa_fcs_lport_ns_s, %struct.bfa_fcs_lport_ns_s* %58, i32 0, i32 0
  %60 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %59, align 8
  %61 = call i64 @BFA_FCS_VPORT_IS_INITIATOR_MODE(%struct.bfa_fcs_lport_s* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @FC_GS_FCP_FC4_FEATURE_INITIATOR, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %54
  %66 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %67 = call i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s* %66)
  %68 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %69 = call i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s* %68)
  %70 = load i32, i32* @FC_TYPE_FCP, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @fc_rffid_build(%struct.fchs_s* %7, i32 %67, i32 %69, i32 0, i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %74 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %75 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %74, i32 0, i32 2
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %80 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @BFA_FALSE, align 4
  %83 = load i32, i32* @FC_CLASS_3, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @bfa_fcs_lport_ns_rff_id_response, align 4
  %86 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %87 = bitcast %struct.bfa_fcs_lport_ns_s* %86 to i8*
  %88 = load i32, i32* @FC_MAX_PDUSZ, align 4
  %89 = load i32, i32* @FC_FCCT_TOV, align 4
  %90 = call i32 @bfa_fcxp_send(%struct.bfa_fcxp_s* %73, i32* null, i32 %78, i32 %81, i32 %82, i32 %83, i32 %84, %struct.fchs_s* %7, i32 %85, i8* %87, i32 %88, i32 %89)
  %91 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %92 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.bfa_fcs_lport_ns_s*, %struct.bfa_fcs_lport_ns_s** %5, align 8
  %97 = load i32, i32* @NSSM_EVENT_RFFID_SENT, align 4
  %98 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s* %96, i32 %97)
  br label %99

99:                                               ; preds = %65, %38
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.bfa_fcxp_s* @bfa_fcs_fcxp_alloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bfa_fcs_fcxp_alloc_wait(i32, i32*, void (i8*, %struct.bfa_fcxp_s*)*, %struct.bfa_fcs_lport_ns_s*, i32) #1

declare dso_local i64 @BFA_FCS_VPORT_IS_INITIATOR_MODE(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @fc_rffid_build(%struct.fchs_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fcxp_get_reqbuf(%struct.bfa_fcxp_s*) #1

declare dso_local i32 @bfa_fcs_lport_get_fcid(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcxp_send(%struct.bfa_fcxp_s*, i32*, i32, i32, i32, i32, i32, %struct.fchs_s*, i32, i8*, i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ns_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
