; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_gen_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_gen_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64* }
%struct.lpfc_dmabuf = type { i32 }
%struct.lpfc_iocbq = type { {}*, i32, i32, %struct.lpfc_vport*, %struct.TYPE_10__, i32*, i32*, i32*, %struct.TYPE_16__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i32, i64, i64, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i64 }
%struct.lpfc_nodelist = type { i64, i32 }

@BUFF_TYPE_BLP_64 = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CR = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@LA = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"0119 Issue GEN REQ IOCB to NPORT x%x Data: x%x x%x\0A\00", align 1
@LPFC_DRVR_TIMEOUT = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, %struct.lpfc_nodelist*, i32, i32, i32, i32)* @lpfc_gen_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_gen_req(%struct.lpfc_vport* %0, %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf* %3, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %4, %struct.lpfc_nodelist* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_vport*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca %struct.lpfc_dmabuf*, align 8
  %16 = alloca void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, align 8
  %17 = alloca %struct.lpfc_nodelist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.lpfc_hba*, align 8
  %23 = alloca %struct.TYPE_16__*, align 8
  %24 = alloca %struct.lpfc_iocbq*, align 8
  %25 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %12, align 8
  store %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %14, align 8
  store %struct.lpfc_dmabuf* %3, %struct.lpfc_dmabuf** %15, align 8
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %4, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  store %struct.lpfc_nodelist* %5, %struct.lpfc_nodelist** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %27, align 8
  store %struct.lpfc_hba* %28, %struct.lpfc_hba** %22, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %30 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %29)
  store %struct.lpfc_iocbq* %30, %struct.lpfc_iocbq** %24, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %32 = icmp eq %struct.lpfc_iocbq* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %10
  store i32 1, i32* %11, align 4
  br label %226

34:                                               ; preds = %10
  %35 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %36 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %35, i32 0, i32 8
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %23, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %43 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @putPaddrHigh(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store i32 %45, i32* %50, align 4
  %51 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %52 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @putPaddrLow(i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i32 %54, i32* %59, align 8
  %60 = load i32, i32* @BUFF_TYPE_BLP_64, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %34
  %78 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %79 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %78, i32 0, i32 7
  store i32* null, i32** %79, align 8
  br label %85

80:                                               ; preds = %34
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %82 = bitcast %struct.lpfc_dmabuf* %81 to i32*
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 7
  store i32* %82, i32** %84, align 8
  br label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %87 = bitcast %struct.lpfc_dmabuf* %86 to i32*
  %88 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %89 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %88, i32 0, i32 6
  store i32* %87, i32** %89, align 8
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %15, align 8
  %91 = bitcast %struct.lpfc_dmabuf* %90 to i32*
  %92 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %93 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %95 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %94)
  %96 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %97 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @CMD_GEN_REQUEST64_CR, align 4
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 9
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @SI, align 4
  %103 = load i32, i32* @LA, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 %104, i32* %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  store i32 %117, i32* %123, align 8
  %124 = load i32, i32* @FC_TYPE_CT, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store i32 %124, i32* %130, align 4
  %131 = load i32, i32* %20, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %85
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 3, %136
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %133, %85
  %139 = load i32, i32* %20, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @CLASS3, align 4
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 7
  store i32 %146, i32* %148, align 8
  %149 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %150 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %155 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LPFC_SLI_REV4, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %171

159:                                              ; preds = %138
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %161 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %165 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 3
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %159, %138
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 5
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %171
  %184 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  %185 = load i32, i32* @KERN_INFO, align 4
  %186 = load i32, i32* @LOG_ELS, align 4
  %187 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %188 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  %194 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %184, i32 %185, i32 %186, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %192, i32 %195)
  %197 = load void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %16, align 8
  %198 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %199 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %198, i32 0, i32 0
  %200 = bitcast {}** %199 to void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)**
  store void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %197, void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %200, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @LPFC_DRVR_TIMEOUT, align 4
  %205 = add nsw i32 %203, %204
  %206 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %207 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  %208 = load %struct.lpfc_vport*, %struct.lpfc_vport** %12, align 8
  %209 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %210 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %209, i32 0, i32 3
  store %struct.lpfc_vport* %208, %struct.lpfc_vport** %210, align 8
  %211 = load i32, i32* %21, align 4
  %212 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %213 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %215 = load i32, i32* @LPFC_ELS_RING, align 4
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %217 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %214, i32 %215, %struct.lpfc_iocbq* %216, i32 0)
  store i32 %217, i32* %25, align 4
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* @IOCB_ERROR, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %183
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  %223 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %24, align 8
  %224 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %222, %struct.lpfc_iocbq* %223)
  store i32 1, i32* %11, align 4
  br label %226

225:                                              ; preds = %183
  store i32 0, i32* %11, align 4
  br label %226

226:                                              ; preds = %225, %221, %33
  %227 = load i32, i32* %11, align 4
  ret i32 %227
}

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
