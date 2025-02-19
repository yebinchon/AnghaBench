; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_scr_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_scn_scr_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_scn_s = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_ls_rjt_s = type { i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@SCNSM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@SCNSM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_lport_scn_scr_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_scn_scr_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_lport_scn_s*, align 8
  %16 = alloca %struct.bfa_fcs_lport_s*, align 8
  %17 = alloca %struct.fc_els_cmd_s*, align 8
  %18 = alloca %struct.fc_ls_rjt_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.bfa_fcs_lport_scn_s*
  store %struct.bfa_fcs_lport_scn_s* %20, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %21 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_lport_scn_s, %struct.bfa_fcs_lport_scn_s* %21, i32 0, i32 0
  %23 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %22, align 8
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %16, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %28 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bfa_trc(i32 %26, i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @BFA_STATUS_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %7
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @bfa_trc(i32 %38, i32 %39)
  %41 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %42 = load i32, i32* @SCNSM_EVENT_RSP_ERROR, align 4
  %43 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s* %41, i32 %42)
  br label %80

44:                                               ; preds = %7
  %45 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %46 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %45)
  %47 = inttoptr i64 %46 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %47, %struct.fc_els_cmd_s** %17, align 8
  %48 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %17, align 8
  %49 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %76 [
    i32 129, label %51
    i32 128, label %55
  ]

51:                                               ; preds = %44
  %52 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %53 = load i32, i32* @SCNSM_EVENT_RSP_OK, align 4
  %54 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s* %52, i32 %53)
  br label %80

55:                                               ; preds = %44
  %56 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %57 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %56)
  %58 = inttoptr i64 %57 to %struct.fc_ls_rjt_s*
  store %struct.fc_ls_rjt_s* %58, %struct.fc_ls_rjt_s** %18, align 8
  %59 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %63 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bfa_trc(i32 %61, i32 %64)
  %66 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %67 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fc_ls_rjt_s*, %struct.fc_ls_rjt_s** %18, align 8
  %70 = getelementptr inbounds %struct.fc_ls_rjt_s, %struct.fc_ls_rjt_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bfa_trc(i32 %68, i32 %71)
  %73 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %74 = load i32, i32* @SCNSM_EVENT_RSP_ERROR, align 4
  %75 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s* %73, i32 %74)
  br label %80

76:                                               ; preds = %44
  %77 = load %struct.bfa_fcs_lport_scn_s*, %struct.bfa_fcs_lport_scn_s** %15, align 8
  %78 = load i32, i32* @SCNSM_EVENT_RSP_ERROR, align 4
  %79 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s* %77, i32 %78)
  br label %80

80:                                               ; preds = %35, %76, %55, %51
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_scn_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
