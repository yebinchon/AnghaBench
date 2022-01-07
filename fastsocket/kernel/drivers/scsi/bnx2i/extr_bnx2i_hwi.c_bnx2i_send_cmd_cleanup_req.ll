; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_cmd_cleanup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_cmd_cleanup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32 }
%struct.bnx2i_cmd = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.bnx2i_cleanup_request = type { i64, i32, i32 }

@ISCSI_OPCODE_CLEANUP_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_send_cmd_cleanup_req(%struct.bnx2i_hba* %0, %struct.bnx2i_cmd* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.bnx2i_cmd*, align 8
  %5 = alloca %struct.bnx2i_cleanup_request*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.bnx2i_cmd* %1, %struct.bnx2i_cmd** %4, align 8
  %6 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bnx2i_cleanup_request*
  store %struct.bnx2i_cleanup_request* %14, %struct.bnx2i_cleanup_request** %5, align 8
  %15 = load %struct.bnx2i_cleanup_request*, %struct.bnx2i_cleanup_request** %5, align 8
  %16 = call i32 @memset(%struct.bnx2i_cleanup_request* %15, i32 0, i32 16)
  %17 = load i32, i32* @ISCSI_OPCODE_CLEANUP_REQUEST, align 4
  %18 = load %struct.bnx2i_cleanup_request*, %struct.bnx2i_cleanup_request** %5, align 8
  %19 = getelementptr inbounds %struct.bnx2i_cleanup_request, %struct.bnx2i_cleanup_request* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bnx2i_cleanup_request*, %struct.bnx2i_cleanup_request** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2i_cleanup_request, %struct.bnx2i_cleanup_request* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.bnx2i_cleanup_request*, %struct.bnx2i_cleanup_request** %5, align 8
  %27 = getelementptr inbounds %struct.bnx2i_cleanup_request, %struct.bnx2i_cleanup_request* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.TYPE_8__* %30, i32 1)
  ret void
}

declare dso_local i32 @memset(%struct.bnx2i_cleanup_request*, i32, i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
