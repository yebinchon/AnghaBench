; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscIsrChipHalted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscIsrChipHalted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64*, i64, i64, i32, i32, i32, i64*, i32, i64*, i32, %struct.asc_board* }
%struct.asc_board = type { i64*, i32, i64* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64 }

@ASCV_HALTCODE_W = common dso_local global i32 0, align 4
@ASCV_CURCDB_B = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_TARGET_IX = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_CNTL = common dso_local global i64 0, align 8
@ASYN_SDTR_DATA_FIX_PCI_REV_AB = common dso_local global i64 0, align 8
@ASC_HALT_DISABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_HALT_ENABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_HALT_EXTMSG_IN = common dso_local global i64 0, align 8
@ASCV_MSGIN_BEG = common dso_local global i64 0, align 8
@EXTENDED_MESSAGE = common dso_local global i64 0, align 8
@EXTENDED_SDTR = common dso_local global i64 0, align 8
@MS_SDTR_LEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ASC_SYN_MAX_OFFSET = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@QC_MSG_OUT = common dso_local global i64 0, align 8
@EXTENDED_WDTR = common dso_local global i64 0, align 8
@MS_WDTR_LEN = common dso_local global i64 0, align 8
@ASCV_MSGOUT_BEG = common dso_local global i64 0, align 8
@MESSAGE_REJECT = common dso_local global i64 0, align 8
@ASC_HALT_CHK_CONDITION = common dso_local global i64 0, align 8
@QC_REQ_SENSE = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_TAG_CODE = common dso_local global i64 0, align 8
@ASC_TAG_FLAG_DISABLE_DISCONNECT = common dso_local global i64 0, align 8
@ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_STATUS = common dso_local global i64 0, align 8
@QS_READY = common dso_local global i64 0, align 8
@QS_BUSY = common dso_local global i64 0, align 8
@ASCV_SCSIBUSY_B = common dso_local global i64 0, align 8
@ASC_HALT_SDTR_REJECTED = common dso_local global i64 0, align 8
@ASC_HALT_SS_QUEUE_FULL = common dso_local global i64 0, align 8
@ASC_SCSIQ_SCSI_STATUS = common dso_local global i64 0, align 8
@ASC_QADR_BEG = common dso_local global i64 0, align 8
@SAM_STAT_TASK_SET_FULL = common dso_local global i64 0, align 8
@ASC_MIN_TAGGED_CMD = common dso_local global i64 0, align 8
@ASCV_MAX_DVC_QNG_BEG = common dso_local global i64 0, align 8
@ASCV_REQ_SG_LIST_QP = common dso_local global i64 0, align 8
@ASC_HALT_HOST_COPY_SG_LIST_TO_RISC = common dso_local global i64 0, align 8
@ASC_MAX_SG_LIST = common dso_local global i32 0, align 4
@ASC_QLINK_END = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_FIRST_SG_WK_QP = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_FWD = common dso_local global i64 0, align 8
@ASC_SCSIQ_B_SG_WK_QP = common dso_local global i64 0, align 8
@ASC_SCSIQ_D_SRBPTR = common dso_local global i64 0, align 8
@ASC_SCSIQ_SGHD_CPY_BEG = common dso_local global i64 0, align 8
@ASC_SGQ_LIST_BEG = common dso_local global i64 0, align 8
@ASC_SG_LIST_PER_Q = common dso_local global i64 0, align 8
@QCSG_SG_XFER_END = common dso_local global i32 0, align 4
@QCSG_SG_XFER_LIST = common dso_local global i32 0, align 4
@QCSG_SG_XFER_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @AscIsrChipHalted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscIsrChipHalted(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.asc_board*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 11
  %25 = load %struct.asc_board*, %struct.asc_board** %24, align 8
  %26 = icmp ne %struct.asc_board* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 11
  %32 = load %struct.asc_board*, %struct.asc_board** %31, align 8
  store %struct.asc_board* %32, %struct.asc_board** %22, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %38 = call i64 @AscReadLramWord(i32 %36, i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i64, i64* @ASCV_CURCDB_B, align 8
  %41 = call i8* @AscReadLramByte(i32 %39, i64 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @ASC_QNO_TO_QADDR(i64 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @ASC_SCSIQ_B_TARGET_IX, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @AscReadLramByte(i32 %45, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i8* @AscReadLramByte(i32 %51, i64 %54)
  %56 = ptrtoint i8* %55 to i64
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %16, align 8
  %58 = call i64 @ASC_TIX_TO_TID(i64 %57)
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i64 @ASC_TID_TO_TARGET_ID(i64 %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %1
  %69 = load i64, i64* @ASYN_SDTR_DATA_FIX_PCI_REV_AB, align 8
  store i64 %69, i64* %20, align 8
  br label %71

70:                                               ; preds = %1
  store i64 0, i64* %20, align 8
  br label %71

71:                                               ; preds = %70, %68
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ASC_HALT_DISABLE_ASYN_USE_SYN_FIX, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %18, align 8
  %85 = call i32 @AscSetChipSDTR(i32 %83, i64 0, i64 %84)
  %86 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %87 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %18, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %75
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %94 = call i32 @AscWriteLramWord(i32 %92, i32 %93, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

95:                                               ; preds = %71
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* @ASC_HALT_ENABLE_ASYN_USE_SYN_FIX, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %18, align 8
  %110 = call i32 @AscSetChipSDTR(i32 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %20, align 8
  %112 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %113 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %18, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %111, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %99
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %120 = call i32 @AscWriteLramWord(i32 %118, i32 %119, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

121:                                              ; preds = %95
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* @ASC_HALT_EXTMSG_IN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %403

125:                                              ; preds = %121
  %126 = load i32, i32* %11, align 4
  %127 = load i64, i64* @ASCV_MSGIN_BEG, align 8
  %128 = bitcast %struct.TYPE_9__* %4 to i64*
  %129 = call i32 @AscMemWordCopyPtrFromLram(i32 %126, i64 %127, i64* %128, i32 24)
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %351

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @EXTENDED_SDTR, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %351

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MS_SDTR_LEN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %351

144:                                              ; preds = %139
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %7, align 4
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %7, align 4
  %152 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %150, %144
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %156, %164
  br i1 %165, label %178, label %166

166:                                              ; preds = %154
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64*, i64** %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %168, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %166, %154
  %179 = load i32, i32* @FALSE, align 4
  store i32 %179, i32* %7, align 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i64, i64* %182, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i64 %187, i64* %188, align 8
  br label %189

189:                                              ; preds = %178, %166
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %228

192:                                              ; preds = %189
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @AscCalSDTRData(%struct.TYPE_13__* %193, i64 %195, i64 %197)
  store i64 %198, i64* %15, align 8
  %199 = load i64, i64* %15, align 8
  %200 = icmp eq i64 %199, 255
  br i1 %200, label %201, label %227

201:                                              ; preds = %192
  %202 = load i64, i64* @QC_MSG_OUT, align 8
  %203 = load i64, i64* %17, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %17, align 8
  %205 = load i32, i32* %10, align 4
  %206 = xor i32 %205, -1
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = and i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load i32, i32* %10, align 4
  %212 = xor i32 %211, -1
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load i64, i64* %20, align 8
  %219 = load i64, i64* %18, align 8
  %220 = call i32 @AscSetChipSDTR(i32 %217, i64 %218, i64 %219)
  %221 = load i64, i64* %20, align 8
  %222 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %223 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* %18, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 %221, i64* %226, align 8
  br label %227

227:                                              ; preds = %201, %192
  br label %228

228:                                              ; preds = %227, %189
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %228
  %233 = load i64, i64* @QC_MSG_OUT, align 8
  %234 = xor i64 %233, -1
  %235 = load i64, i64* %17, align 8
  %236 = and i64 %235, %234
  store i64 %236, i64* %17, align 8
  %237 = load i32, i32* %10, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load i32, i32* %10, align 4
  %244 = xor i32 %243, -1
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %11, align 4
  %250 = load i64, i64* %20, align 8
  %251 = load i64, i64* %18, align 8
  %252 = call i32 @AscSetChipSDTR(i32 %249, i64 %250, i64 %251)
  br label %341

253:                                              ; preds = %228
  %254 = load i32, i32* %7, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %298

256:                                              ; preds = %253
  %257 = load i64, i64* %17, align 8
  %258 = load i64, i64* @QC_MSG_OUT, align 8
  %259 = and i64 %257, %258
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %298

261:                                              ; preds = %256
  %262 = load i64, i64* @QC_MSG_OUT, align 8
  %263 = xor i64 %262, -1
  %264 = load i64, i64* %17, align 8
  %265 = and i64 %264, %263
  store i64 %265, i64* %17, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = load i32, i32* %10, align 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  %276 = load i32, i32* %10, align 4
  %277 = xor i32 %276, -1
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = call i64 @AscCalSDTRData(%struct.TYPE_13__* %282, i64 %284, i64 %286)
  store i64 %287, i64* %15, align 8
  %288 = load i32, i32* %11, align 4
  %289 = load i64, i64* %15, align 8
  %290 = load i64, i64* %18, align 8
  %291 = call i32 @AscSetChipSDTR(i32 %288, i64 %289, i64 %290)
  %292 = load i64, i64* %15, align 8
  %293 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %294 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %293, i32 0, i32 0
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* %18, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  store i64 %292, i64* %297, align 8
  br label %340

298:                                              ; preds = %256, %253
  %299 = load i64, i64* @QC_MSG_OUT, align 8
  %300 = load i64, i64* %17, align 8
  %301 = or i64 %300, %299
  store i64 %301, i64* %17, align 8
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @AscMsgOutSDTR(%struct.TYPE_13__* %302, i64 %304, i64 %306)
  %308 = load i32, i32* %10, align 4
  %309 = xor i32 %308, -1
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, %309
  store i32 %313, i32* %311, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = call i64 @AscCalSDTRData(%struct.TYPE_13__* %314, i64 %316, i64 %318)
  store i64 %319, i64* %15, align 8
  %320 = load i32, i32* %11, align 4
  %321 = load i64, i64* %15, align 8
  %322 = load i64, i64* %18, align 8
  %323 = call i32 @AscSetChipSDTR(i32 %320, i64 %321, i64 %322)
  %324 = load i64, i64* %15, align 8
  %325 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %326 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %325, i32 0, i32 0
  %327 = load i64*, i64** %326, align 8
  %328 = load i64, i64* %18, align 8
  %329 = getelementptr inbounds i64, i64* %327, i64 %328
  store i64 %324, i64* %329, align 8
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  %334 = or i32 %333, %330
  store i32 %334, i32* %332, align 4
  %335 = load i32, i32* %10, align 4
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = or i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %298, %261
  br label %341

341:                                              ; preds = %340, %232
  %342 = load i32, i32* %11, align 4
  %343 = load i64, i64* %6, align 8
  %344 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %345 = add nsw i64 %343, %344
  %346 = load i64, i64* %17, align 8
  %347 = call i32 @AscWriteLramByte(i32 %342, i64 %345, i64 %346)
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %350 = call i32 @AscWriteLramWord(i32 %348, i32 %349, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

351:                                              ; preds = %139, %134, %125
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %384

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @EXTENDED_WDTR, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %384

361:                                              ; preds = %356
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = load i64, i64* @MS_WDTR_LEN, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %384

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  store i64 0, i64* %367, align 8
  %368 = load i32, i32* %11, align 4
  %369 = load i64, i64* @ASCV_MSGOUT_BEG, align 8
  %370 = bitcast %struct.TYPE_9__* %4 to i64*
  %371 = call i32 @AscMemWordCopyPtrToLram(i32 %368, i64 %369, i64* %370, i32 24)
  %372 = load i64, i64* @QC_MSG_OUT, align 8
  %373 = load i64, i64* %17, align 8
  %374 = or i64 %373, %372
  store i64 %374, i64* %17, align 8
  %375 = load i32, i32* %11, align 4
  %376 = load i64, i64* %6, align 8
  %377 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %378 = add nsw i64 %376, %377
  %379 = load i64, i64* %17, align 8
  %380 = call i32 @AscWriteLramByte(i32 %375, i64 %378, i64 %379)
  %381 = load i32, i32* %11, align 4
  %382 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %383 = call i32 @AscWriteLramWord(i32 %381, i32 %382, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

384:                                              ; preds = %361, %356, %351
  %385 = load i64, i64* @MESSAGE_REJECT, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 %385, i64* %386, align 8
  %387 = load i32, i32* %11, align 4
  %388 = load i64, i64* @ASCV_MSGOUT_BEG, align 8
  %389 = bitcast %struct.TYPE_9__* %4 to i64*
  %390 = call i32 @AscMemWordCopyPtrToLram(i32 %387, i64 %388, i64* %389, i32 24)
  %391 = load i64, i64* @QC_MSG_OUT, align 8
  %392 = load i64, i64* %17, align 8
  %393 = or i64 %392, %391
  store i64 %393, i64* %17, align 8
  %394 = load i32, i32* %11, align 4
  %395 = load i64, i64* %6, align 8
  %396 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %397 = add nsw i64 %395, %396
  %398 = load i64, i64* %17, align 8
  %399 = call i32 @AscWriteLramByte(i32 %394, i64 %397, i64 %398)
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %402 = call i32 @AscWriteLramWord(i32 %400, i32 %401, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

403:                                              ; preds = %121
  %404 = load i64, i64* %8, align 8
  %405 = load i64, i64* @ASC_HALT_CHK_CONDITION, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %521

407:                                              ; preds = %403
  %408 = load i64, i64* @QC_REQ_SENSE, align 8
  %409 = load i64, i64* %17, align 8
  %410 = or i64 %409, %408
  store i64 %410, i64* %17, align 8
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* %10, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %447

417:                                              ; preds = %407
  %418 = load i32, i32* %10, align 4
  %419 = xor i32 %418, -1
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 5
  %422 = load i32, i32* %421, align 4
  %423 = and i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load i32, i32* %11, align 4
  %425 = load i64, i64* %18, align 8
  %426 = call i64 @AscGetMCodeInitSDTRAtID(i32 %424, i64 %425)
  store i64 %426, i64* %15, align 8
  %427 = load i64, i64* @QC_MSG_OUT, align 8
  %428 = load i64, i64* %17, align 8
  %429 = or i64 %428, %427
  store i64 %429, i64* %17, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %431 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %431, i32 0, i32 1
  %433 = load i64*, i64** %432, align 8
  %434 = load i64, i64* %15, align 8
  %435 = lshr i64 %434, 4
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = sub i64 %438, 1
  %440 = and i64 %435, %439
  %441 = getelementptr inbounds i64, i64* %433, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* %15, align 8
  %444 = load i64, i64* @ASC_SYN_MAX_OFFSET, align 8
  %445 = and i64 %443, %444
  %446 = call i32 @AscMsgOutSDTR(%struct.TYPE_13__* %430, i64 %442, i64 %445)
  br label %447

447:                                              ; preds = %417, %407
  %448 = load i32, i32* %11, align 4
  %449 = load i64, i64* %6, align 8
  %450 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %451 = add nsw i64 %449, %450
  %452 = load i64, i64* %17, align 8
  %453 = call i32 @AscWriteLramByte(i32 %448, i64 %451, i64 %452)
  %454 = load i32, i32* %11, align 4
  %455 = load i64, i64* %6, align 8
  %456 = load i64, i64* @ASC_SCSIQ_B_TAG_CODE, align 8
  %457 = add nsw i64 %455, %456
  %458 = call i8* @AscReadLramByte(i32 %454, i64 %457)
  %459 = ptrtoint i8* %458 to i64
  store i64 %459, i64* %12, align 8
  %460 = load i64, i64* %12, align 8
  %461 = and i64 %460, 220
  store i64 %461, i64* %12, align 8
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %481

468:                                              ; preds = %447
  %469 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %469, i32 0, i32 6
  %471 = load i32, i32* %470, align 8
  %472 = load i32, i32* %10, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %481, label %475

475:                                              ; preds = %468
  %476 = load i64, i64* @ASC_TAG_FLAG_DISABLE_DISCONNECT, align 8
  %477 = load i64, i64* @ASC_TAG_FLAG_DISABLE_ASYN_USE_SYN_FIX, align 8
  %478 = or i64 %476, %477
  %479 = load i64, i64* %12, align 8
  %480 = or i64 %479, %478
  store i64 %480, i64* %12, align 8
  br label %481

481:                                              ; preds = %475, %468, %447
  %482 = load i32, i32* %11, align 4
  %483 = load i64, i64* %6, align 8
  %484 = load i64, i64* @ASC_SCSIQ_B_TAG_CODE, align 8
  %485 = add nsw i64 %483, %484
  %486 = load i64, i64* %12, align 8
  %487 = call i32 @AscWriteLramByte(i32 %482, i64 %485, i64 %486)
  %488 = load i32, i32* %11, align 4
  %489 = load i64, i64* %6, align 8
  %490 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %491 = add nsw i64 %489, %490
  %492 = call i8* @AscReadLramByte(i32 %488, i64 %491)
  %493 = ptrtoint i8* %492 to i64
  store i64 %493, i64* %13, align 8
  %494 = load i64, i64* @QS_READY, align 8
  %495 = load i64, i64* @QS_BUSY, align 8
  %496 = or i64 %494, %495
  %497 = load i64, i64* %13, align 8
  %498 = or i64 %497, %496
  store i64 %498, i64* %13, align 8
  %499 = load i32, i32* %11, align 4
  %500 = load i64, i64* %6, align 8
  %501 = load i64, i64* @ASC_SCSIQ_B_STATUS, align 8
  %502 = add nsw i64 %500, %501
  %503 = load i64, i64* %13, align 8
  %504 = call i32 @AscWriteLramByte(i32 %499, i64 %502, i64 %503)
  %505 = load i32, i32* %11, align 4
  %506 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %507 = call i8* @AscReadLramByte(i32 %505, i64 %506)
  %508 = ptrtoint i8* %507 to i32
  store i32 %508, i32* %9, align 4
  %509 = load i32, i32* %10, align 4
  %510 = xor i32 %509, -1
  %511 = load i32, i32* %9, align 4
  %512 = and i32 %511, %510
  store i32 %512, i32* %9, align 4
  %513 = load i32, i32* %11, align 4
  %514 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %515 = load i32, i32* %9, align 4
  %516 = sext i32 %515 to i64
  %517 = call i32 @AscWriteLramByte(i32 %513, i64 %514, i64 %516)
  %518 = load i32, i32* %11, align 4
  %519 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %520 = call i32 @AscWriteLramWord(i32 %518, i32 %519, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

521:                                              ; preds = %403
  %522 = load i64, i64* %8, align 8
  %523 = load i64, i64* @ASC_HALT_SDTR_REJECTED, align 8
  %524 = icmp eq i64 %522, %523
  br i1 %524, label %525, label %581

525:                                              ; preds = %521
  %526 = load i32, i32* %11, align 4
  %527 = load i64, i64* @ASCV_MSGOUT_BEG, align 8
  %528 = bitcast %struct.TYPE_9__* %5 to i64*
  %529 = call i32 @AscMemWordCopyPtrFromLram(i32 %526, i64 %527, i64* %528, i32 24)
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @EXTENDED_MESSAGE, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %567

534:                                              ; preds = %525
  %535 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @MS_SDTR_LEN, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %567

539:                                              ; preds = %534
  %540 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = load i64, i64* @EXTENDED_SDTR, align 8
  %543 = icmp eq i64 %541, %542
  br i1 %543, label %544, label %567

544:                                              ; preds = %539
  %545 = load i32, i32* %10, align 4
  %546 = xor i32 %545, -1
  %547 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %547, i32 0, i32 4
  %549 = load i32, i32* %548, align 8
  %550 = and i32 %549, %546
  store i32 %550, i32* %548, align 8
  %551 = load i32, i32* %10, align 4
  %552 = xor i32 %551, -1
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 5
  %555 = load i32, i32* %554, align 4
  %556 = and i32 %555, %552
  store i32 %556, i32* %554, align 4
  %557 = load i32, i32* %11, align 4
  %558 = load i64, i64* %20, align 8
  %559 = load i64, i64* %18, align 8
  %560 = call i32 @AscSetChipSDTR(i32 %557, i64 %558, i64 %559)
  %561 = load i64, i64* %20, align 8
  %562 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %563 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %562, i32 0, i32 0
  %564 = load i64*, i64** %563, align 8
  %565 = load i64, i64* %18, align 8
  %566 = getelementptr inbounds i64, i64* %564, i64 %565
  store i64 %561, i64* %566, align 8
  br label %567

567:                                              ; preds = %544, %539, %534, %525
  %568 = load i64, i64* @QC_MSG_OUT, align 8
  %569 = xor i64 %568, -1
  %570 = load i64, i64* %17, align 8
  %571 = and i64 %570, %569
  store i64 %571, i64* %17, align 8
  %572 = load i32, i32* %11, align 4
  %573 = load i64, i64* %6, align 8
  %574 = load i64, i64* @ASC_SCSIQ_B_CNTL, align 8
  %575 = add nsw i64 %573, %574
  %576 = load i64, i64* %17, align 8
  %577 = call i32 @AscWriteLramByte(i32 %572, i64 %575, i64 %576)
  %578 = load i32, i32* %11, align 4
  %579 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %580 = call i32 @AscWriteLramWord(i32 %578, i32 %579, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

581:                                              ; preds = %521
  %582 = load i64, i64* %8, align 8
  %583 = load i64, i64* @ASC_HALT_SS_QUEUE_FULL, align 8
  %584 = icmp eq i64 %582, %583
  br i1 %584, label %585, label %665

585:                                              ; preds = %581
  %586 = load i32, i32* %11, align 4
  %587 = load i64, i64* %6, align 8
  %588 = load i64, i64* @ASC_SCSIQ_SCSI_STATUS, align 8
  %589 = add nsw i64 %587, %588
  %590 = call i8* @AscReadLramByte(i32 %586, i64 %589)
  %591 = ptrtoint i8* %590 to i64
  store i64 %591, i64* %21, align 8
  %592 = load i32, i32* %11, align 4
  %593 = load i64, i64* @ASC_QADR_BEG, align 8
  %594 = load i64, i64* %16, align 8
  %595 = add nsw i64 %593, %594
  %596 = call i8* @AscReadLramByte(i32 %592, i64 %595)
  %597 = ptrtoint i8* %596 to i64
  store i64 %597, i64* %19, align 8
  %598 = load i64, i64* %19, align 8
  %599 = icmp ugt i64 %598, 0
  br i1 %599, label %600, label %661

600:                                              ; preds = %585
  %601 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %602 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %601, i32 0, i32 7
  %603 = load i64*, i64** %602, align 8
  %604 = load i64, i64* %18, align 8
  %605 = getelementptr inbounds i64, i64* %603, i64 %604
  %606 = load i64, i64* %605, align 8
  %607 = icmp sgt i64 %606, 0
  br i1 %607, label %608, label %661

608:                                              ; preds = %600
  %609 = load i32, i32* %11, align 4
  %610 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %611 = call i8* @AscReadLramByte(i32 %609, i64 %610)
  %612 = ptrtoint i8* %611 to i32
  store i32 %612, i32* %9, align 4
  %613 = load i32, i32* %10, align 4
  %614 = load i32, i32* %9, align 4
  %615 = or i32 %614, %613
  store i32 %615, i32* %9, align 4
  %616 = load i32, i32* %11, align 4
  %617 = load i64, i64* @ASCV_SCSIBUSY_B, align 8
  %618 = load i32, i32* %9, align 4
  %619 = sext i32 %618 to i64
  %620 = call i32 @AscWriteLramByte(i32 %616, i64 %617, i64 %619)
  %621 = load i32, i32* %10, align 4
  %622 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %623 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %622, i32 0, i32 8
  %624 = load i32, i32* %623, align 8
  %625 = or i32 %624, %621
  store i32 %625, i32* %623, align 8
  %626 = load i64, i64* %21, align 8
  %627 = load i64, i64* @SAM_STAT_TASK_SET_FULL, align 8
  %628 = icmp eq i64 %626, %627
  br i1 %628, label %629, label %660

629:                                              ; preds = %608
  %630 = load i64, i64* %19, align 8
  %631 = load i64, i64* @ASC_MIN_TAGGED_CMD, align 8
  %632 = icmp ugt i64 %630, %631
  br i1 %632, label %633, label %659

633:                                              ; preds = %629
  %634 = load i64, i64* %19, align 8
  %635 = sub i64 %634, 1
  store i64 %635, i64* %19, align 8
  %636 = load i64, i64* %19, align 8
  %637 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %637, i32 0, i32 9
  %639 = load i64*, i64** %638, align 8
  %640 = load i64, i64* %18, align 8
  %641 = getelementptr inbounds i64, i64* %639, i64 %640
  store i64 %636, i64* %641, align 8
  %642 = load i32, i32* %11, align 4
  %643 = load i64, i64* @ASCV_MAX_DVC_QNG_BEG, align 8
  %644 = load i64, i64* %18, align 8
  %645 = add nsw i64 %643, %644
  %646 = load i64, i64* %19, align 8
  %647 = call i32 @AscWriteLramByte(i32 %642, i64 %645, i64 %646)
  %648 = load i32, i32* %10, align 4
  %649 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %650 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 8
  %652 = or i32 %651, %648
  store i32 %652, i32* %650, align 8
  %653 = load i64, i64* %19, align 8
  %654 = load %struct.asc_board*, %struct.asc_board** %22, align 8
  %655 = getelementptr inbounds %struct.asc_board, %struct.asc_board* %654, i32 0, i32 2
  %656 = load i64*, i64** %655, align 8
  %657 = load i64, i64* %18, align 8
  %658 = getelementptr inbounds i64, i64* %656, i64 %657
  store i64 %653, i64* %658, align 8
  br label %659

659:                                              ; preds = %633, %629
  br label %660

660:                                              ; preds = %659, %608
  br label %661

661:                                              ; preds = %660, %600, %585
  %662 = load i32, i32* %11, align 4
  %663 = load i32, i32* @ASCV_HALTCODE_W, align 4
  %664 = call i32 @AscWriteLramWord(i32 %662, i32 %663, i32 0)
  store i32 0, i32* %2, align 4
  br label %671

665:                                              ; preds = %581
  br label %666

666:                                              ; preds = %665
  br label %667

667:                                              ; preds = %666
  br label %668

668:                                              ; preds = %667
  br label %669

669:                                              ; preds = %668
  br label %670

670:                                              ; preds = %669
  store i32 0, i32* %2, align 4
  br label %671

671:                                              ; preds = %670, %661, %567, %481, %384, %366, %341, %117, %91
  %672 = load i32, i32* %2, align 4
  ret i32 %672
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @AscReadLramWord(i32, i32) #1

declare dso_local i8* @AscReadLramByte(i32, i64) #1

declare dso_local i64 @ASC_QNO_TO_QADDR(i64) #1

declare dso_local i64 @ASC_TIX_TO_TID(i64) #1

declare dso_local i64 @ASC_TID_TO_TARGET_ID(i64) #1

declare dso_local i32 @AscSetChipSDTR(i32, i64, i64) #1

declare dso_local i32 @AscWriteLramWord(i32, i32, i32) #1

declare dso_local i32 @AscMemWordCopyPtrFromLram(i32, i64, i64*, i32) #1

declare dso_local i64 @AscCalSDTRData(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @AscMsgOutSDTR(%struct.TYPE_13__*, i64, i64) #1

declare dso_local i32 @AscWriteLramByte(i32, i64, i64) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i64, i64*, i32) #1

declare dso_local i64 @AscGetMCodeInitSDTRAtID(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
