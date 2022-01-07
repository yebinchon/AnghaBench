; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscIsrQDone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscIsrQDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i64, i64*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@ASC_SCSIQ_B_FWD = common dso_local global i64 0, align 8
@ASC_QLINK_END = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_STATUS = common dso_local global i64 0, align 8
@QS_READY = common dso_local global i32 0, align 4
@QS_ABORTED = common dso_local global i32 0, align 4
@QC_SG_HEAD = common dso_local global i32 0, align 4
@ASCQ_ERR_SG_Q_LINKS = common dso_local global i32 0, align 4
@QD_WITH_ERROR = common dso_local global i64 0, align 8
@QHSTA_D_QDONE_SG_LIST_CORRUPTED = common dso_local global i64 0, align 8
@QS_FREE = common dso_local global i32 0, align 4
@ASC_QADR_BEG = common dso_local global i64 0, align 8
@ASCV_SCSIBUSY_B = common dso_local global i64 0, align 8
@ASCQ_ERR_CUR_QNG = common dso_local global i32 0, align 4
@QS_DONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@QHSTA_M_DATA_OVER_RUN = common dso_local global i64 0, align 8
@QC_DATA_IN = common dso_local global i32 0, align 4
@QC_DATA_OUT = common dso_local global i32 0, align 4
@QD_NO_ERROR = common dso_local global i64 0, align 8
@QHSTA_NO_ERROR = common dso_local global i8* null, align 8
@QHSTA_M_HUNG_REQ_SCSI_BUS_RESET = common dso_local global i64 0, align 8
@CC_SCSI_RESET = common dso_local global i64 0, align 8
@CC_HALT = common dso_local global i64 0, align 8
@CIW_CLR_SCSI_RESET_INT = common dso_local global i32 0, align 4
@QC_NO_CALLBACK = common dso_local global i32 0, align 4
@ASC_SCSIQ_CDB_BEG = common dso_local global i64 0, align 8
@START_STOP = common dso_local global i8* null, align 8
@ASCQ_ERR_Q_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @AscIsrQDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscIsrQDone(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  store i64 1, i64* %5, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %18, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @AscGetVarDoneQTail(i32 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @ASC_QNO_TO_QADDR(i64 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i8* @AscReadLramByte(i32 %27, i64 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ASC_QLINK_END, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %380

36:                                               ; preds = %1
  %37 = load i32, i32* %13, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @AscPutVarDoneQTail(i32 %37, i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @ASC_QNO_TO_QADDR(i64 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @_AscCopyLramScsiDoneQ(i32 %42, i64 %43, %struct.TYPE_12__* %44, i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @QS_READY, align 4
  %57 = load i32, i32* @QS_ABORTED, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = and i64 %55, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @AscWriteLramByte(i32 %49, i64 %52, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ASC_TIX_TO_TID(i64 %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ASC_TIX_TO_TARGET_ID(i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @QC_SG_HEAD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %36
  %81 = load i64, i64* %14, align 8
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %83

83:                                               ; preds = %118, %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* @ASC_SCSIQ_B_FWD, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i8* @AscReadLramByte(i32 %88, i64 %91)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @ASC_QNO_TO_QADDR(i64 %94)
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @ASC_QLINK_END, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %87
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = load i32, i32* @ASCQ_ERR_SG_Q_LINKS, align 4
  %102 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %100, i32 %101)
  %103 = load i64, i64* @QD_WITH_ERROR, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* @QHSTA_D_QDONE_SG_LIST_CORRUPTED, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  br label %368

111:                                              ; preds = %87
  %112 = load i32, i32* %13, align 4
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @QS_FREE, align 4
  %117 = call i32 @AscWriteLramByte(i32 %112, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %111
  %119 = load i64, i64* %8, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %8, align 8
  br label %83

121:                                              ; preds = %83
  %122 = load i64, i64* %7, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %5, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @AscPutVarDoneQTail(i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %121, %36
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %127
  %135 = load i32, i32* %13, align 4
  %136 = load i64, i64* @ASC_QADR_BEG, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %136, %140
  %142 = call i8* @AscReadLramByte(i32 %135, i64 %141)
  %143 = ptrtoint i8* %142 to i64
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %144, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %134
  %153 = load i32, i32* %13, align 4
  %154 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %155 = call i8* @AscReadLramByte(i32 %153, i64 %154)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @AscWriteLramByte(i32 %161, i64 %162, i32 %163)
  %165 = load i32, i32* %12, align 4
  %166 = xor i32 %165, -1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %152, %134
  br label %172

172:                                              ; preds = %171, %127
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %172
  %179 = load i64, i64* %5, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = sub nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %178
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %10, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %191, %178
  br label %208

200:                                              ; preds = %172
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = load i32, i32* @ASCQ_ERR_CUR_QNG, align 4
  %203 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %201, i32 %202)
  %204 = load i64, i64* @QD_WITH_ERROR, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  store i64 %204, i64* %207, align 8
  br label %368

208:                                              ; preds = %199
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %222, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @QS_ABORTED, align 4
  %219 = sext i32 %218 to i64
  %220 = and i64 %217, %219
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214, %208
  store i32 17, i32* %2, align 4
  br label %381

223:                                              ; preds = %214
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @QS_DONE, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp eq i64 %226, %228
  br i1 %229, label %230, label %364

230:                                              ; preds = %223
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %19, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %239
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 8
  br label %246

246:                                              ; preds = %236, %230
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @QD_WITH_ERROR, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %322

253:                                              ; preds = %246
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @QHSTA_M_DATA_OVER_RUN, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %294

260:                                              ; preds = %253
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @QC_DATA_IN, align 4
  %265 = load i32, i32* @QC_DATA_OUT, align 4
  %266 = or i32 %264, %265
  %267 = and i32 %263, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %260
  %270 = load i64, i64* @QD_NO_ERROR, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 0
  store i64 %270, i64* %273, align 8
  %274 = load i8*, i8** @QHSTA_NO_ERROR, align 8
  %275 = ptrtoint i8* %274 to i64
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  store i64 %275, i64* %278, align 8
  br label %293

279:                                              ; preds = %260
  %280 = load i32, i32* %19, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  %283 = load i64, i64* @QD_NO_ERROR, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  store i64 %283, i64* %286, align 8
  %287 = load i8*, i8** @QHSTA_NO_ERROR, align 8
  %288 = ptrtoint i8* %287 to i64
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  store i64 %288, i64* %291, align 8
  br label %292

292:                                              ; preds = %282, %279
  br label %293

293:                                              ; preds = %292, %269
  br label %321

294:                                              ; preds = %253
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 3
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @QHSTA_M_HUNG_REQ_SCSI_BUS_RESET, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %320

301:                                              ; preds = %294
  %302 = load i32, i32* %13, align 4
  %303 = call i32 @AscStopChip(i32 %302)
  %304 = load i32, i32* %13, align 4
  %305 = load i64, i64* @CC_SCSI_RESET, align 8
  %306 = load i64, i64* @CC_HALT, align 8
  %307 = or i64 %305, %306
  %308 = call i32 @AscSetChipControl(i32 %304, i64 %307)
  %309 = call i32 @udelay(i32 60)
  %310 = load i32, i32* %13, align 4
  %311 = load i64, i64* @CC_HALT, align 8
  %312 = call i32 @AscSetChipControl(i32 %310, i64 %311)
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @CIW_CLR_SCSI_RESET_INT, align 4
  %315 = call i32 @AscSetChipStatus(i32 %313, i32 %314)
  %316 = load i32, i32* %13, align 4
  %317 = call i32 @AscSetChipStatus(i32 %316, i32 0)
  %318 = load i32, i32* %13, align 4
  %319 = call i32 @AscSetChipControl(i32 %318, i64 0)
  br label %320

320:                                              ; preds = %301, %294
  br label %321

321:                                              ; preds = %320, %293
  br label %322

322:                                              ; preds = %321, %246
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @QC_NO_CALLBACK, align 4
  %327 = and i32 %325, %326
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %322
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %332 = call i32 @asc_isr_callback(%struct.TYPE_13__* %330, %struct.TYPE_12__* %331)
  br label %363

333:                                              ; preds = %322
  %334 = load i32, i32* %13, align 4
  %335 = load i64, i64* %14, align 8
  %336 = load i64, i64* @ASC_SCSIQ_CDB_BEG, align 8
  %337 = add nsw i64 %335, %336
  %338 = call i8* @AscReadLramByte(i32 %334, i64 %337)
  %339 = load i8*, i8** @START_STOP, align 8
  %340 = icmp eq i8* %338, %339
  br i1 %340, label %341, label %362

341:                                              ; preds = %333
  %342 = load i32, i32* %12, align 4
  %343 = xor i32 %342, -1
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, %343
  store i32 %347, i32* %345, align 8
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @QD_NO_ERROR, align 8
  %353 = icmp ne i64 %351, %352
  br i1 %353, label %354, label %361

354:                                              ; preds = %341
  %355 = load i32, i32* %12, align 4
  %356 = xor i32 %355, -1
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = and i32 %359, %356
  store i32 %360, i32* %358, align 4
  br label %361

361:                                              ; preds = %354, %341
  br label %362

362:                                              ; preds = %361, %333
  br label %363

363:                                              ; preds = %362, %329
  store i32 1, i32* %2, align 4
  br label %381

364:                                              ; preds = %223
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %366 = load i32, i32* @ASCQ_ERR_Q_STATUS, align 4
  %367 = call i32 @AscSetLibErrorCode(%struct.TYPE_13__* %365, i32 %366)
  br label %368

368:                                              ; preds = %364, %200, %99
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @QC_NO_CALLBACK, align 4
  %373 = and i32 %371, %372
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %368
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %378 = call i32 @asc_isr_callback(%struct.TYPE_13__* %376, %struct.TYPE_12__* %377)
  br label %379

379:                                              ; preds = %375, %368
  store i32 128, i32* %2, align 4
  br label %381

380:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %381

381:                                              ; preds = %380, %379, %363, %222
  %382 = load i32, i32* %2, align 4
  ret i32 %382
}

declare dso_local i64 @AscGetVarDoneQTail(i32) #1

declare dso_local i64 @ASC_QNO_TO_QADDR(i64) #1

declare dso_local i8* @AscReadLramByte(i32, i64) #1

declare dso_local i32 @AscPutVarDoneQTail(i32, i64) #1

declare dso_local i64 @_AscCopyLramScsiDoneQ(i32, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i32) #1

declare dso_local i64 @ASC_TIX_TO_TID(i64) #1

declare dso_local i32 @ASC_TIX_TO_TARGET_ID(i64) #1

declare dso_local i32 @AscSetLibErrorCode(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AscStopChip(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AscSetChipStatus(i32, i32) #1

declare dso_local i32 @asc_isr_callback(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
