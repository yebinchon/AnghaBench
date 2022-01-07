; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_login.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.bnx2i_cmd = type { i32 }
%struct.bnx2i_login_request = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.iscsi_login = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_UPDATE_EXP_STAT_SN = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_NUM_RESP_BDS_SHIFT = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_RESP_BUFFER_LENGTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_login(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_cmd*, align 8
  %6 = alloca %struct.bnx2i_login_request*, align 8
  %7 = alloca %struct.iscsi_login*, align 8
  %8 = alloca i8*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %9 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.bnx2i_cmd*
  store %struct.bnx2i_cmd* %12, %struct.bnx2i_cmd** %5, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.iscsi_login*
  store %struct.iscsi_login* %16, %struct.iscsi_login** %7, align 8
  %17 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bnx2i_login_request*
  store %struct.bnx2i_login_request* %23, %struct.bnx2i_login_request** %6, align 8
  %24 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %25 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %27, i32 0, i32 19
  store i32 %26, i32* %28, align 8
  %29 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %30 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %32, i32 0, i32 18
  store i32 %31, i32* %33, align 4
  %34 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 8
  %39 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %40 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %43 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %42, i32 0, i32 16
  store i32 %41, i32* %43, align 4
  %44 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %45 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ntoh24(i32 %46)
  %48 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 8
  %50 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %51 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %55, i32 0, i32 14
  store i8* %54, i8** %56, align 8
  %57 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %58 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %64 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %66 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %68, i32 0, i32 12
  store i32 %67, i32* %69, align 4
  %70 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %74 = load i32, i32* @ISCSI_LOGIN_REQUEST_TYPE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %78 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %80 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %83 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %82, i32 0, i32 11
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %85 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @be32_to_cpu(i32 %86)
  %88 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %89 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = load %struct.iscsi_login*, %struct.iscsi_login** %7, align 8
  %91 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i8* @be32_to_cpu(i32 %92)
  %94 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %95 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %94, i32 0, i32 9
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @ISCSI_LOGIN_REQUEST_UPDATE_EXP_STAT_SN, align 4
  %97 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %98 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %97, i32 0, i32 8
  store i32 %96, i32* %98, align 8
  %99 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %100 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %105 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %107 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = ashr i32 %110, 32
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %115 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load i32, i32* @ISCSI_LOGIN_REQUEST_NUM_RESP_BDS_SHIFT, align 4
  %117 = shl i32 1, %116
  %118 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %119 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ISCSI_LOGIN_REQUEST_RESP_BUFFER_LENGTH_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = or i32 %117, %123
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %8, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %129 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %131 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %136 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %138 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = ashr i32 %141, 32
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %146 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %145, i32 0, i32 3
  store i8* %144, i8** %146, align 8
  %147 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %148 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %147, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %6, align 8
  %150 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %152 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %151, i32 1)
  ret i32 0
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
