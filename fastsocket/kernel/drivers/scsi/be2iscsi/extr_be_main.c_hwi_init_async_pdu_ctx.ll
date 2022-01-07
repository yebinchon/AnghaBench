; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_async_pdu_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_async_pdu_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.hba_parameters, i64, %struct.TYPE_30__, %struct.hwi_controller* }
%struct.hba_parameters = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.hwi_controller = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.hwi_async_pdu_context* }
%struct.hwi_async_pdu_context = type { i32, i32, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_29__* }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32, %struct.TYPE_25__, i64, i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i64, i64, i32, i32, %struct.TYPE_33__, i64, i64, i64 }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.async_pdu_handle = type { i32, i8, i32, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.be_mem_descriptor = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, %struct.TYPE_37__, i64 }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }

@HWI_MEM_ASYNC_PDU_CONTEXT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BM_%d : hwi_init_async_pdu_ctx Mem Alloc Failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HWI_MEM_ASYNC_HEADER_BUF = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_BUF va=%p\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"BM_%d : No Virtual address\0A\00", align 1
@HWI_MEM_ASYNC_HEADER_RING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_RING va=%p\0A\00", align 1
@HWI_MEM_ASYNC_HEADER_HANDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_HEADER_HANDLE va=%p\0A\00", align 1
@HWI_MEM_ASYNC_DATA_RING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_DATA_RING va=%p\0A\00", align 1
@HWI_MEM_ASYNC_DATA_HANDLE = common dso_local global i32 0, align 4
@HWI_MEM_ASYNC_DATA_BUF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"BM_%d : hwi_init_async_pdu_ctx HWI_MEM_ASYNC_DATA_BUF va=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hwi_init_async_pdu_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwi_init_async_pdu_ctx(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.hwi_controller*, align 8
  %5 = alloca %struct.hba_parameters*, align 8
  %6 = alloca %struct.hwi_async_pdu_context*, align 8
  %7 = alloca %struct.async_pdu_handle*, align 8
  %8 = alloca %struct.async_pdu_handle*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.be_mem_descriptor*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 0
  store %struct.hba_parameters* %15, %struct.hba_parameters** %5, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %19, %struct.be_mem_descriptor** %13, align 8
  %20 = load i32, i32* @HWI_MEM_ASYNC_PDU_CONTEXT, align 4
  %21 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %21, i64 %22
  store %struct.be_mem_descriptor* %23, %struct.be_mem_descriptor** %13, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 3
  %26 = load %struct.hwi_controller*, %struct.hwi_controller** %25, align 8
  store %struct.hwi_controller* %26, %struct.hwi_controller** %4, align 8
  %27 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %28 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %27, i32 0, i32 0
  %29 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.hwi_async_pdu_context*
  %34 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %35 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %34, i32 0, i32 0
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  store %struct.hwi_async_pdu_context* %33, %struct.hwi_async_pdu_context** %37, align 8
  %38 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %39 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %38, i32 0, i32 0
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %41, align 8
  store %struct.hwi_async_pdu_context* %42, %struct.hwi_async_pdu_context** %6, align 8
  %43 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %44 = call i32 @memset(%struct.hwi_async_pdu_context* %43, i32 0, i32 144)
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.TYPE_29__* @kzalloc(i32 %51, i32 %52)
  %54 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %55 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %54, i32 0, i32 4
  store %struct.TYPE_29__* %53, %struct.TYPE_29__** %55, align 8
  %56 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %57 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %56, i32 0, i32 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %57, align 8
  %59 = icmp ne %struct.TYPE_29__* %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %1
  %61 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %64 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %603

67:                                               ; preds = %1
  %68 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %72 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %77 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %81, %struct.be_mem_descriptor** %13, align 8
  %82 = load i32, i32* @HWI_MEM_ASYNC_HEADER_BUF, align 4
  %83 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %83, i64 %84
  store %struct.be_mem_descriptor* %85, %struct.be_mem_descriptor** %13, align 8
  %86 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %87 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %86, i32 0, i32 0
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %67
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %95 = load i32, i32* @KERN_INFO, align 4
  %96 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %97 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %98 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %97, i32 0, i32 0
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  br label %109

104:                                              ; preds = %67
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %106 = load i32, i32* @KERN_WARNING, align 4
  %107 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %108 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %93
  %110 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %111 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %110, i32 0, i32 0
  %112 = load %struct.TYPE_38__*, %struct.TYPE_38__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %117 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 6
  store i64 %115, i64* %118, align 8
  %119 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %120 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %119, i32 0, i32 0
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %129 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  store i64 %127, i64* %133, align 8
  %134 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %135 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %137, %struct.be_mem_descriptor** %13, align 8
  %138 = load i32, i32* @HWI_MEM_ASYNC_HEADER_RING, align 4
  %139 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %139, i64 %140
  store %struct.be_mem_descriptor* %141, %struct.be_mem_descriptor** %13, align 8
  %142 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %143 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %142, i32 0, i32 0
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %109
  %150 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %151 = load i32, i32* @KERN_INFO, align 4
  %152 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %153 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %154 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %153, i32 0, i32 0
  %155 = load %struct.TYPE_38__*, %struct.TYPE_38__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %158)
  br label %165

160:                                              ; preds = %109
  %161 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %162 = load i32, i32* @KERN_WARNING, align 4
  %163 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %164 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %165

165:                                              ; preds = %160, %149
  %166 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %167 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %166, i32 0, i32 0
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %173 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 8
  store i64 %171, i64* %174, align 8
  %175 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %176 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %178, %struct.be_mem_descriptor** %13, align 8
  %179 = load i32, i32* @HWI_MEM_ASYNC_HEADER_HANDLE, align 4
  %180 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %180, i64 %181
  store %struct.be_mem_descriptor* %182, %struct.be_mem_descriptor** %13, align 8
  %183 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %184 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %183, i32 0, i32 0
  %185 = load %struct.TYPE_38__*, %struct.TYPE_38__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %165
  %191 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %192 = load i32, i32* @KERN_INFO, align 4
  %193 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %194 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %195 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %194, i32 0, i32 0
  %196 = load %struct.TYPE_38__*, %struct.TYPE_38__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i64 0
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %199)
  br label %206

201:                                              ; preds = %165
  %202 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %203 = load i32, i32* @KERN_WARNING, align 4
  %204 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %205 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %202, i32 %203, i32 %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %206

206:                                              ; preds = %201, %190
  %207 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %208 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %207, i32 0, i32 0
  %209 = load %struct.TYPE_38__*, %struct.TYPE_38__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %214 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 7
  store i64 %212, i64* %215, align 8
  %216 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %217 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 2
  store i64 0, i64* %218, align 8
  %219 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %220 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 4
  %222 = call i32 @INIT_LIST_HEAD(i32* %221)
  %223 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %224 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = inttoptr i64 %225 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %226, %struct.be_mem_descriptor** %13, align 8
  %227 = load i32, i32* @HWI_MEM_ASYNC_DATA_RING, align 4
  %228 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %228, i64 %229
  store %struct.be_mem_descriptor* %230, %struct.be_mem_descriptor** %13, align 8
  %231 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %232 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %231, i32 0, i32 0
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %233, i64 0
  %235 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %206
  %239 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %240 = load i32, i32* @KERN_INFO, align 4
  %241 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %242 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %243 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %242, i32 0, i32 0
  %244 = load %struct.TYPE_38__*, %struct.TYPE_38__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %239, i32 %240, i32 %241, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %247)
  br label %254

249:                                              ; preds = %206
  %250 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %251 = load i32, i32* @KERN_WARNING, align 4
  %252 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %253 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %250, i32 %251, i32 %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %254

254:                                              ; preds = %249, %238
  %255 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %256 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %255, i32 0, i32 0
  %257 = load %struct.TYPE_38__*, %struct.TYPE_38__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i64 0
  %259 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %262 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 8
  store i64 %260, i64* %263, align 8
  %264 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %265 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = inttoptr i64 %266 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %267, %struct.be_mem_descriptor** %13, align 8
  %268 = load i32, i32* @HWI_MEM_ASYNC_DATA_HANDLE, align 4
  %269 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %269, i64 %270
  store %struct.be_mem_descriptor* %271, %struct.be_mem_descriptor** %13, align 8
  %272 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %273 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %272, i32 0, i32 0
  %274 = load %struct.TYPE_38__*, %struct.TYPE_38__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %274, i64 0
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %284, label %279

279:                                              ; preds = %254
  %280 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %281 = load i32, i32* @KERN_WARNING, align 4
  %282 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %283 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %280, i32 %281, i32 %282, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %284

284:                                              ; preds = %279, %254
  %285 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %286 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %285, i32 0, i32 0
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %292 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 7
  store i64 %290, i64* %293, align 8
  %294 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %295 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  %297 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %298 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 4
  %300 = call i32 @INIT_LIST_HEAD(i32* %299)
  %301 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %302 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = inttoptr i64 %304 to %struct.async_pdu_handle*
  store %struct.async_pdu_handle* %305, %struct.async_pdu_handle** %7, align 8
  %306 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %307 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %307, i32 0, i32 7
  %309 = load i64, i64* %308, align 8
  %310 = inttoptr i64 %309 to %struct.async_pdu_handle*
  store %struct.async_pdu_handle* %310, %struct.async_pdu_handle** %8, align 8
  %311 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %312 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to %struct.be_mem_descriptor*
  store %struct.be_mem_descriptor* %314, %struct.be_mem_descriptor** %13, align 8
  %315 = load i32, i32* @HWI_MEM_ASYNC_DATA_BUF, align 4
  %316 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %316, i64 %317
  store %struct.be_mem_descriptor* %318, %struct.be_mem_descriptor** %13, align 8
  %319 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %320 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %319, i32 0, i32 0
  %321 = load %struct.TYPE_38__*, %struct.TYPE_38__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %284
  %327 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %328 = load i32, i32* @KERN_INFO, align 4
  %329 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %330 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %331 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %330, i32 0, i32 0
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i64 0
  %334 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %327, i32 %328, i32 %329, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %335)
  br label %342

337:                                              ; preds = %284
  %338 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %339 = load i32, i32* @KERN_WARNING, align 4
  %340 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %341 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %338, i32 %339, i32 %340, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %342

342:                                              ; preds = %337, %326
  store i32 0, i32* %10, align 4
  %343 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %344 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %343, i32 0, i32 0
  %345 = load %struct.TYPE_38__*, %struct.TYPE_38__** %344, align 8
  %346 = load i32, i32* %10, align 4
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %352 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 6
  store i64 %350, i64* %353, align 8
  %354 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %355 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %354, i32 0, i32 0
  %356 = load %struct.TYPE_38__*, %struct.TYPE_38__** %355, align 8
  %357 = load i32, i32* %10, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %366 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 0
  store i64 %364, i64* %370, align 8
  %371 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %372 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %371, i32 0, i32 0
  %373 = load %struct.TYPE_38__*, %struct.TYPE_38__** %372, align 8
  %374 = load i32, i32* %10, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %380 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = udiv i32 %378, %382
  store i32 %383, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %384

384:                                              ; preds = %587, %342
  %385 = load i32, i32* %9, align 4
  %386 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %387 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp ult i32 %385, %388
  br i1 %389, label %390, label %590

390:                                              ; preds = %384
  %391 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %392 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %391, i32 0, i32 0
  store i32 -1, i32* %392, align 8
  %393 = load i32, i32* %9, align 4
  %394 = trunc i32 %393 to i8
  %395 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %396 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %395, i32 0, i32 1
  store i8 %394, i8* %396, align 4
  %397 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %398 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %397, i32 0, i32 2
  %399 = call i32 @INIT_LIST_HEAD(i32* %398)
  %400 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %401 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %400, i32 0, i32 3
  %402 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %401, i32 0, i32 6
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %405 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %9, align 4
  %408 = mul i32 %406, %407
  %409 = zext i32 %408 to i64
  %410 = add i64 %403, %409
  %411 = inttoptr i64 %410 to i8*
  %412 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %413 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %412, i32 0, i32 4
  store i8* %411, i8** %413, align 8
  %414 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %415 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 5
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %422 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %9, align 4
  %425 = mul i32 %423, %424
  %426 = zext i32 %425 to i64
  %427 = add nsw i64 %420, %426
  %428 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %429 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 0
  store i64 %427, i64* %432, align 8
  %433 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %434 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %433, i32 0, i32 2
  %435 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %436 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %435, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %436, i32 0, i32 4
  %438 = call i32 @list_add_tail(i32* %434, i32* %437)
  %439 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %7, align 8
  %440 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %439, i32 1
  store %struct.async_pdu_handle* %440, %struct.async_pdu_handle** %7, align 8
  %441 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %442 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %441, i32 0, i32 3
  %443 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %443, align 8
  %446 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %447 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %446, i32 0, i32 3
  %448 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %449, 1
  store i64 %450, i64* %448, align 8
  %451 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %452 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %451, i32 0, i32 4
  %453 = load %struct.TYPE_29__*, %struct.TYPE_29__** %452, align 8
  %454 = load i32, i32* %9, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %456, i32 0, i32 2
  %458 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %457, i32 0, i32 0
  %459 = call i32 @INIT_LIST_HEAD(i32* %458)
  %460 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %461 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %460, i32 0, i32 4
  %462 = load %struct.TYPE_29__*, %struct.TYPE_29__** %461, align 8
  %463 = load i32, i32* %9, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %465, i32 0, i32 1
  %467 = call i32 @INIT_LIST_HEAD(i32* %466)
  %468 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %469 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %468, i32 0, i32 0
  store i32 -1, i32* %469, align 8
  %470 = load i32, i32* %9, align 4
  %471 = trunc i32 %470 to i8
  %472 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %473 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %472, i32 0, i32 1
  store i8 %471, i8* %473, align 4
  %474 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %475 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %474, i32 0, i32 2
  %476 = call i32 @INIT_LIST_HEAD(i32* %475)
  %477 = load i32, i32* %12, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %523, label %479

479:                                              ; preds = %390
  store i32 0, i32* %11, align 4
  %480 = load i32, i32* %10, align 4
  %481 = add i32 %480, 1
  store i32 %481, i32* %10, align 4
  %482 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %483 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %482, i32 0, i32 0
  %484 = load %struct.TYPE_38__*, %struct.TYPE_38__** %483, align 8
  %485 = load i32, i32* %10, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %491 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %491, i32 0, i32 6
  store i64 %489, i64* %492, align 8
  %493 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %494 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %493, i32 0, i32 0
  %495 = load %struct.TYPE_38__*, %struct.TYPE_38__** %494, align 8
  %496 = load i32, i32* %10, align 4
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %499, i32 0, i32 0
  %501 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %505 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %508, i32 0, i32 0
  store i64 %503, i64* %509, align 8
  %510 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %13, align 8
  %511 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %510, i32 0, i32 0
  %512 = load %struct.TYPE_38__*, %struct.TYPE_38__** %511, align 8
  %513 = load i32, i32* %10, align 4
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %512, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %519 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = udiv i32 %517, %521
  store i32 %522, i32* %12, align 4
  br label %523

523:                                              ; preds = %479, %390
  %524 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %525 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %524, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %525, i32 0, i32 6
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %529 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 4
  %531 = load i32, i32* %11, align 4
  %532 = mul i32 %530, %531
  %533 = zext i32 %532 to i64
  %534 = add i64 %527, %533
  %535 = inttoptr i64 %534 to i8*
  %536 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %537 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %536, i32 0, i32 4
  store i8* %535, i8** %537, align 8
  %538 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %539 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %538, i32 0, i32 2
  %540 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %539, i32 0, i32 5
  %541 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = load %struct.hba_parameters*, %struct.hba_parameters** %5, align 8
  %546 = getelementptr inbounds %struct.hba_parameters, %struct.hba_parameters* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 4
  %548 = load i32, i32* %11, align 4
  %549 = mul i32 %547, %548
  %550 = zext i32 %549 to i64
  %551 = add nsw i64 %544, %550
  %552 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %553 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %552, i32 0, i32 3
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i32 0, i32 0
  store i64 %551, i64* %556, align 8
  %557 = load i32, i32* %11, align 4
  %558 = add i32 %557, 1
  store i32 %558, i32* %11, align 4
  %559 = load i32, i32* %12, align 4
  %560 = add i32 %559, -1
  store i32 %560, i32* %12, align 4
  %561 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %562 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %561, i32 0, i32 2
  %563 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %564 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %564, i32 0, i32 4
  %566 = call i32 @list_add_tail(i32* %562, i32* %565)
  %567 = load %struct.async_pdu_handle*, %struct.async_pdu_handle** %8, align 8
  %568 = getelementptr inbounds %struct.async_pdu_handle, %struct.async_pdu_handle* %567, i32 1
  store %struct.async_pdu_handle* %568, %struct.async_pdu_handle** %8, align 8
  %569 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %570 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %569, i32 0, i32 2
  %571 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 8
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %571, align 8
  %574 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %575 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %574, i32 0, i32 2
  %576 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = add nsw i64 %577, 1
  store i64 %578, i64* %576, align 8
  %579 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %580 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %579, i32 0, i32 4
  %581 = load %struct.TYPE_29__*, %struct.TYPE_29__** %580, align 8
  %582 = load i32, i32* %9, align 4
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %584, i32 0, i32 0
  %586 = call i32 @INIT_LIST_HEAD(i32* %585)
  br label %587

587:                                              ; preds = %523
  %588 = load i32, i32* %9, align 4
  %589 = add i32 %588, 1
  store i32 %589, i32* %9, align 4
  br label %384

590:                                              ; preds = %384
  %591 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %592 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %591, i32 0, i32 3
  %593 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %592, i32 0, i32 1
  store i64 0, i64* %593, align 8
  %594 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %595 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %594, i32 0, i32 3
  %596 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %595, i32 0, i32 0
  store i32 -1, i32* %596, align 8
  %597 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %598 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %597, i32 0, i32 2
  %599 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %598, i32 0, i32 1
  store i64 0, i64* %599, align 8
  %600 = load %struct.hwi_async_pdu_context*, %struct.hwi_async_pdu_context** %6, align 8
  %601 = getelementptr inbounds %struct.hwi_async_pdu_context, %struct.hwi_async_pdu_context* %600, i32 0, i32 2
  %602 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %601, i32 0, i32 0
  store i32 -1, i32* %602, align 8
  store i32 0, i32* %2, align 4
  br label %603

603:                                              ; preds = %590, %60
  %604 = load i32, i32* %2, align 4
  ret i32 %604
}

declare dso_local i32 @memset(%struct.hwi_async_pdu_context*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @kzalloc(i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
