; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_scsi_error_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_scsi_error_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_scsi_buf = type { %struct.TYPE_19__*, %struct.fcp_rsp*, %struct.scsi_cmnd* }
%struct.TYPE_19__ = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.fcp_rsp = type { i64, i64, i32, i64 }
%struct.scsi_cmnd = type { i64, i64*, i32*, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.lpfc_fast_path_event = type { %struct.TYPE_15__, %struct.lpfc_vport*, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_22__, %struct.TYPE_20__ }
%struct.TYPE_13__ = type { i64, i64, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i8* }

@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8
@SAM_STAT_BUSY = common dso_local global i64 0, align 8
@FC_REG_SCSI_EVENT = common dso_local global i8* null, align 8
@LPFC_EVENT_QFULL = common dso_local global i32 0, align 4
@LPFC_EVENT_DEVBSY = common dso_local global i32 0, align 4
@SNS_LEN_VALID = common dso_local global i64 0, align 8
@READ_10 = common dso_local global i64 0, align 8
@WRITE_10 = common dso_local global i64 0, align 8
@LPFC_EVENT_CHECK_COND = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@RESID_UNDER = common dso_local global i64 0, align 8
@RESID_OVER = common dso_local global i64 0, align 8
@FC_REG_FABRIC_EVENT = common dso_local global i32 0, align 4
@LPFC_EVENT_FCPRDCHKERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_vport*, %struct.lpfc_scsi_buf*, %struct.lpfc_iocbq*)* @lpfc_send_scsi_error_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_send_scsi_error_event(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1, %struct.lpfc_scsi_buf* %2, %struct.lpfc_iocbq* %3) #0 {
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_scsi_buf*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.fcp_rsp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lpfc_fast_path_event*, align 8
  %15 = alloca %struct.lpfc_nodelist*, align 8
  %16 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_scsi_buf* %2, %struct.lpfc_scsi_buf** %7, align 8
  store %struct.lpfc_iocbq* %3, %struct.lpfc_iocbq** %8, align 8
  %17 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %17, i32 0, i32 2
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %18, align 8
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %9, align 8
  %20 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %20, i32 0, i32 1
  %22 = load %struct.fcp_rsp*, %struct.fcp_rsp** %21, align 8
  store %struct.fcp_rsp* %22, %struct.fcp_rsp** %10, align 8
  %23 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %24 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %27 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  %29 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %30 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  store %struct.lpfc_fast_path_event* null, %struct.lpfc_fast_path_event** %14, align 8
  %35 = load %struct.lpfc_scsi_buf*, %struct.lpfc_scsi_buf** %7, align 8
  %36 = getelementptr inbounds %struct.lpfc_scsi_buf, %struct.lpfc_scsi_buf* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %38, align 8
  store %struct.lpfc_nodelist* %39, %struct.lpfc_nodelist** %15, align 8
  %40 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %41 = icmp ne %struct.lpfc_nodelist* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %44 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %4
  br label %316

47:                                               ; preds = %42
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SAM_STAT_BUSY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %53, %47
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %61 = call %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %60)
  store %struct.lpfc_fast_path_event* %61, %struct.lpfc_fast_path_event** %14, align 8
  %62 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %63 = icmp ne %struct.lpfc_fast_path_event* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %316

65:                                               ; preds = %59
  %66 = load i8*, i8** @FC_REG_SCSI_EVENT, align 8
  %67 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %68 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 4
  store i8* %66, i8** %70, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @LPFC_EVENT_QFULL, align 4
  br label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @LPFC_EVENT_DEVBSY, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %83 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 3
  store i32 %81, i32* %85, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %92 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 8
  %95 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %96 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 1
  %101 = call i32 @memcpy(i32* %98, i32* %100, i32 4)
  %102 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %103 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 0
  %108 = call i32 @memcpy(i32* %105, i32* %107, i32 4)
  br label %296

109:                                              ; preds = %53
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* @SNS_LEN_VALID, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %208

114:                                              ; preds = %109
  %115 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %116 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %208

119:                                              ; preds = %114
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @READ_10, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @WRITE_10, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %208

135:                                              ; preds = %127, %119
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %137 = call %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %136)
  store %struct.lpfc_fast_path_event* %137, %struct.lpfc_fast_path_event** %14, align 8
  %138 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %139 = icmp ne %struct.lpfc_fast_path_event* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  br label %316

141:                                              ; preds = %135
  %142 = load i8*, i8** @FC_REG_SCSI_EVENT, align 8
  %143 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %144 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 4
  store i8* %142, i8** %147, align 8
  %148 = load i32, i32* @LPFC_EVENT_CHECK_COND, align 4
  %149 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %150 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 3
  store i32 %148, i32* %153, align 4
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %160 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 2
  store i32 %158, i32* %163, align 8
  %164 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %165 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 1
  %169 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %170 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %169, i32 0, i32 1
  %171 = call i32 @memcpy(i32* %168, i32* %170, i32 4)
  %172 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %173 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %178 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %177, i32 0, i32 0
  %179 = call i32 @memcpy(i32* %176, i32* %178, i32 4)
  %180 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %181 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 15
  %186 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %187 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  store i32 %185, i32* %189, align 8
  %190 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %191 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 12
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %196 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  store i32 %194, i32* %198, align 4
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %200 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 13
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %205 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 2
  store i32 %203, i32* %207, align 8
  br label %295

208:                                              ; preds = %127, %114, %109
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %293

214:                                              ; preds = %208
  %215 = load i64, i64* %13, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %293

217:                                              ; preds = %214
  %218 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %219 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @be32_to_cpu(i32 %220)
  %222 = load i64, i64* %13, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %235, label %224

224:                                              ; preds = %217
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* @SAM_STAT_GOOD, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %293

228:                                              ; preds = %224
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* @RESID_UNDER, align 8
  %231 = load i64, i64* @RESID_OVER, align 8
  %232 = or i64 %230, %231
  %233 = and i64 %229, %232
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %293, label %235

235:                                              ; preds = %228, %217
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %237 = call %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba* %236)
  store %struct.lpfc_fast_path_event* %237, %struct.lpfc_fast_path_event** %14, align 8
  %238 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %239 = icmp ne %struct.lpfc_fast_path_event* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %235
  br label %316

241:                                              ; preds = %235
  %242 = load i32, i32* @FC_REG_FABRIC_EVENT, align 4
  %243 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %244 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 3
  store i32 %242, i32* %247, align 4
  %248 = load i32, i32* @LPFC_EVENT_FCPRDCHKERR, align 4
  %249 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %250 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 2
  store i32 %248, i32* %253, align 4
  %254 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %255 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 1
  %259 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %260 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %259, i32 0, i32 1
  %261 = call i32 @memcpy(i32* %258, i32* %260, i32 4)
  %262 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %263 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %268 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %267, i32 0, i32 0
  %269 = call i32 @memcpy(i32* %266, i32* %268, i32 4)
  %270 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %271 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %270, i32 0, i32 4
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %276 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  store i32 %274, i32* %278, align 8
  %279 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %280 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %279, i32 0, i32 1
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %285 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store i64 %283, i64* %287, align 8
  %288 = load i64, i64* %13, align 8
  %289 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %290 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 1
  store i64 %288, i64* %292, align 8
  br label %294

293:                                              ; preds = %228, %224, %214, %208
  br label %316

294:                                              ; preds = %241
  br label %295

295:                                              ; preds = %294, %141
  br label %296

296:                                              ; preds = %295, %80
  %297 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %298 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %299 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %298, i32 0, i32 1
  store %struct.lpfc_vport* %297, %struct.lpfc_vport** %299, align 8
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %301 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %300, i32 0, i32 0
  %302 = load i64, i64* %16, align 8
  %303 = call i32 @spin_lock_irqsave(i32* %301, i64 %302)
  %304 = load %struct.lpfc_fast_path_event*, %struct.lpfc_fast_path_event** %14, align 8
  %305 = getelementptr inbounds %struct.lpfc_fast_path_event, %struct.lpfc_fast_path_event* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %308 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %307, i32 0, i32 1
  %309 = call i32 @list_add_tail(i32* %306, i32* %308)
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 0
  %312 = load i64, i64* %16, align 8
  %313 = call i32 @spin_unlock_irqrestore(i32* %311, i64 %312)
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %315 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %314)
  br label %316

316:                                              ; preds = %296, %293, %240, %140, %64, %46
  ret void
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_fast_path_event* @lpfc_alloc_fast_evt(%struct.lpfc_hba*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
