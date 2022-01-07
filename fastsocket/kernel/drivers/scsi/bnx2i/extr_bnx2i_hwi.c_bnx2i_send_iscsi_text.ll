; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_text.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_task = type { i32, i64, i64 }
%struct.bnx2i_cmd = type { i32 }
%struct.bnx2i_text_request = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.iscsi_text = type { i32, i32, i32, i32, i32 }

@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_NUM_RESP_BDS_SHIFT = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_RESP_BUFFER_LENGTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_text(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_cmd*, align 8
  %6 = alloca %struct.bnx2i_text_request*, align 8
  %7 = alloca %struct.iscsi_text*, align 8
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
  %16 = inttoptr i64 %15 to %struct.iscsi_text*
  store %struct.iscsi_text* %16, %struct.iscsi_text** %7, align 8
  %17 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bnx2i_text_request*
  store %struct.bnx2i_text_request* %23, %struct.bnx2i_text_request** %6, align 8
  %24 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %25 = call i32 @memset(%struct.bnx2i_text_request* %24, i32 0, i32 88)
  %26 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %27 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %32 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %35 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %37 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntoh24(i32 %38)
  %40 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 8
  %42 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %46 = load i32, i32* @ISCSI_TEXT_REQUEST_TYPE_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %50 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %52 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @be32_to_cpu(i32 %53)
  %55 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.iscsi_text*, %struct.iscsi_text** %7, align 8
  %58 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @be32_to_cpu(i32 %59)
  %61 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %62 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %61, i32 0, i32 8
  store i8* %60, i8** %62, align 8
  %63 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %69 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = ashr i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @ISCSI_TEXT_REQUEST_NUM_RESP_BDS_SHIFT, align 4
  %81 = shl i32 1, %80
  %82 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ISCSI_TEXT_REQUEST_RESP_BUFFER_LENGTH_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %81, %87
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %93 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %100 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %102 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = ashr i32 %105, 32
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %110 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %112 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %6, align 8
  %114 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %116 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %115, i32 1)
  ret i32 0
}

declare dso_local i32 @memset(%struct.bnx2i_text_request*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
