; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_login_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_login_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64*, i64*, i32 }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2i_login_response = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_login_rsp = type { i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_LOGIN_RESPONSE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_login_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_process_login_resp(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.bnx2i_login_response*, align 8
  %10 = alloca %struct.iscsi_login_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %14 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %7, align 8
  %19 = load %struct.cqe*, %struct.cqe** %6, align 8
  %20 = bitcast %struct.cqe* %19 to %struct.bnx2i_login_response*
  store %struct.bnx2i_login_response* %20, %struct.bnx2i_login_response** %9, align 8
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %25 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %26 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISCSI_LOGIN_RESPONSE_INDEX, align 4
  %29 = and i32 %27, %28
  %30 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %24, i32 %29)
  store %struct.iscsi_task* %30, %struct.iscsi_task** %8, align 8
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %32 = icmp ne %struct.iscsi_task* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %182

34:                                               ; preds = %3
  %35 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = bitcast i32* %37 to %struct.iscsi_login_rsp*
  store %struct.iscsi_login_rsp* %38, %struct.iscsi_login_rsp** %10, align 8
  %39 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %40 = call i32 @memset(%struct.iscsi_login_rsp* %39, i32 0, i32 4)
  %41 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %42 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %41, i32 0, i32 12
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %45 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %47 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %52 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %55 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %57 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %60 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %62 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %61, i32 0, i32 9
  store i64 0, i64* %62, align 8
  %63 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %64 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %67 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @hton24(i32 %65, i32 %68)
  %70 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %71 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %74 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %73, i32 0, i32 8
  %75 = call i32 @memcpy(i32 %72, i32* %74, i32 6)
  %76 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %77 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_be16(i32 %78)
  %80 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %81 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 4
  %82 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %83 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %88 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %90 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @cpu_to_be32(i32 %91)
  %93 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %94 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %96 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @cpu_to_be32(i32 %97)
  %99 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %100 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %99, i32 0, i32 3
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %102 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @cpu_to_be32(i32 %103)
  %105 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %106 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %108 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %111 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %113 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %116 = getelementptr inbounds %struct.iscsi_login_rsp, %struct.iscsi_login_rsp* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.bnx2i_login_response*, %struct.bnx2i_login_response** %9, align 8
  %118 = getelementptr inbounds %struct.bnx2i_login_response, %struct.bnx2i_login_response* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %11, align 4
  %120 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %121 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %128 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i64* %126, i64** %129, align 8
  store i32 0, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 3
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %34
  %134 = load i32, i32* %11, align 4
  %135 = srem i32 %134, 4
  %136 = sub nsw i32 4, %135
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %133, %34
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %156, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %141
  %146 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %147 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  store i64 0, i64* %150, align 8
  %151 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %152 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i32 1
  store i64* %155, i64** %153, align 8
  br label %156

156:                                              ; preds = %145
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %13, align 4
  br label %141

159:                                              ; preds = %141
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %162 = load %struct.iscsi_login_rsp*, %struct.iscsi_login_rsp** %10, align 8
  %163 = bitcast %struct.iscsi_login_rsp* %162 to %struct.iscsi_hdr*
  %164 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %165 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64*, i64** %166, align 8
  %168 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %169 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %173 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64*, i64** %174, align 8
  %176 = ptrtoint i64* %171 to i64
  %177 = ptrtoint i64* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 8
  %180 = inttoptr i64 %179 to i64*
  %181 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %161, %struct.iscsi_hdr* %163, i64* %167, i64* %180)
  br label %182

182:                                              ; preds = %160, %33
  %183 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %184 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %183, i32 0, i32 0
  %185 = call i32 @spin_unlock(i32* %184)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @memset(%struct.iscsi_login_rsp*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i64*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
