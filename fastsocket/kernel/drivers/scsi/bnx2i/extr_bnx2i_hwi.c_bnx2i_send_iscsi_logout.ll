; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_logout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_task = type { i64, i64, i64 }
%struct.bnx2i_cmd = type { i32 }
%struct.bnx2i_logout_request = type { i32, i32, i32, i64, i8*, i8*, i64, i64, i32, i32 }
%struct.iscsi_logout = type { i32, i32, i32 }

@ISCSI_LOGOUT_REQUEST_ALWAYS_ONE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@EP_STATE_LOGOUT_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_logout(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_cmd*, align 8
  %6 = alloca %struct.bnx2i_logout_request*, align 8
  %7 = alloca %struct.iscsi_logout*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bnx2i_cmd*
  store %struct.bnx2i_cmd* %11, %struct.bnx2i_cmd** %5, align 8
  %12 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iscsi_logout*
  store %struct.iscsi_logout* %15, %struct.iscsi_logout** %7, align 8
  %16 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.bnx2i_logout_request*
  store %struct.bnx2i_logout_request* %22, %struct.bnx2i_logout_request** %6, align 8
  %23 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %24 = call i32 @memset(%struct.bnx2i_logout_request* %23, i32 0, i32 64)
  %25 = load %struct.iscsi_logout*, %struct.iscsi_logout** %7, align 8
  %26 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 4
  %30 = load %struct.iscsi_logout*, %struct.iscsi_logout** %7, align 8
  %31 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iscsi_logout*, %struct.iscsi_logout** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ISCSI_LOGOUT_REQUEST_ALWAYS_ONE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %42 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %48 = load i32, i32* @ISCSI_LOGOUT_REQUEST_TYPE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %46, %49
  %51 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %52 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %54 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %58 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %64 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = ashr i32 %70, 32
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %77 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @EP_STATE_LOGOUT_SENT, align 4
  %81 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %82 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %86 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %85, i32 1)
  ret i32 0
}

declare dso_local i32 @memset(%struct.bnx2i_logout_request*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
