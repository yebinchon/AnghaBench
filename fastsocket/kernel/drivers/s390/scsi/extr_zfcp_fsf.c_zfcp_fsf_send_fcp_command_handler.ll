; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_send_fcp_command_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.zfcp_unit*, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.zfcp_unit* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.fsf_qtcb_header }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.fsf_qtcb_header = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.zfcp_unit = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64 }

@ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fssfch1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fssfch2\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Incorrect direction %d, unit 0x%016Lx on port 0x%016Lx closed\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fssfch3\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Incorrect CDB length %d, unit 0x%016Lx on port 0x%016Lx closed\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"fssfch4\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fssfch5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fssfch6\00", align 1
@FSF_SQ_INVOKE_LINK_TEST_PROCEDURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_fsf_req*)* @zfcp_fsf_send_fcp_command_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fsf_send_fcp_command_handler(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_unit*, align 8
  %4 = alloca %struct.fsf_qtcb_header*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 2
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  store %struct.fsf_qtcb_header* %8, %struct.fsf_qtcb_header** %4, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT, align 4
  %13 = and i32 %11, %12
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %17, i32 0, i32 4
  %19 = load %struct.zfcp_unit*, %struct.zfcp_unit** %18, align 8
  store %struct.zfcp_unit* %19, %struct.zfcp_unit** %3, align 8
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 1
  %23 = load %struct.zfcp_unit*, %struct.zfcp_unit** %22, align 8
  store %struct.zfcp_unit* %23, %struct.zfcp_unit** %3, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %179

33:                                               ; preds = %24
  %34 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %35 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %178 [
    i32 133, label %37
    i32 129, label %37
    i32 134, label %50
    i32 131, label %50
    i32 128, label %61
    i32 138, label %64
    i32 135, label %68
    i32 136, label %103
    i32 130, label %138
    i32 132, label %149
    i32 137, label %158
  ]

37:                                               ; preds = %33, %33
  %38 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %39 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %44 = call i32 @zfcp_erp_adapter_reopen(i32 %42, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %43)
  %45 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %46 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %47 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %178

50:                                               ; preds = %33, %33
  %51 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %52 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %55 = call i32 @zfcp_erp_port_reopen(%struct.TYPE_16__* %53, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.zfcp_fsf_req* %54)
  %56 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %178

61:                                               ; preds = %33
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %63 = call i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req* %62)
  br label %178

64:                                               ; preds = %33
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %66 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %67 = call i32 @zfcp_fsf_access_denied_unit(%struct.zfcp_fsf_req* %65, %struct.zfcp_unit* %66)
  br label %178

68:                                               ; preds = %33
  %69 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %70 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %76 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %83 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %86 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %81, i64 %84, i64 %89)
  %91 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %92 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %91, i32 0, i32 0
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %97 = call i32 @zfcp_erp_adapter_shutdown(i32 %95, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.zfcp_fsf_req* %96)
  %98 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %99 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %100 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %178

103:                                              ; preds = %33
  %104 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %105 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %104, i32 0, i32 3
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %111 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %110, i32 0, i32 2
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %118 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %121 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %120, i32 0, i32 0
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %116, i64 %119, i64 %124)
  %126 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %127 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %126, i32 0, i32 0
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %132 = call i32 @zfcp_erp_adapter_shutdown(i32 %130, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.zfcp_fsf_req* %131)
  %133 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %134 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %135 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %178

138:                                              ; preds = %33
  %139 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %140 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %143 = call i32 @zfcp_erp_port_boxed(%struct.TYPE_16__* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.zfcp_fsf_req* %142)
  %144 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %145 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %146 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %178

149:                                              ; preds = %33
  %150 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %151 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %152 = call i32 @zfcp_erp_unit_boxed(%struct.zfcp_unit* %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.zfcp_fsf_req* %151)
  %153 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %154 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %155 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %178

158:                                              ; preds = %33
  %159 = load %struct.fsf_qtcb_header*, %struct.fsf_qtcb_header** %4, align 8
  %160 = getelementptr inbounds %struct.fsf_qtcb_header, %struct.fsf_qtcb_header* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @FSF_SQ_INVOKE_LINK_TEST_PROCEDURE, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %169 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %168, i32 0, i32 0
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32 @zfcp_fc_test_link(%struct.TYPE_16__* %170)
  br label %172

172:                                              ; preds = %167, %158
  %173 = load i32, i32* @ZFCP_STATUS_FSFREQ_ERROR, align 4
  %174 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %175 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %33, %172, %149, %138, %103, %68, %64, %61, %50, %37
  br label %179

179:                                              ; preds = %178, %32
  %180 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %181 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ZFCP_STATUS_FSFREQ_TASK_MANAGEMENT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %188 = call i32 @zfcp_fsf_send_fcp_ctm_handler(%struct.zfcp_fsf_req* %187)
  br label %196

189:                                              ; preds = %179
  %190 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %191 = call i32 @zfcp_fsf_send_fcp_command_task_handler(%struct.zfcp_fsf_req* %190)
  %192 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %193 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %192, i32 0, i32 1
  store %struct.zfcp_unit* null, %struct.zfcp_unit** %193, align 8
  %194 = load %struct.zfcp_unit*, %struct.zfcp_unit** %3, align 8
  %195 = call i32 @zfcp_unit_put(%struct.zfcp_unit* %194)
  br label %196

196:                                              ; preds = %189, %186
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(i32, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_reopen(%struct.TYPE_16__*, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_class_not_supp(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_access_denied_unit(%struct.zfcp_fsf_req*, %struct.zfcp_unit*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @zfcp_erp_adapter_shutdown(i32, i32, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_port_boxed(%struct.TYPE_16__*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_unit_boxed(%struct.zfcp_unit*, i8*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fc_test_link(%struct.TYPE_16__*) #1

declare dso_local i32 @zfcp_fsf_send_fcp_ctm_handler(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_fsf_send_fcp_command_task_handler(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_unit_put(%struct.zfcp_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
