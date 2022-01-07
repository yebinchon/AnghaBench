; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_busfree_occur.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_busfree_occur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_11__, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@NSP32_DEBUG_BUSFREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"enter execph=0x%x\00", align 1
@BM_CNT = common dso_local global i32 0, align 4
@TRANSFER_CONTROL = common dso_local global i32 0, align 4
@MSGIN_02_VALID = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [14 x i8] c"MsgIn02_Valid\00", align 1
@MSGIN_00_VALID = common dso_local global i16 0, align 2
@DATA_IN_PHASE = common dso_local global i16 0, align 2
@DATA_OUT_PHASE = common dso_local global i16 0, align 2
@SACK_CNT = common dso_local global i32 0, align 4
@SAVED_SACK_CNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSGIN_03_VALID = common dso_local global i16 0, align 2
@SDTR_INITIATOR = common dso_local global i32 0, align 4
@SDTR_DONE = common dso_local global i32 0, align 4
@SDTR_TARGET = common dso_local global i32 0, align 4
@MSGIN_04_VALID = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [17 x i8] c"command complete\00", align 1
@SCSI_CSB_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"normal end stat=0x%x resid=0x%x\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unexpected bus free occurred\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i16)* @nsp32_busfree_occur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_busfree_occur(%struct.scsi_cmnd* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @NSP32_DEBUG_BUSFREE, align 4
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i16, i16* %5, align 2
  %30 = call i32 @show_autophase(i16 zeroext %29)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @BM_CNT, align 4
  %33 = call i32 @nsp32_write4(i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TRANSFER_CONTROL, align 4
  %36 = call i32 @nsp32_write2(i32 %34, i32 %35, i32 0)
  %37 = load i16, i16* %5, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @MSGIN_02_VALID, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %97

43:                                               ; preds = %2
  %44 = load i32, i32* @NSP32_DEBUG_BUSFREE, align 4
  %45 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @MSGIN_00_VALID, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %43
  %53 = load i16, i16* %5, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @DATA_IN_PHASE, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load i16, i16* %5, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* @DATA_OUT_PHASE, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %59, %52
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @SACK_CNT, align 4
  %69 = call i32 @nsp32_read4(i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SAVED_SACK_CNT, align 4
  %72 = call i32 @nsp32_read4(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @FALSE, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  br label %91

85:                                               ; preds = %75
  %86 = load i32, i32* @TRUE, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @nsp32_adjust_busfree(%struct.scsi_cmnd* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %66
  br label %96

96:                                               ; preds = %95, %59, %43
  br label %98

97:                                               ; preds = %2
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i16, i16* %5, align 2
  %100 = zext i16 %99 to i32
  %101 = load i16, i16* @MSGIN_03_VALID, align 2
  %102 = zext i16 %101 to i32
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %98
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SDTR_INITIATOR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %106
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = call i32 @nsp32_set_async(%struct.TYPE_12__* %116, %struct.TYPE_13__* %119)
  %121 = load i32, i32* @SDTR_INITIATOR, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %122
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* @SDTR_DONE, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  br label %179

136:                                              ; preds = %106
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @SDTR_TARGET, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %136
  %146 = load i16, i16* %5, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* @MSGIN_00_VALID, align 2
  %149 = zext i16 %148 to i32
  %150 = load i16, i16* @MSGIN_04_VALID, align 2
  %151 = zext i16 %150 to i32
  %152 = or i32 %149, %151
  %153 = and i32 %147, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %162

156:                                              ; preds = %145
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = call i32 @nsp32_set_async(%struct.TYPE_12__* %157, %struct.TYPE_13__* %160)
  br label %162

162:                                              ; preds = %156, %155
  %163 = load i32, i32* @SDTR_TARGET, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %164
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* @SDTR_DONE, align 4
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %171
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %162, %136
  br label %179

179:                                              ; preds = %178, %115
  %180 = load i16, i16* %5, align 2
  %181 = zext i16 %180 to i32
  %182 = load i16, i16* @MSGIN_00_VALID, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %181, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %226

186:                                              ; preds = %179
  %187 = load i32, i32* @NSP32_DEBUG_BUSFREE, align 4
  %188 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @SCSI_CSB_IN, align 4
  %191 = call i8* @nsp32_read1(i32 %189, i32 %190)
  %192 = ptrtoint i8* %191 to i32
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  store i32 %192, i32* %195, align 4
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %197 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  %199 = load i32, i32* @NSP32_DEBUG_BUSFREE, align 4
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %205 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %204)
  %206 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %203, i32 %205)
  %207 = load i32, i32* @DID_OK, align 4
  %208 = shl i32 %207, 16
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = shl i32 %212, 8
  %214 = or i32 %208, %213
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 0
  %220 = or i32 %214, %219
  %221 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %222 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %224 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %223)
  %225 = load i32, i32* @TRUE, align 4
  store i32 %225, i32* %3, align 4
  br label %257

226:                                              ; preds = %179
  %227 = load i16, i16* %5, align 2
  %228 = zext i16 %227 to i32
  %229 = load i16, i16* @MSGIN_04_VALID, align 2
  %230 = zext i16 %229 to i32
  %231 = and i32 %228, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %226
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @SCSI_CSB_IN, align 4
  %236 = call i8* @nsp32_read1(i32 %234, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 4
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 1
  store i32 4, i32* %243, align 4
  %244 = load i32, i32* @NSP32_DEBUG_BUSFREE, align 4
  %245 = call i32 (i32, i8*, ...) @nsp32_dbg(i32 %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %3, align 4
  br label %257

247:                                              ; preds = %226
  %248 = load i32, i32* @KERN_WARNING, align 4
  %249 = call i32 @nsp32_msg(i32 %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %250 = load i32, i32* @DID_ERROR, align 4
  %251 = shl i32 %250, 16
  %252 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %253 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %255 = call i32 @nsp32_scsi_done(%struct.scsi_cmnd* %254)
  %256 = load i32, i32* @TRUE, align 4
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %247, %233, %186
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @nsp32_dbg(i32, i8*, ...) #1

declare dso_local i32 @show_autophase(i16 zeroext) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_read4(i32, i32) #1

declare dso_local i32 @nsp32_adjust_busfree(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @nsp32_set_async(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i8* @nsp32_read1(i32, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
