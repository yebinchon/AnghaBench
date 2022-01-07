; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_gmal_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_ms_gmal_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.fchs_s = type { i32 }
%struct.bfa_fcs_lport_ms_s = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ct_hdr_s = type { i64, i32, i32 }
%struct.fcgs_gmal_resp_s = type { i64, i32 }
%struct.fcgs_gmal_entry_s = type { i8*, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@MSSM_EVENT_RSP_ERROR = common dso_local global i32 0, align 4
@CT_RSP_ACCEPT = common dso_local global i64 0, align 8
@CT_GMAL_RESP_PREFIX_HTTP = common dso_local global i32 0, align 4
@BFA_FCS_FABRIC_IPADDR_SZ = common dso_local global i32 0, align 4
@MSSM_EVENT_RSP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfa_fcxp_s*, i8*, i32, i64, i64, %struct.fchs_s*)* @bfa_fcs_lport_ms_gmal_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcs_lport_ms_gmal_response(i8* %0, %struct.bfa_fcxp_s* %1, i8* %2, i32 %3, i64 %4, i64 %5, %struct.fchs_s* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.bfa_fcxp_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.fchs_s*, align 8
  %15 = alloca %struct.bfa_fcs_lport_ms_s*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.ct_hdr_s*, align 8
  %18 = alloca %struct.fcgs_gmal_resp_s*, align 8
  %19 = alloca %struct.fcgs_gmal_entry_s*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.bfa_fcxp_s* %1, %struct.bfa_fcxp_s** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.fchs_s* %6, %struct.fchs_s** %14, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.bfa_fcs_lport_ms_s*
  store %struct.bfa_fcs_lport_ms_s* %23, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %24 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %25 = getelementptr inbounds %struct.bfa_fcs_lport_ms_s, %struct.bfa_fcs_lport_ms_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %16, align 8
  store %struct.ct_hdr_s* null, %struct.ct_hdr_s** %17, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @bfa_trc(i32 %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfa_trc(i32 %34, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @BFA_STATUS_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %7
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @bfa_trc(i32 %46, i32 %47)
  %49 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %50 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %51 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %49, i32 %50)
  br label %155

52:                                               ; preds = %7
  %53 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %9, align 8
  %54 = call i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s* %53)
  %55 = inttoptr i64 %54 to %struct.ct_hdr_s*
  store %struct.ct_hdr_s* %55, %struct.ct_hdr_s** %17, align 8
  %56 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %57 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @be16_to_cpu(i64 %58)
  %60 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %61 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %63 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CT_RSP_ACCEPT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %137

67:                                               ; preds = %52
  %68 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %69 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %68, i64 1
  %70 = bitcast %struct.ct_hdr_s* %69 to %struct.fcgs_gmal_resp_s*
  store %struct.fcgs_gmal_resp_s* %70, %struct.fcgs_gmal_resp_s** %18, align 8
  %71 = load %struct.fcgs_gmal_resp_s*, %struct.fcgs_gmal_resp_s** %18, align 8
  %72 = getelementptr inbounds %struct.fcgs_gmal_resp_s, %struct.fcgs_gmal_resp_s* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @be32_to_cpu(i32 %73)
  store i64 %74, i64* %20, align 8
  %75 = load i64, i64* %20, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %79 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %80 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %78, i32 %79)
  br label %155

81:                                               ; preds = %67
  %82 = load %struct.fcgs_gmal_resp_s*, %struct.fcgs_gmal_resp_s** %18, align 8
  %83 = getelementptr inbounds %struct.fcgs_gmal_resp_s, %struct.fcgs_gmal_resp_s* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.fcgs_gmal_entry_s*
  store %struct.fcgs_gmal_entry_s* %85, %struct.fcgs_gmal_entry_s** %19, align 8
  br label %86

86:                                               ; preds = %132, %81
  %87 = load i64, i64* %20, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %86
  %90 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %91 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @CT_GMAL_RESP_PREFIX_HTTP, align 4
  %94 = call i64 @strncmp(i8* %92, i32 %93, i32 8)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %89
  %97 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %98 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  store i8* %100, i8** %21, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %103 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %101, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %119

111:                                              ; preds = %96
  %112 = load i8*, i8** %21, align 8
  %113 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %114 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %112, i64 %117
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %111, %96
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %121 = call i32 @bfa_fcs_lport_get_fabric_ipaddr(%struct.TYPE_5__* %120)
  %122 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %123 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BFA_FCS_FABRIC_IPADDR_SZ, align 4
  %126 = call i32 @strncpy(i32 %121, i32 %124, i32 %125)
  br label %133

127:                                              ; preds = %89
  %128 = load i64, i64* %20, align 8
  %129 = add nsw i64 %128, -1
  store i64 %129, i64* %20, align 8
  %130 = load %struct.fcgs_gmal_entry_s*, %struct.fcgs_gmal_entry_s** %19, align 8
  %131 = getelementptr inbounds %struct.fcgs_gmal_entry_s, %struct.fcgs_gmal_entry_s* %130, i32 1
  store %struct.fcgs_gmal_entry_s* %131, %struct.fcgs_gmal_entry_s** %19, align 8
  br label %132

132:                                              ; preds = %127
  br label %86

133:                                              ; preds = %119, %86
  %134 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %135 = load i32, i32* @MSSM_EVENT_RSP_OK, align 4
  %136 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %134, i32 %135)
  br label %155

137:                                              ; preds = %52
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %142 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @bfa_trc(i32 %140, i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %17, align 8
  %149 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @bfa_trc(i32 %147, i32 %150)
  %152 = load %struct.bfa_fcs_lport_ms_s*, %struct.bfa_fcs_lport_ms_s** %15, align 8
  %153 = load i32, i32* @MSSM_EVENT_RSP_ERROR, align 4
  %154 = call i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s* %152, i32 %153)
  br label %155

155:                                              ; preds = %137, %133, %77, %43
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_fcs_lport_ms_s*, i32) #1

declare dso_local i64 @BFA_FCXP_RSP_PLD(%struct.bfa_fcxp_s*) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_get_fabric_ipaddr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
