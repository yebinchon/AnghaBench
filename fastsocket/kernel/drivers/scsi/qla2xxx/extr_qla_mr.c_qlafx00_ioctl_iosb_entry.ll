; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_ioctl_iosb_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_ioctl_iosb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i32 }
%struct.ioctl_iocb_entry_fx00 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 (i32*, %struct.TYPE_18__*, i32)*, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.fc_bsg_job*, %struct.srb_iocb }
%struct.fc_bsg_job = type { i32, %struct.TYPE_17__, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.srb_iocb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, i8*, i8*, i8* }
%struct.qla_mt_iocb_rsp_fx00 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.qlafx00_ioctl_iosb_entry.func = private unnamed_addr constant [10 x i8] c"IOSB_IOCB\00", align 1
@SRB_FXIOCB_DCMD = common dso_local global i64 0, align 8
@SRB_FXDISC_RSP_DWRD_VALID = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i64 0, align 8
@ql_dbg_verbose = common dso_local global i64 0, align 8
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.req_que*, %struct.ioctl_iocb_entry_fx00*)* @qlafx00_ioctl_iosb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_ioctl_iosb_entry(i32* %0, %struct.req_que* %1, %struct.ioctl_iocb_entry_fx00* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.req_que*, align 8
  %6 = alloca %struct.ioctl_iocb_entry_fx00*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.fc_bsg_job*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qla_mt_iocb_rsp_fx00, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  store %struct.ioctl_iocb_entry_fx00* %2, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %14 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.qlafx00_ioctl_iosb_entry.func, i32 0, i32 0), i64 10, i1 false)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %17 = load %struct.req_que*, %struct.req_que** %5, align 8
  %18 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %19 = call %struct.TYPE_18__* @qla2x00_get_sp_from_handle(i32* %15, i8* %16, %struct.req_que* %17, %struct.ioctl_iocb_entry_fx00* %18)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %8, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %182

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SRB_FXIOCB_DCMD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %23
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store %struct.srb_iocb* %32, %struct.srb_iocb** %10, align 8
  %33 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %34 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %38 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  store i8* %36, i8** %40, align 8
  %41 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %42 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %46 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  store i8* %44, i8** %48, align 8
  %49 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %50 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @le32_to_cpu(i32 %51)
  %53 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %54 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  store i8* %52, i8** %56, align 8
  %57 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %58 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SRB_FXDISC_RSP_DWRD_VALID, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %29
  %66 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %67 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @le32_to_cpu(i32 %68)
  %70 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %71 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i8* %69, i8** %73, align 8
  br label %74

74:                                               ; preds = %65, %29
  br label %174

75:                                               ; preds = %23
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %78, align 8
  store %struct.fc_bsg_job* %79, %struct.fc_bsg_job** %9, align 8
  %80 = call i32 @memset(%struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 48)
  %81 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %82 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 10
  store i32 %83, i32* %84, align 4
  %85 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %86 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 9
  store i32 %87, i32* %88, align 8
  %89 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %90 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %94 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 7
  store i32 %95, i32* %96, align 8
  %97 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %98 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 6
  store i32 %99, i32* %100, align 4
  %101 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %102 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 5
  store i32 %103, i32* %104, align 8
  %105 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %106 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  %109 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %110 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 3
  store i32 %111, i32* %112, align 8
  %113 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %114 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 2
  store i32 %115, i32* %116, align 4
  %117 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %118 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 1
  store i32 %119, i32* %120, align 8
  %121 = getelementptr inbounds %struct.qla_mt_iocb_rsp_fx00, %struct.qla_mt_iocb_rsp_fx00* %12, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %124 = getelementptr inbounds %struct.ioctl_iocb_entry_fx00, %struct.ioctl_iocb_entry_fx00* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @memcpy(i32* %122, i32* %125, i32 80)
  %127 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %128 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %127, i32 0, i32 3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32* %133, i32** %13, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = bitcast %struct.qla_mt_iocb_rsp_fx00* %12 to i32*
  %136 = call i32 @memcpy(i32* %134, i32* %135, i32 48)
  %137 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %138 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %137, i32 0, i32 0
  store i32 56, i32* %138, align 8
  %139 = load i64, i64* @ql_dbg_user, align 8
  %140 = load i64, i64* @ql_dbg_verbose, align 8
  %141 = add nsw i64 %139, %140
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ioctl_iocb_entry_fx00*, %struct.ioctl_iocb_entry_fx00** %6, align 8
  %148 = bitcast %struct.ioctl_iocb_entry_fx00* %147 to i32*
  %149 = call i32 @ql_dump_buffer(i64 %141, i32 %146, i32 20608, i32* %148, i32 48)
  %150 = load i64, i64* @ql_dbg_user, align 8
  %151 = load i64, i64* @ql_dbg_verbose, align 8
  %152 = add nsw i64 %150, %151
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = call i32 @ql_dump_buffer(i64 %152, i32 %157, i32 20596, i32* %158, i32 48)
  %160 = load i32, i32* @DID_OK, align 4
  %161 = shl i32 %160, 16
  %162 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %163 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %162, i32 0, i32 2
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 4
  store i32 %161, i32* %11, align 4
  %166 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %167 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %171 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %170, i32 0, i32 2
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %75, %74
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i32 (i32*, %struct.TYPE_18__*, i32)*, i32 (i32*, %struct.TYPE_18__*, i32)** %176, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 %177(i32* %178, %struct.TYPE_18__* %179, i32 %180)
  br label %182

182:                                              ; preds = %174, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @qla2x00_get_sp_from_handle(i32*, i8*, %struct.req_que*, %struct.ioctl_iocb_entry_fx00*) #2

declare dso_local i8* @le32_to_cpu(i32) #2

declare dso_local i32 @memset(%struct.qla_mt_iocb_rsp_fx00*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, i32, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
