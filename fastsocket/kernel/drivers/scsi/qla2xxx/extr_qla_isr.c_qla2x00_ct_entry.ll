; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_ct_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_ct_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 (i32*, %struct.TYPE_18__*, i32)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.fc_bsg_job* }
%struct.fc_bsg_job = type { i32, %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@__const.qla2x00_ct_entry.func = private unnamed_addr constant [8 x i8] c"CT_IOCB\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"ct pass-through\00", align 1
@FC_CTELS_STATUS_OK = common dso_local global i32 0, align 4
@CS_COMPLETE = common dso_local global i64 0, align 8
@CS_DATA_UNDERRUN = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"CT pass-through-%s error comp_status-status=0x%x total_byte = 0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"CT pass-through-%s error comp_status-status=0x%x.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.TYPE_17__*, i32)* @qla2x00_ct_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_ct_entry(i32* %0, %struct.req_que* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_que*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.fc_bsg_job*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.req_que* %1, %struct.req_que** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = bitcast [8 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.qla2x00_ct_entry.func, i32 0, i32 0), i64 8, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %18 = load %struct.req_que*, %struct.req_que** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = call %struct.TYPE_18__* @qla2x00_get_sp_from_handle(i32* %16, i8* %17, %struct.req_que* %18, %struct.TYPE_17__* %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %11, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %112

24:                                               ; preds = %4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %27, align 8
  store %struct.fc_bsg_job* %28, %struct.fc_bsg_job** %12, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* @FC_CTELS_STATUS_OK, align 4
  %35 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %36 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %34, i32* %40, align 8
  %41 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @CS_COMPLETE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %24
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @CS_DATA_UNDERRUN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load i32, i32* @DID_OK, align 4
  %52 = shl i32 %51, 16
  store i32 %52, i32* %14, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @le16_to_cpu(i32 %55)
  %57 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %58 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %57, i32 0, i32 2
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i8* %56, i8** %60, align 8
  %61 = load i32, i32* @ql_log_warn, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %66 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %65, i32 0, i32 2
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i32*, i32, i8*, i8*, i64, ...) @ql_log(i32 %61, i32* %62, i32 20552, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %63, i64 %64, i8* %69)
  br label %83

71:                                               ; preds = %46
  %72 = load i32, i32* @ql_log_warn, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 (i32, i32*, i32, i8*, i8*, i64, ...) @ql_log(i32 %72, i32* %73, i32 20553, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %74, i64 %75)
  %77 = load i32, i32* @DID_ERROR, align 4
  %78 = shl i32 %77, 16
  store i32 %78, i32* %14, align 4
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %80 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %71, %50
  %84 = load i64, i64* @ql_dbg_async, align 8
  %85 = load i64, i64* @ql_dbg_buffer, align 8
  %86 = add nsw i64 %84, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = bitcast %struct.TYPE_17__* %88 to i32*
  %90 = call i32 @ql_dump_buffer(i64 %86, i32* %87, i32 20533, i32* %89, i32 8)
  br label %104

91:                                               ; preds = %24
  %92 = load i32, i32* @DID_OK, align 4
  %93 = shl i32 %92, 16
  store i32 %93, i32* %14, align 4
  %94 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %99 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %98, i32 0, i32 2
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i8* %97, i8** %101, align 8
  %102 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %12, align 8
  %103 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %102, i32 0, i32 0
  store i32 0, i32* %103, align 8
  br label %104

104:                                              ; preds = %91, %83
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32 (i32*, %struct.TYPE_18__*, i32)*, i32 (i32*, %struct.TYPE_18__*, i32)** %106, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 %107(i32* %108, %struct.TYPE_18__* %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.TYPE_17__*) #2

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, i8*, i64, ...) #2

declare dso_local i32 @ql_dump_buffer(i64, i32*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
