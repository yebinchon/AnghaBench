; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_hba_fsf_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_hba_fsf_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, i64, i64, i32*, %struct.TYPE_18__, i32, i32, i32, %struct.fsf_qtcb* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.fsf_qtcb = type { %struct.TYPE_15__, %struct.TYPE_24__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %union.fsf_status_qual }
%union.fsf_status_qual = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, %union.fsf_status_qual }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba_record }
%struct.zfcp_dbf_hba_record = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.zfcp_dbf_hba_record_response }
%struct.zfcp_dbf_hba_record_response = type { i32, i32, i64, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_19__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }
%union.fsf_prot_status_qual = type opaque
%struct.scsi_cmnd = type { i32 }
%struct.zfcp_port = type { i32, i32 }
%struct.zfcp_unit = type { i32, %struct.zfcp_port* }
%struct.zfcp_send_els = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"resp\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@FSF_PROT_STATUS_QUAL_SIZE = common dso_local global i32 0, align 4
@FSF_STATUS_QUALIFIER_SIZE = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zfcp_dbf_hba_fsf_response(i8* %0, i32 %1, %struct.zfcp_fsf_req* %2, %struct.zfcp_dbf* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca %struct.zfcp_dbf*, align 8
  %9 = alloca %struct.fsf_qtcb*, align 8
  %10 = alloca %union.fsf_prot_status_qual*, align 8
  %11 = alloca %union.fsf_status_qual*, align 8
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.zfcp_port*, align 8
  %14 = alloca %struct.zfcp_unit*, align 8
  %15 = alloca %struct.zfcp_send_els*, align 8
  %16 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %17 = alloca %struct.zfcp_dbf_hba_record_response*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.zfcp_fsf_req* %2, %struct.zfcp_fsf_req** %7, align 8
  store %struct.zfcp_dbf* %3, %struct.zfcp_dbf** %8, align 8
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 9
  %23 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %22, align 8
  store %struct.fsf_qtcb* %23, %struct.fsf_qtcb** %9, align 8
  %24 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %25 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = bitcast %union.fsf_status_qual* %26 to %union.fsf_prot_status_qual*
  store %union.fsf_prot_status_qual* %27, %union.fsf_prot_status_qual** %10, align 8
  %28 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %29 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  store %union.fsf_status_qual* %30, %union.fsf_status_qual** %11, align 8
  %31 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %32 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %31, i32 0, i32 2
  store %struct.zfcp_dbf_hba_record* %32, %struct.zfcp_dbf_hba_record** %16, align 8
  %33 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %34 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  store %struct.zfcp_dbf_hba_record_response* %35, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %36 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %37 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %36, i32 0, i32 0
  %38 = load i64, i64* %18, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %41 = call i32 @memset(%struct.zfcp_dbf_hba_record* %40, i32 0, i32 128)
  %42 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %46 = call i32 @strncpy(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %48 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %52 = call i32 @strncpy(i32 %49, i8* %50, i32 %51)
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %57 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %59 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %62 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %61, i32 0, i32 14
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %67 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 4
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %72 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %74 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %78 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 4
  %79 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %80 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %84 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %86 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = load %union.fsf_prot_status_qual*, %union.fsf_prot_status_qual** %10, align 8
  %89 = bitcast %union.fsf_prot_status_qual* %88 to %union.fsf_status_qual*
  %90 = load i32, i32* @FSF_PROT_STATUS_QUAL_SIZE, align 4
  %91 = call i32 @memcpy(i32 %87, %union.fsf_status_qual* %89, i32 %90)
  %92 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %93 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %union.fsf_status_qual*, %union.fsf_status_qual** %11, align 8
  %96 = load i32, i32* @FSF_STATUS_QUALIFIER_SIZE, align 4
  %97 = call i32 @memcpy(i32 %94, %union.fsf_status_qual* %95, i32 %96)
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %102 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %104 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %108 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %110 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %114 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %116 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %120 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %122 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  %125 = zext i1 %124 to i32
  %126 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %127 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %129 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %132 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %134 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %263 [
    i32 133, label %136
    i32 131, label %175
    i32 137, label %175
    i32 138, label %175
    i32 132, label %202
    i32 139, label %202
    i32 130, label %240
    i32 140, label %262
    i32 129, label %262
    i32 135, label %262
    i32 134, label %262
    i32 136, label %262
    i32 128, label %262
  ]

136:                                              ; preds = %4
  %137 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %138 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %263

144:                                              ; preds = %136
  %145 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %146 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %148, %struct.scsi_cmnd** %12, align 8
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %150 = icmp ne %struct.scsi_cmnd* %149, null
  br i1 %150, label %151, label %174

151:                                              ; preds = %144
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %153 = ptrtoint %struct.scsi_cmnd* %152 to i64
  %154 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %155 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i64 %153, i64* %157, align 8
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %162 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 4
  %165 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %166 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %171 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 1
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %151, %144
  br label %263

175:                                              ; preds = %4, %4, %4
  %176 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %177 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.zfcp_port*
  store %struct.zfcp_port* %179, %struct.zfcp_port** %13, align 8
  %180 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  %181 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %184 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  store i32 %182, i32* %186, align 8
  %187 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  %188 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %191 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 1
  store i32 %189, i32* %193, align 4
  %194 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %195 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %199 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 0
  store i32 %197, i32* %201, align 8
  br label %263

202:                                              ; preds = %4, %4
  %203 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %204 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to %struct.zfcp_unit*
  store %struct.zfcp_unit* %206, %struct.zfcp_unit** %14, align 8
  %207 = load %struct.zfcp_unit*, %struct.zfcp_unit** %14, align 8
  %208 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %207, i32 0, i32 1
  %209 = load %struct.zfcp_port*, %struct.zfcp_port** %208, align 8
  store %struct.zfcp_port* %209, %struct.zfcp_port** %13, align 8
  %210 = load %struct.zfcp_port*, %struct.zfcp_port** %13, align 8
  %211 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %214 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 3
  store i32 %212, i32* %216, align 4
  %217 = load %struct.zfcp_unit*, %struct.zfcp_unit** %14, align 8
  %218 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %221 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 2
  store i32 %219, i32* %223, align 8
  %224 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %225 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %229 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 1
  store i32 %227, i32* %231, align 4
  %232 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %233 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %237 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 0
  store i32 %235, i32* %239, align 8
  br label %263

240:                                              ; preds = %4
  %241 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %242 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to %struct.zfcp_send_els*
  store %struct.zfcp_send_els* %244, %struct.zfcp_send_els** %15, align 8
  %245 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %246 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %251 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %15, align 8
  %255 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = ashr i32 %256, 24
  %258 = load %struct.zfcp_dbf_hba_record_response*, %struct.zfcp_dbf_hba_record_response** %17, align 8
  %259 = getelementptr inbounds %struct.zfcp_dbf_hba_record_response, %struct.zfcp_dbf_hba_record_response* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  store i32 %257, i32* %261, align 8
  br label %263

262:                                              ; preds = %4, %4, %4, %4, %4, %4
  br label %263

263:                                              ; preds = %4, %262, %240, %202, %175, %174, %143
  %264 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %265 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %6, align 4
  %268 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %269 = call i32 @debug_event(i32 %266, i32 %267, %struct.zfcp_dbf_hba_record* %268, i32 128)
  %270 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %271 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 133
  br i1 %273, label %274, label %314

274:                                              ; preds = %263
  %275 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %276 = bitcast %struct.fsf_qtcb* %275 to i8*
  %277 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %278 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %276, i64 %281
  store i8* %282, i8** %19, align 8
  %283 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %9, align 8
  %284 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %20, align 4
  br label %287

287:                                              ; preds = %302, %274
  %288 = load i32, i32* %20, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %287
  %291 = load i8*, i8** %19, align 8
  %292 = load i32, i32* %20, align 4
  %293 = sub nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %291, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = icmp ne i8 %296, 0
  %298 = xor i1 %297, true
  br label %299

299:                                              ; preds = %290, %287
  %300 = phi i1 [ false, %287 ], [ %298, %290 ]
  br i1 %300, label %301, label %305

301:                                              ; preds = %299
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %20, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %20, align 4
  br label %287

305:                                              ; preds = %299
  %306 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %307 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %16, align 8
  %310 = load i32, i32* %6, align 4
  %311 = load i8*, i8** %19, align 8
  %312 = load i32, i32* %20, align 4
  %313 = call i32 @zfcp_dbf_hexdump(i32 %308, %struct.zfcp_dbf_hba_record* %309, i32 128, i32 %310, i8* %311, i32 %312)
  br label %314

314:                                              ; preds = %305, %263
  %315 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %316 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %315, i32 0, i32 0
  %317 = load i64, i64* %18, align 8
  %318 = call i32 @spin_unlock_irqrestore(i32* %316, i64 %317)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, %union.fsf_status_qual*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba_record*, i32) #1

declare dso_local i32 @zfcp_dbf_hexdump(i32, %struct.zfcp_dbf_hba_record*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
