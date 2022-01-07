; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_rprt_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_fdmi_rprt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_fdmi_s = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ct_hdr_s = type { i64, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@FDMISM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@CT_RSP_ACCEPT = common dso_local global i64 0, align 8
@FDMISM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i32, i32, %struct.fchs_s*)* @bfa_fcs_lport_fdmi_rprt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_fdmi_rprt_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_lport_fdmi_s*, align 8
  %16 = alloca %struct.bfa_fcs_lport_s*, align 8
  %17 = alloca %struct.ct_hdr_s*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.bfa_fcs_lport_fdmi_s*
  store %struct.bfa_fcs_lport_fdmi_s* %19, %struct.bfa_fcs_lport_fdmi_s** %15, align 8
  %20 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %15, align 8
  %21 = getelementptr inbounds %struct.bfa_fcs_lport_fdmi_s, %struct.bfa_fcs_lport_fdmi_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %23, align 8
  store %struct.bfa_fcs_lport_s* %24, %struct.bfa_fcs_lport_s** %16, align 8
  store %struct.ct_hdr_s* null, %struct.ct_hdr_s** %17, align 8
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %26 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfa_trc(i32 %27, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @BFA_STATUS_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %7
  %37 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @bfa_trc(i32 %39, i32 %40)
  %42 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %15, align 8
  %43 = load i32, i32* @FDMISM_EVENT_RSP_ERROR, align 4
  %44 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s* %42, i32 %43)
  br label %82

45:                                               ; preds = %7
  %46 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %47 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %46)
  %48 = inttoptr i64 %47 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %48, %struct.ct_hdr_s** %17, align 8
  %49 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %50 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @be16_to_cpu(i64 %51)
  %53 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %54 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %56 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CT_RSP_ACCEPT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %15, align 8
  %62 = load i32, i32* @FDMISM_EVENT_RSP_OK, align 4
  %63 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s* %61, i32 %62)
  br label %82

64:                                               ; preds = %45
  %65 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %66 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %69 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bfa_trc(i32 %67, i32 %70)
  %72 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %16, align 8
  %73 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %76 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bfa_trc(i32 %74, i32 %77)
  %79 = load %struct.bfa_fcs_lport_fdmi_s*, %struct.bfa_fcs_lport_fdmi_s** %15, align 8
  %80 = load i32, i32* @FDMISM_EVENT_RSP_ERROR, align 4
  %81 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s* %79, i32 %80)
  br label %82

82:                                               ; preds = %64, %60, %36
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_fdmi_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
