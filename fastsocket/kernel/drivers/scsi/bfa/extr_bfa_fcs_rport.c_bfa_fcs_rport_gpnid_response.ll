; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_gpnid_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_rport.c_bfa_fcs_rport_gpnid_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i32 }
%struct.ct_hdr_s = type { i64, i32 }

@CT_RSP_ACCEPT = common dso_local global i64 0, align 8
@RPSM_EVENT_ACCEPTED = common dso_local global i32 0, align 4
@RPSM_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@RPSM_EVENT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_rport_gpnid_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_rport_gpnid_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_rport_s*, align 8
  %16 = alloca %struct.ct_hdr_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.bfa_fcs_rport_s*
  store %struct.bfa_fcs_rport_s* %18, %struct.bfa_fcs_rport_s** %15, align 8
  %19 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_trc(i32 %21, i32 %24)
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %27 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %26)
  %28 = inttoptr i64 %27 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %28, %struct.ct_hdr_s** %16, align 8
  %29 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %16, align 8
  %30 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @be16_to_cpu(i64 %31)
  %33 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %16, align 8
  %34 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %16, align 8
  %36 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CT_RSP_ACCEPT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %7
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %42 = load i32, i32* @RPSM_EVENT_ACCEPTED, align 4
  %43 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %41, i32 %42)
  br label %60

44:                                               ; preds = %7
  %45 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %16, align 8
  %46 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %56 [
    i32 129, label %48
    i32 128, label %52
  ]

48:                                               ; preds = %44
  %49 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %50 = load i32, i32* @RPSM_EVENT_TIMEOUT, align 4
  %51 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %49, i32 %50)
  br label %60

52:                                               ; preds = %44
  %53 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %54 = load i32, i32* @RPSM_EVENT_FAILED, align 4
  %55 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %53, i32 %54)
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %15, align 8
  %58 = load i32, i32* @RPSM_EVENT_FAILED, align 4
  %59 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s* %57, i32 %58)
  br label %60

60:                                               ; preds = %40, %56, %52, %48
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_rport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
