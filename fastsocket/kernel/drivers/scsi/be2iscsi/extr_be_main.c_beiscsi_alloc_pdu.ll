; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_pdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i64, %struct.iscsi_hdr*, i64, %struct.iscsi_conn*, %struct.beiscsi_io_task* }
%struct.iscsi_hdr = type { i32 }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, i32, %struct.TYPE_13__*, %struct.sgl_handle*, %struct.iscsi_task*, %struct.beiscsi_session*, %struct.beiscsi_hba* }
%struct.TYPE_13__ = type { %struct.iscsi_task*, i64 }
%struct.sgl_handle = type { i64 }
%struct.beiscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.hwi_controller*, i32, i32 }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.beiscsi_io_task = type { %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_13__*, %struct.sgl_handle*, i32*, %struct.beiscsi_conn*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"BM_%d : Alloc of IO_SGL_ICD Failedfor the CID : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"BM_%d : Alloc of WRB_HANDLE Failedfor the CID : %d\0A\00", align 1
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_LOGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"BM_%d : Alloc of MGMT_SGL_ICD Failedfor the CID : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @beiscsi_alloc_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_alloc_pdu(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_io_task*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.beiscsi_conn*, align 8
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca %struct.hwi_wrb_context*, align 8
  %11 = alloca %struct.hwi_controller*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.beiscsi_session*, align 8
  %15 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 5
  %18 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %17, align 8
  store %struct.beiscsi_io_task* %18, %struct.beiscsi_io_task** %6, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %20, align 8
  store %struct.iscsi_conn* %21, %struct.iscsi_conn** %7, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 0
  %24 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %23, align 8
  store %struct.beiscsi_conn* %24, %struct.beiscsi_conn** %8, align 8
  %25 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %26 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %25, i32 0, i32 6
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %26, align 8
  store %struct.beiscsi_hba* %27, %struct.beiscsi_hba** %9, align 8
  store i64 0, i64* %13, align 8
  %28 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %29 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %28, i32 0, i32 5
  %30 = load %struct.beiscsi_session*, %struct.beiscsi_session** %29, align 8
  store %struct.beiscsi_session* %30, %struct.beiscsi_session** %14, align 8
  %31 = load %struct.beiscsi_session*, %struct.beiscsi_session** %14, align 8
  %32 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.TYPE_12__* @pci_pool_alloc(i32 %33, i32 %34, i32* %15)
  %36 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %37 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %36, i32 0, i32 0
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %37, align 8
  %38 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %39 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %364

45:                                               ; preds = %2
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %48 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %57 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  %58 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %59 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %60 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %59, i32 0, i32 5
  store %struct.beiscsi_conn* %58, %struct.beiscsi_conn** %60, align 8
  %61 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %62 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = bitcast %struct.TYPE_11__* %64 to %struct.iscsi_hdr*
  %66 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %66, i32 0, i32 2
  store %struct.iscsi_hdr* %65, %struct.iscsi_hdr** %67, align 8
  %68 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %71 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %70, i32 0, i32 3
  store %struct.sgl_handle* null, %struct.sgl_handle** %71, align 8
  %72 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %73 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %72, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %73, align 8
  %74 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %127

78:                                               ; preds = %45
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 2
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %83 = call %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba* %82)
  %84 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %85 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %84, i32 0, i32 3
  store %struct.sgl_handle* %83, %struct.sgl_handle** %85, align 8
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %87 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %90 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %89, i32 0, i32 3
  %91 = load %struct.sgl_handle*, %struct.sgl_handle** %90, align 8
  %92 = icmp ne %struct.sgl_handle* %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %78
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %97 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %100 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %98, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %320

103:                                              ; preds = %78
  %104 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %105 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %106 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %104, i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_13__*
  %110 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %111 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %110, i32 0, i32 2
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %111, align 8
  %112 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %113 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %112, i32 0, i32 2
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = icmp ne %struct.TYPE_13__* %114, null
  br i1 %115, label %126, label %116

116:                                              ; preds = %103
  %117 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %118 = load i32, i32* @KERN_ERR, align 4
  %119 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %120 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %123 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @beiscsi_log(%struct.beiscsi_hba* %117, i32 %118, i32 %121, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %294

126:                                              ; preds = %103
  br label %266

127:                                              ; preds = %45
  %128 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %129 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %128, i32 0, i32 4
  store i32* null, i32** %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @ISCSI_OP_LOGIN, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %216

135:                                              ; preds = %127
  %136 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %137 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %138 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %137, i32 0, i32 4
  store %struct.iscsi_task* %136, %struct.iscsi_task** %138, align 8
  %139 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %140 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %204, label %143

143:                                              ; preds = %135
  %144 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %145 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %144, i32 0, i32 1
  %146 = call i32 @spin_lock(i32* %145)
  %147 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %148 = call %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %147)
  %149 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %150 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %149, i32 0, i32 3
  store %struct.sgl_handle* %148, %struct.sgl_handle** %150, align 8
  %151 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %152 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %151, i32 0, i32 1
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %155 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %154, i32 0, i32 3
  %156 = load %struct.sgl_handle*, %struct.sgl_handle** %155, align 8
  %157 = icmp ne %struct.sgl_handle* %156, null
  br i1 %157, label %168, label %158

158:                                              ; preds = %143
  %159 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %160 = load i32, i32* @KERN_ERR, align 4
  %161 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %162 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %165 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @beiscsi_log(%struct.beiscsi_hba* %159, i32 %160, i32 %163, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %320

168:                                              ; preds = %143
  %169 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %170 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %172 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %171, i32 0, i32 3
  %173 = load %struct.sgl_handle*, %struct.sgl_handle** %172, align 8
  %174 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %175 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %174, i32 0, i32 3
  store %struct.sgl_handle* %173, %struct.sgl_handle** %175, align 8
  %176 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %177 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %178 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %176, i32 %179)
  %181 = bitcast i8* %180 to %struct.TYPE_13__*
  %182 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %183 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %182, i32 0, i32 2
  store %struct.TYPE_13__* %181, %struct.TYPE_13__** %183, align 8
  %184 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %185 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %184, i32 0, i32 2
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = icmp ne %struct.TYPE_13__* %186, null
  br i1 %187, label %198, label %188

188:                                              ; preds = %168
  %189 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %190 = load i32, i32* @KERN_ERR, align 4
  %191 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %192 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %193 = or i32 %191, %192
  %194 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %195 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @beiscsi_log(%struct.beiscsi_hba* %189, i32 %190, i32 %193, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %196)
  br label %306

198:                                              ; preds = %168
  %199 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %200 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %199, i32 0, i32 2
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %203 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %202, i32 0, i32 2
  store %struct.TYPE_13__* %201, %struct.TYPE_13__** %203, align 8
  br label %215

204:                                              ; preds = %135
  %205 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %206 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %205, i32 0, i32 3
  %207 = load %struct.sgl_handle*, %struct.sgl_handle** %206, align 8
  %208 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %209 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %208, i32 0, i32 3
  store %struct.sgl_handle* %207, %struct.sgl_handle** %209, align 8
  %210 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %211 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %210, i32 0, i32 2
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %214 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %213, i32 0, i32 2
  store %struct.TYPE_13__* %212, %struct.TYPE_13__** %214, align 8
  br label %215

215:                                              ; preds = %204, %198
  br label %265

216:                                              ; preds = %127
  %217 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %218 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %217, i32 0, i32 1
  %219 = call i32 @spin_lock(i32* %218)
  %220 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %221 = call %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %220)
  %222 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %223 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %222, i32 0, i32 3
  store %struct.sgl_handle* %221, %struct.sgl_handle** %223, align 8
  %224 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %225 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %224, i32 0, i32 1
  %226 = call i32 @spin_unlock(i32* %225)
  %227 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %228 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %227, i32 0, i32 3
  %229 = load %struct.sgl_handle*, %struct.sgl_handle** %228, align 8
  %230 = icmp ne %struct.sgl_handle* %229, null
  br i1 %230, label %241, label %231

231:                                              ; preds = %216
  %232 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %233 = load i32, i32* @KERN_ERR, align 4
  %234 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %235 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %238 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @beiscsi_log(%struct.beiscsi_hba* %232, i32 %233, i32 %236, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %239)
  br label %320

241:                                              ; preds = %216
  %242 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %243 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %244 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %242, i32 %245)
  %247 = bitcast i8* %246 to %struct.TYPE_13__*
  %248 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %249 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %248, i32 0, i32 2
  store %struct.TYPE_13__* %247, %struct.TYPE_13__** %249, align 8
  %250 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %251 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %250, i32 0, i32 2
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %251, align 8
  %253 = icmp ne %struct.TYPE_13__* %252, null
  br i1 %253, label %264, label %254

254:                                              ; preds = %241
  %255 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %256 = load i32, i32* @KERN_ERR, align 4
  %257 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %258 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %261 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @beiscsi_log(%struct.beiscsi_hba* %255, i32 %256, i32 %259, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %262)
  br label %306

264:                                              ; preds = %241
  br label %265

265:                                              ; preds = %264, %215
  br label %266

266:                                              ; preds = %265, %126
  %267 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %268 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %267, i32 0, i32 2
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = trunc i64 %271 to i32
  %273 = shl i32 %272, 16
  %274 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %275 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %274, i32 0, i32 3
  %276 = load %struct.sgl_handle*, %struct.sgl_handle** %275, align 8
  %277 = getelementptr inbounds %struct.sgl_handle, %struct.sgl_handle* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = or i32 %273, %279
  %281 = call i64 @cpu_to_be32(i32 %280)
  %282 = inttoptr i64 %281 to i8*
  store i8* %282, i8** %12, align 8
  %283 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %284 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %285 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %284, i32 0, i32 2
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store %struct.iscsi_task* %283, %struct.iscsi_task** %287, align 8
  %288 = load i8*, i8** %12, align 8
  %289 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %290 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %289, i32 0, i32 0
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  store i8* %288, i8** %293, align 8
  store i32 0, i32* %3, align 4
  br label %364

294:                                              ; preds = %116
  %295 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %296 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %295, i32 0, i32 2
  %297 = call i32 @spin_lock(i32* %296)
  %298 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %299 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %300 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %299, i32 0, i32 3
  %301 = load %struct.sgl_handle*, %struct.sgl_handle** %300, align 8
  %302 = call i32 @free_io_sgl_handle(%struct.beiscsi_hba* %298, %struct.sgl_handle* %301)
  %303 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %304 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %303, i32 0, i32 2
  %305 = call i32 @spin_unlock(i32* %304)
  br label %320

306:                                              ; preds = %254, %188
  %307 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %308 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %307, i32 0, i32 1
  %309 = call i32 @spin_lock(i32* %308)
  %310 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %311 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %312 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %311, i32 0, i32 3
  %313 = load %struct.sgl_handle*, %struct.sgl_handle** %312, align 8
  %314 = call i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba* %310, %struct.sgl_handle* %313)
  %315 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %316 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %315, i32 0, i32 3
  store %struct.sgl_handle* null, %struct.sgl_handle** %316, align 8
  %317 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %318 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %317, i32 0, i32 1
  %319 = call i32 @spin_unlock(i32* %318)
  br label %320

320:                                              ; preds = %306, %294, %231, %158, %93
  %321 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %322 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %321, i32 0, i32 0
  %323 = load %struct.hwi_controller*, %struct.hwi_controller** %322, align 8
  store %struct.hwi_controller* %323, %struct.hwi_controller** %11, align 8
  %324 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %325 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i64 @BE_GET_CRI_FROM_CID(i32 %326)
  store i64 %327, i64* %13, align 8
  %328 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %329 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %328, i32 0, i32 0
  %330 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %329, align 8
  %331 = load i64, i64* %13, align 8
  %332 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %330, i64 %331
  store %struct.hwi_wrb_context* %332, %struct.hwi_wrb_context** %10, align 8
  %333 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %334 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %333, i32 0, i32 2
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %334, align 8
  %336 = icmp ne %struct.TYPE_13__* %335, null
  br i1 %336, label %337, label %344

337:                                              ; preds = %320
  %338 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %339 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %10, align 8
  %340 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %341 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %340, i32 0, i32 2
  %342 = load %struct.TYPE_13__*, %struct.TYPE_13__** %341, align 8
  %343 = call i32 @free_wrb_handle(%struct.beiscsi_hba* %338, %struct.hwi_wrb_context* %339, %struct.TYPE_13__* %342)
  br label %344

344:                                              ; preds = %337, %320
  %345 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %346 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %345, i32 0, i32 2
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %346, align 8
  %347 = load %struct.beiscsi_session*, %struct.beiscsi_session** %14, align 8
  %348 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %351 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %350, i32 0, i32 0
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %351, align 8
  %353 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %354 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @pci_pool_free(i32 %349, %struct.TYPE_12__* %352, i32 %358)
  %360 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %361 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %360, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %361, align 8
  %362 = load i32, i32* @ENOMEM, align 4
  %363 = sub nsw i32 0, %362
  store i32 %363, i32* %3, align 4
  br label %364

364:                                              ; preds = %344, %266, %42
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_12__* @pci_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i8* @alloc_wrb_handle(%struct.beiscsi_hba*, i32) #1

declare dso_local %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @free_io_sgl_handle(%struct.beiscsi_hba*, %struct.sgl_handle*) #1

declare dso_local i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba*, %struct.sgl_handle*) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @free_wrb_handle(%struct.beiscsi_hba*, %struct.hwi_wrb_context*, %struct.TYPE_13__*) #1

declare dso_local i32 @pci_pool_free(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
