; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_ctm_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_ctm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fcp_resp_with_ext = type { i32 }
%struct.fcp_resp_rsp_info = type { i64 }

@FCP_TMF_CMPL = common dso_local global i64 0, align 8
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TMFUNCFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_fcp_ctm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_fcp_ctm_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.fcp_resp_with_ext*, align 8
  %4 = alloca %struct.fcp_resp_rsp_info*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.fcp_resp_with_ext*
  store %struct.fcp_resp_with_ext* %11, %struct.fcp_resp_with_ext** %3, align 8
  %12 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %3, align 8
  %13 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %12, i64 1
  %14 = bitcast %struct.fcp_resp_with_ext* %13 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %14, %struct.fcp_resp_rsp_info** %4, align 8
  %15 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %4, align 8
  %16 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FCP_TMF_CMPL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20, %1
  %28 = load i32, i32* @ZFCP_STATUS_FSFREQ_TMFUNCFAILED, align 4
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %30 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
