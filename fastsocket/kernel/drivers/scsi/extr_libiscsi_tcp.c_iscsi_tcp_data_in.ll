; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_data_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iscsi_task = type { i32, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i32, i32 }
%struct.iscsi_data_rsp = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iscsi_nopin = type { i32 }

@ISCSI_FLAG_DATA_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"task->exp_datasn(%d) != rhdr->datasn(%d)\0A\00", align 1
@ISCSI_ERR_DATASN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"data_offset(%d) + data_len(%d) > total_length_in(%d)\0A\00", align 1
@ISCSI_ERR_DATA_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @iscsi_tcp_data_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_tcp_data_in(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_tcp_conn*, align 8
  %7 = alloca %struct.iscsi_tcp_task*, align 8
  %8 = alloca %struct.iscsi_data_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 2
  %13 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %12, align 8
  store %struct.iscsi_tcp_conn* %13, %struct.iscsi_tcp_conn** %6, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 1
  %16 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %15, align 8
  store %struct.iscsi_tcp_task* %16, %struct.iscsi_tcp_task** %7, align 8
  %17 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %18 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.iscsi_data_rsp*
  store %struct.iscsi_data_rsp* %21, %struct.iscsi_data_rsp** %8, align 8
  %22 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %8, align 8
  %23 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be32_to_cpu(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_4__* @scsi_in(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ISCSI_FLAG_DATA_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %2
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %8, align 8
  %44 = bitcast %struct.iscsi_data_rsp* %43 to %struct.iscsi_nopin*
  %45 = call i32 @iscsi_update_cmdsn(i32 %42, %struct.iscsi_nopin* %44)
  br label %46

46:                                               ; preds = %39, %2
  %47 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %106

53:                                               ; preds = %46
  %54 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %55 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %61 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (%struct.iscsi_conn*, i8*, i32, i32, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* @ISCSI_ERR_DATASN, align 4
  store i32 %66, i32* %3, align 4
  br label %106

67:                                               ; preds = %53
  %68 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %69 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.iscsi_data_rsp*, %struct.iscsi_data_rsp** %8, align 8
  %73 = getelementptr inbounds %struct.iscsi_data_rsp, %struct.iscsi_data_rsp* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @be32_to_cpu(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %78 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %80 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add i32 %81, %85
  %87 = load i32, i32* %10, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %67
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %91 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %92 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %6, align 8
  %95 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (%struct.iscsi_conn*, i8*, i32, i32, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %97, i32 %98)
  %100 = load i32, i32* @ISCSI_ERR_DATA_OFFSET, align 4
  store i32 %100, i32* %3, align 4
  br label %106

101:                                              ; preds = %67
  %102 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %103 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %101, %89, %59, %52
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @scsi_in(i32) #1

declare dso_local i32 @iscsi_update_cmdsn(i32, %struct.iscsi_nopin*) #1

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
