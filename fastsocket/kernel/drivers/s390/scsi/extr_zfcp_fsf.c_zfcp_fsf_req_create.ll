; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64, i64, %struct.TYPE_9__*, i32, %struct.TYPE_10__, %struct.zfcp_adapter*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.zfcp_adapter = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.zfcp_qdio = type { %struct.zfcp_adapter*, %struct.zfcp_qdio_queue }
%struct.zfcp_qdio_queue = type { i32 }
%struct.qdio_buffer_element = type { i32, i8*, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_COMMAND = common dso_local global i32 0, align 4
@FSF_QTCB_UNSOLICITED_STATUS = common dso_local global i64 0, align 8
@fsf_qtcb_type = common dso_local global i32* null, align 8
@FSF_QTCB_CURRENT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_fsf_req* (%struct.zfcp_qdio*, i64, i32*)* @zfcp_fsf_req_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qdio_buffer_element*, align 8
  %9 = alloca %struct.zfcp_qdio_queue*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %13 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %12, i32 0, i32 1
  store %struct.zfcp_qdio_queue* %13, %struct.zfcp_qdio_queue** %9, align 8
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 0
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %15, align 8
  store %struct.zfcp_adapter* %16, %struct.zfcp_adapter** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.zfcp_fsf_req* @zfcp_fsf_alloc(i32* %17)
  store %struct.zfcp_fsf_req* %18, %struct.zfcp_fsf_req** %11, align 8
  %19 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %20 = icmp ne %struct.zfcp_fsf_req* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %27)
  store %struct.zfcp_fsf_req* %28, %struct.zfcp_fsf_req** %4, align 8
  br label %218

29:                                               ; preds = %3
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %41 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %40, i32 0, i32 8
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %44 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %43, i32 0, i32 7
  %45 = call i32 @init_timer(i32* %44)
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 6
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 5
  store %struct.zfcp_adapter* %49, %struct.zfcp_adapter** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %54 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %59 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %61 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %9, align 8
  %64 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 4
  %69 = load %struct.zfcp_qdio_queue*, %struct.zfcp_qdio_queue** %9, align 8
  %70 = getelementptr inbounds %struct.zfcp_qdio_queue, %struct.zfcp_qdio_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 4
  %81 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %78, %struct.TYPE_10__* %80)
  store %struct.qdio_buffer_element* %81, %struct.qdio_buffer_element** %8, align 8
  %82 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %83 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %87 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %86, i64 0
  %88 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %87, i32 0, i32 1
  store i8* %85, i8** %88, align 8
  %89 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %90 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %89, i64 0
  %91 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @SBAL_SFLAGS0_COMMAND, align 4
  %93 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %94 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %93, i64 0
  %95 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @FSF_QTCB_UNSOLICITED_STATUS, align 8
  %100 = icmp ne i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i64 @likely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %216

104:                                              ; preds = %39
  %105 = load i32*, i32** %7, align 8
  %106 = ptrtoint i32* %105 to i32
  %107 = call i64 @likely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %111 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @zfcp_qtcb_alloc(i32* %113)
  %115 = bitcast i8* %114 to %struct.TYPE_9__*
  %116 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %117 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %116, i32 0, i32 2
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %117, align 8
  br label %123

118:                                              ; preds = %104
  %119 = call i8* @zfcp_qtcb_alloc(i32* null)
  %120 = bitcast i8* %119 to %struct.TYPE_9__*
  %121 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %122 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %121, i32 0, i32 2
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %122, align 8
  br label %123

123:                                              ; preds = %118, %109
  %124 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %125 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %124, i32 0, i32 2
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = icmp ne %struct.TYPE_9__* %126, null
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %134 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %136)
  store %struct.zfcp_fsf_req* %137, %struct.zfcp_fsf_req** %4, align 8
  br label %218

138:                                              ; preds = %123
  %139 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %140 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %143 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %142, i32 0, i32 2
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i32 %141, i32* %146, align 4
  %147 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %148 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %151 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i64 %149, i64* %154, align 8
  %155 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %156 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %155, i32 0, i32 2
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 26, i32* %159, align 8
  %160 = load i32*, i32** @fsf_qtcb_type, align 8
  %161 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %162 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %167 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %166, i32 0, i32 2
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* @FSF_QTCB_CURRENT_VERSION, align 4
  %172 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %173 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %172, i32 0, i32 2
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 3
  store i32 %171, i32* %176, align 8
  %177 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %178 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %181 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %180, i32 0, i32 2
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i64 %179, i64* %184, align 8
  %185 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %186 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %189 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %188, i32 0, i32 2
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i64 %187, i64* %192, align 8
  %193 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %194 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %197 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %199 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %202 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  store i32 %200, i32* %205, align 4
  %206 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  %207 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %206, i32 0, i32 2
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = bitcast %struct.TYPE_9__* %208 to i8*
  %210 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %211 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %210, i64 1
  %212 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  %213 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %8, align 8
  %214 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %213, i64 1
  %215 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %214, i32 0, i32 0
  store i32 4, i32* %215, align 8
  br label %216

216:                                              ; preds = %138, %39
  %217 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %11, align 8
  store %struct.zfcp_fsf_req* %217, %struct.zfcp_fsf_req** %4, align 8
  br label %218

218:                                              ; preds = %216, %132, %25
  %219 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  ret %struct.zfcp_fsf_req* %219
}

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_alloc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.zfcp_fsf_req* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, %struct.TYPE_10__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @zfcp_qtcb_alloc(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
