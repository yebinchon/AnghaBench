; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_unit_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_open_unit_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_8__*, %struct.zfcp_unit*, %struct.zfcp_adapter* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.fsf_qtcb_header }
%struct.TYPE_7__ = type { %struct.fsf_qtcb_bottom_support }
%struct.fsf_qtcb_bottom_support = type { i32 }
%struct.fsf_qtcb_header = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.fsf_queue_designator }
%struct.fsf_queue_designator = type { i32, i32 }
%struct.zfcp_unit = type { %struct.TYPE_11__*, i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.zfcp_adapter = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_DENIED = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_ACCESS_BOXED = common dso_local global i32 0, align 4
@ZFCP_STATUS_UNIT_SHARED = common dso_local global i32 0, align 4
@ZFCP_STATUS_UNIT_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fsouh_1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fsouh_2\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"LUN 0x%Lx on port 0x%Lx is already in use by CSS%d, MIF Image ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fsouh_3\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"No handle is available for LUN 0x%016Lx on port 0x%016Lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fsouh_4\00", align 1
@ZFCP_STATUS_COMMON_OPEN = common dso_local global i32 0, align 4
@FSF_FEATURE_NPIV_MODE = common dso_local global i32 0, align 4
@FSF_FEATURE_LUN_SHARING = common dso_local global i32 0, align 4
@FSF_UNIT_ACCESS_EXCLUSIVE = common dso_local global i32 0, align 4
@FSF_UNIT_ACCESS_OUTBOUND_TRANSFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [63 x i8] c"SCSI device at LUN 0x%016Lx on port 0x%016Lx opened read-only\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"Exclusive read-only access not supported (unit 0x%016Lx, port 0x%016Lx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fsouh_5\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"fsouh_6\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"Shared read-write access not supported (unit 0x%016Lx, port 0x%016Lx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"fsouh_7\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fsouh_8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_open_unit_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_open_unit_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca %struct.fsf_qtcb_header*, align 8
  %6 = alloca %struct.fsf_qtcb_bottom_support*, align 8
  %7 = alloca %struct.fsf_queue_designator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %10 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %10, i32 0, i32 3
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  store %struct.zfcp_adapter* %12, %struct.zfcp_adapter** %3, align 8
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %13, i32 0, i32 2
  %15 = load %struct.zfcp_unit*, %struct.zfcp_unit** %14, align 8
  store %struct.zfcp_unit* %15, %struct.zfcp_unit** %4, align 8
  %16 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %17 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store %struct.fsf_qtcb_header* %19, %struct.fsf_qtcb_header** %5, align 8
  %20 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %21 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.fsf_qtcb_bottom_support* %24, %struct.fsf_qtcb_bottom_support** %6, align 8
  %25 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %26 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.fsf_queue_designator* %27, %struct.fsf_queue_designator** %7, align 8
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  br label %308

35:                                               ; preds = %1
  %36 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_DENIED, align 4
  %37 = load i32, i32* @ZFCP_STATUS_COMMON_ACCESS_BOXED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ZFCP_STATUS_UNIT_SHARED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @ZFCP_STATUS_UNIT_READONLY, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %44 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %43, i32 0, i32 2
  %45 = call i32 @atomic_clear_mask(i32 %42, i32* %44)
  %46 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %47 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %308 [
    i32 130, label %49
    i32 134, label %57
    i32 138, label %58
    i32 131, label %70
    i32 133, label %81
    i32 132, label %135
    i32 135, label %152
    i32 137, label %158
    i32 136, label %177
  ]

49:                                               ; preds = %35
  %50 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %56 = call i32 @zfcp_erp_adapter_reopen(i32 %54, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %55)
  br label %57

57:                                               ; preds = %35, %49
  br label %308

58:                                               ; preds = %35
  %59 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %60 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %61 = call i32 @zfcp_fsf_access_denied_unit(%struct.zfcp_fsf_req* %59, %struct.zfcp_unit* %60)
  %62 = load i32, i32* @ZFCP_STATUS_UNIT_SHARED, align 4
  %63 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %63, i32 0, i32 2
  %65 = call i32 @atomic_clear_mask(i32 %62, i32* %64)
  %66 = load i32, i32* @ZFCP_STATUS_UNIT_READONLY, align 4
  %67 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %68 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %67, i32 0, i32 2
  %69 = call i32 @atomic_clear_mask(i32 %66, i32* %68)
  br label %308

70:                                               ; preds = %35
  %71 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %72 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %71, i32 0, i32 0
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %75 = call i32 @zfcp_erp_port_boxed(%struct.TYPE_11__* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %74)
  %76 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %77 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %78 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %308

81:                                               ; preds = %35
  %82 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %83 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %81
  %90 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %90, i32 0, i32 2
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %95 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %98 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.fsf_queue_designator*, %struct.fsf_queue_designator** %7, align 8
  %103 = getelementptr inbounds %struct.fsf_queue_designator, %struct.fsf_queue_designator* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fsf_queue_designator*, %struct.fsf_queue_designator** %7, align 8
  %106 = getelementptr inbounds %struct.fsf_queue_designator, %struct.fsf_queue_designator* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %93, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %96, i64 %101, i32 %104, i32 %107)
  br label %118

109:                                              ; preds = %81
  %110 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %111 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %112 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @zfcp_act_eval_err(%struct.zfcp_adapter* %110, i32 %116)
  br label %118

118:                                              ; preds = %109, %89
  %119 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %120 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %121 = call i32 @zfcp_erp_unit_access_denied(%struct.zfcp_unit* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.zfcp_fsf_req* %120)
  %122 = load i32, i32* @ZFCP_STATUS_UNIT_SHARED, align 4
  %123 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %124 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %123, i32 0, i32 2
  %125 = call i32 @atomic_clear_mask(i32 %122, i32* %124)
  %126 = load i32, i32* @ZFCP_STATUS_UNIT_READONLY, align 4
  %127 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %128 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %127, i32 0, i32 2
  %129 = call i32 @atomic_clear_mask(i32 %126, i32* %128)
  %130 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %131 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %132 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %308

135:                                              ; preds = %35
  %136 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %136, i32 0, i32 2
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %141 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %144 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %143, i32 0, i32 0
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i32*, i8*, i64, i64, ...) @dev_warn(i32* %139, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %142, i64 %147)
  %149 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %150 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %151 = call i32 @zfcp_erp_unit_failed(%struct.zfcp_unit* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.zfcp_fsf_req* %150)
  br label %152

152:                                              ; preds = %35, %135
  %153 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %154 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %155 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %308

158:                                              ; preds = %35
  %159 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %160 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %176 [
    i32 129, label %165
    i32 128, label %170
  ]

165:                                              ; preds = %158
  %166 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %167 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %166, i32 0, i32 0
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = call i32 @zfcp_fc_test_link(%struct.TYPE_11__* %168)
  br label %170

170:                                              ; preds = %158, %165
  %171 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %172 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %173 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %158, %170
  br label %308

177:                                              ; preds = %35
  %178 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %5, align 8
  %179 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %182 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @ZFCP_STATUS_COMMON_OPEN, align 4
  %184 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %185 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %184, i32 0, i32 2
  %186 = call i32 @atomic_set_mask(i32 %183, i32* %185)
  %187 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @FSF_FEATURE_NPIV_MODE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %307, label %193

193:                                              ; preds = %177
  %194 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FSF_FEATURE_LUN_SHARING, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %307

200:                                              ; preds = %193
  %201 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %202 = call i32 @zfcp_ccw_priv_sch(%struct.zfcp_adapter* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %307, label %204

204:                                              ; preds = %200
  %205 = load %struct.fsf_qtcb_bottom_support*, %struct.fsf_qtcb_bottom_support** %6, align 8
  %206 = getelementptr inbounds %struct.fsf_qtcb_bottom_support, %struct.fsf_qtcb_bottom_support* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @FSF_UNIT_ACCESS_EXCLUSIVE, align 4
  %209 = and i32 %207, %208
  store i32 %209, i32* %8, align 4
  %210 = load %struct.fsf_qtcb_bottom_support*, %struct.fsf_qtcb_bottom_support** %6, align 8
  %211 = getelementptr inbounds %struct.fsf_qtcb_bottom_support, %struct.fsf_qtcb_bottom_support* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @FSF_UNIT_ACCESS_OUTBOUND_TRANSFER, align 4
  %214 = and i32 %212, %213
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %204
  %218 = load i32, i32* @ZFCP_STATUS_UNIT_SHARED, align 4
  %219 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %220 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %219, i32 0, i32 2
  %221 = call i32 @atomic_set_mask(i32 %218, i32* %220)
  br label %222

222:                                              ; preds = %217, %204
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* @ZFCP_STATUS_UNIT_READONLY, align 4
  %227 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %228 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %227, i32 0, i32 2
  %229 = call i32 @atomic_set_mask(i32 %226, i32* %228)
  %230 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %231 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %230, i32 0, i32 2
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %235 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %238 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %237, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @dev_info(i32* %233, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i64 %236, i64 %241)
  br label %243

243:                                              ; preds = %225, %222
  %244 = load i32, i32* %8, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %274

246:                                              ; preds = %243
  %247 = load i32, i32* %9, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %274, label %249

249:                                              ; preds = %246
  %250 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %251 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %250, i32 0, i32 2
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 0
  %254 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %255 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %258 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %257, i32 0, i32 0
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @dev_err(i32* %253, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i64 0, i64 0), i64 %256, i64 %261)
  %263 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %264 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %265 = call i32 @zfcp_erp_unit_failed(%struct.zfcp_unit* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.zfcp_fsf_req* %264)
  %266 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %267 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %268 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %272 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %273 = call i32 @zfcp_erp_unit_shutdown(%struct.zfcp_unit* %271, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.zfcp_fsf_req* %272)
  br label %306

274:                                              ; preds = %246, %243
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %305, label %277

277:                                              ; preds = %274
  %278 = load i32, i32* %9, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %305

280:                                              ; preds = %277
  %281 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %282 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %281, i32 0, i32 2
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %286 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %289 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %288, i32 0, i32 0
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @dev_err(i32* %284, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i64 %287, i64 %292)
  %294 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %295 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %296 = call i32 @zfcp_erp_unit_failed(%struct.zfcp_unit* %294, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), %struct.zfcp_fsf_req* %295)
  %297 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %298 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %299 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  %302 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %303 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %304 = call i32 @zfcp_erp_unit_shutdown(%struct.zfcp_unit* %302, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.zfcp_fsf_req* %303)
  br label %305

305:                                              ; preds = %280, %277, %274
  br label %306

306:                                              ; preds = %305, %249
  br label %307

307:                                              ; preds = %306, %200, %193, %177
  br label %308

308:                                              ; preds = %34, %35, %307, %176, %152, %118, %70, %58, %57
  ret void
}

declare dso_local i32 @atomic_clear_mask(i32, i32*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_access_denied_unit(%struct.zfcp_fsf_req*, %struct.zfcp_unit*) #1

declare dso_local i32 @zfcp_erp_port_boxed(%struct.TYPE_11__*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @zfcp_act_eval_err(%struct.zfcp_adapter*, i32) #1

declare dso_local i32 @zfcp_erp_unit_access_denied(%struct.zfcp_unit*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_unit_failed(%struct.zfcp_unit*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_11__*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @zfcp_ccw_priv_sch(%struct.zfcp_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @zfcp_erp_unit_shutdown(%struct.zfcp_unit*, i32, i8*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
