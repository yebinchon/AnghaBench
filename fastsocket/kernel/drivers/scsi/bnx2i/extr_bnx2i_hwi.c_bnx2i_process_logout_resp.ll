; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_logout_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_logout_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bnx2i_logout_response = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_logout_rsp = type { i8*, i8*, i8*, i8*, i32, i32, i64, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_LOGOUT_RESPONSE_INDEX = common dso_local global i32 0, align 4
@EP_STATE_LOGOUT_RESP_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_logout_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_process_logout_resp(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.bnx2i_logout_response*, align 8
  %10 = alloca %struct.iscsi_logout_rsp*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %7, align 8
  %16 = load %struct.cqe*, %struct.cqe** %6, align 8
  %17 = bitcast %struct.cqe* %16 to %struct.bnx2i_logout_response*
  store %struct.bnx2i_logout_response* %17, %struct.bnx2i_logout_response** %9, align 8
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %22 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %23 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISCSI_LOGOUT_RESPONSE_INDEX, align 4
  %26 = and i32 %24, %25
  %27 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %21, i32 %26)
  store %struct.iscsi_task* %27, %struct.iscsi_task** %8, align 8
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %29 = icmp ne %struct.iscsi_task* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %97

31:                                               ; preds = %3
  %32 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.iscsi_logout_rsp*
  store %struct.iscsi_logout_rsp* %35, %struct.iscsi_logout_rsp** %10, align 8
  %36 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %37 = call i32 @memset(%struct.iscsi_logout_rsp* %36, i32 0, i32 4)
  %38 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %39 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %42 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %44 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %47 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %49 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %51 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %56 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %58 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %63 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %65 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %69 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %71 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %75 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %77 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %81 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.bnx2i_logout_response*, %struct.bnx2i_logout_response** %9, align 8
  %83 = getelementptr inbounds %struct.bnx2i_logout_response, %struct.bnx2i_logout_response* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %87 = getelementptr inbounds %struct.iscsi_logout_rsp, %struct.iscsi_logout_rsp* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %89 = load %struct.iscsi_logout_rsp*, %struct.iscsi_logout_rsp** %10, align 8
  %90 = bitcast %struct.iscsi_logout_rsp* %89 to %struct.iscsi_hdr*
  %91 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %88, %struct.iscsi_hdr* %90, i32* null, i32 0)
  %92 = load i32, i32* @EP_STATE_LOGOUT_RESP_RCVD, align 4
  %93 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %94 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %31, %30
  %98 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %99 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @memset(%struct.iscsi_logout_rsp*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
