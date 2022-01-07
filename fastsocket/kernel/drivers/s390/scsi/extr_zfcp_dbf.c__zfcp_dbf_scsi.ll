; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_scsi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c__zfcp_dbf_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_scsi_record }
%struct.zfcp_dbf_scsi_record = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i8*, i32, i32, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.zfcp_fsf_req = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.zfcp_dbf_dump = type { i32, i32, i32, i32, i32 }
%struct.fcp_resp_with_ext = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.fcp_resp_rsp_info = type { i32 }

@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@ZFCP_DBF_SCSI_OPCODE = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VAL = common dso_local global i32 0, align 4
@FCP_SNS_LEN_VAL = common dso_local global i32 0, align 4
@ZFCP_DBF_SCSI_MAX_FCP_SNS_INFO = common dso_local global i64 0, align 8
@ZFCP_DBF_SCSI_FCP_SNS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dump\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_zfcp_dbf_scsi(i8* %0, i8* %1, i32 %2, %struct.zfcp_dbf* %3, %struct.scsi_cmnd* %4, %struct.zfcp_fsf_req* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zfcp_dbf*, align 8
  %12 = alloca %struct.scsi_cmnd*, align 8
  %13 = alloca %struct.zfcp_fsf_req*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.zfcp_dbf_scsi_record*, align 8
  %16 = alloca %struct.zfcp_dbf_dump*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.fcp_resp_with_ext*, align 8
  %19 = alloca %struct.fcp_resp_rsp_info*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.zfcp_dbf* %3, %struct.zfcp_dbf** %11, align 8
  store %struct.scsi_cmnd* %4, %struct.scsi_cmnd** %12, align 8
  store %struct.zfcp_fsf_req* %5, %struct.zfcp_fsf_req** %13, align 8
  store i64 %6, i64* %14, align 8
  %23 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %23, i32 0, i32 2
  store %struct.zfcp_dbf_scsi_record* %24, %struct.zfcp_dbf_scsi_record** %15, align 8
  %25 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %26 = bitcast %struct.zfcp_dbf_scsi_record* %25 to %struct.zfcp_dbf_dump*
  store %struct.zfcp_dbf_dump* %26, %struct.zfcp_dbf_dump** %16, align 8
  store %struct.fcp_resp_rsp_info* null, %struct.fcp_resp_rsp_info** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %27 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %28 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %27, i32 0, i32 0
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %266, %7
  %32 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %33 = call i32 @memset(%struct.zfcp_dbf_scsi_record* %32, i32 0, i32 88)
  %34 = load i32, i32* %21, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %225

36:                                               ; preds = %31
  %37 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %38 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %42 = call i32 @strncpy(i32 %39, i8* %40, i32 %41)
  %43 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %44 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %48 = call i32 @strncpy(i32 %45, i8* %46, i32 %47)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %50 = icmp ne %struct.scsi_cmnd* %49, null
  br i1 %50, label %51, label %109

51:                                               ; preds = %36
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 6
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 6
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %63 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %62, i32 0, i32 17
  store i32 %61, i32* %63, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 6
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %69, i32 0, i32 16
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %56, %51
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %76 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %75, i32 0, i32 15
  store i32 %74, i32* %76, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %78 = ptrtoint %struct.scsi_cmnd* %77 to i64
  %79 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %80 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %85 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %84, i32 0, i32 14
  store i32 %83, i32* %85, align 8
  %86 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %87 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %86, i32 0, i32 13
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @ZFCP_DBF_SCSI_OPCODE, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  %98 = call i32 @memcpy(i32 %88, i8* %91, i32 %97)
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %103 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %108 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %71, %36
  %110 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %13, align 8
  %111 = icmp ne %struct.zfcp_fsf_req* %110, null
  br i1 %111, label %112, label %221

112:                                              ; preds = %109
  %113 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %13, align 8
  %114 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = bitcast i32* %118 to %struct.fcp_resp_with_ext*
  store %struct.fcp_resp_with_ext* %119, %struct.fcp_resp_with_ext** %18, align 8
  %120 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %121 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %120, i64 1
  %122 = bitcast %struct.fcp_resp_with_ext* %121 to %struct.fcp_resp_rsp_info*
  store %struct.fcp_resp_rsp_info* %122, %struct.fcp_resp_rsp_info** %19, align 8
  %123 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %124 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %123, i64 1
  %125 = bitcast %struct.fcp_resp_with_ext* %124 to i8*
  store i8* %125, i8** %20, align 8
  %126 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %127 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %112
  %134 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %135 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %20, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %20, align 8
  br label %141

141:                                              ; preds = %133, %112
  %142 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %143 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %147 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %149 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %153 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %152, i32 0, i32 10
  store i32 %151, i32* %153, align 8
  %154 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %155 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %159 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %158, i32 0, i32 9
  store i32 %157, i32* %159, align 4
  %160 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %161 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @FCP_RSP_LEN_VAL, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %141
  %168 = load %struct.fcp_resp_rsp_info*, %struct.fcp_resp_rsp_info** %19, align 8
  %169 = getelementptr inbounds %struct.fcp_resp_rsp_info, %struct.fcp_resp_rsp_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %172 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %171, i32 0, i32 8
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %167, %141
  %174 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %175 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @FCP_SNS_LEN_VAL, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %173
  %182 = load %struct.fcp_resp_with_ext*, %struct.fcp_resp_with_ext** %18, align 8
  %183 = getelementptr inbounds %struct.fcp_resp_with_ext, %struct.fcp_resp_with_ext* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* @ZFCP_DBF_SCSI_MAX_FCP_SNS_INFO, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @min(i32 %185, i32 %187)
  store i32 %188, i32* %22, align 4
  %189 = load i32, i32* %22, align 4
  %190 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %191 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %193 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %20, align 8
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* @ZFCP_DBF_SCSI_FCP_SNS_INFO, align 4
  %198 = call i32 @min(i32 %196, i32 %197)
  %199 = call i32 @memcpy(i32 %194, i8* %195, i32 %198)
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* @ZFCP_DBF_SCSI_FCP_SNS_INFO, align 4
  %202 = call i32 @min(i32 %200, i32 %201)
  %203 = load i32, i32* %21, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %21, align 4
  br label %205

205:                                              ; preds = %181, %173
  %206 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %13, align 8
  %207 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %210 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  %211 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %13, align 8
  %212 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %215 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 4
  %216 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %13, align 8
  %217 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %220 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %205, %109
  %222 = load i64, i64* %14, align 8
  %223 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %224 = getelementptr inbounds %struct.zfcp_dbf_scsi_record, %struct.zfcp_dbf_scsi_record* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  br label %259

225:                                              ; preds = %31
  %226 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %227 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %230 = call i32 @strncpy(i32 %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %22, align 4
  %232 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %233 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %21, align 4
  %235 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %236 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %235, i32 0, i32 1
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* %21, align 4
  %239 = sub nsw i32 %237, %238
  %240 = call i32 @min(i32 %239, i32 68)
  %241 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %242 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %244 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load i8*, i8** %20, align 8
  %247 = load i32, i32* %21, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %251 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @memcpy(i32 %245, i8* %249, i32 %252)
  %254 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %16, align 8
  %255 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %21, align 4
  %258 = add nsw i32 %257, %256
  store i32 %258, i32* %21, align 4
  br label %259

259:                                              ; preds = %225, %221
  %260 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %261 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.zfcp_dbf_scsi_record*, %struct.zfcp_dbf_scsi_record** %15, align 8
  %265 = call i32 @debug_event(i32 %262, i32 %263, %struct.zfcp_dbf_scsi_record* %264, i32 88)
  br label %266

266:                                              ; preds = %259
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %22, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %31, label %270

270:                                              ; preds = %266
  %271 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %11, align 8
  %272 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %271, i32 0, i32 0
  %273 = load i64, i64* %17, align 8
  %274 = call i32 @spin_unlock_irqrestore(i32* %272, i64 %273)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_scsi_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_scsi_record*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
