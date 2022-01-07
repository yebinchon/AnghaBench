; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_selection_autopara.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_nsp32.c_nsp32_selection_autopara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i8*, i32, i32, i32, i8*, i32* }

@NSP32_DEBUG_AUTOSCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@SCSI_BUS_MONITOR = common dso_local global i32 0, align 4
@BUSMON_BUS_FREE = common dso_local global i8 0, align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bus busy\00", align 1
@BUSMON_PHASE_MASK = common dso_local global i8 0, align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"SCSI MsgOut without any message!\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@MV_VALID = common dso_local global i32 0, align 4
@CLEAR_CDB_FIFO_POINTER = common dso_local global i32 0, align 4
@AUTOSCSI_START = common dso_local global i32 0, align 4
@AUTO_MSGIN_00_OR_04 = common dso_local global i32 0, align 4
@AUTO_MSGIN_02 = common dso_local global i32 0, align 4
@AUTO_ATN = common dso_local global i32 0, align 4
@BM_START = common dso_local global i32 0, align 4
@CB_MMIO_MODE = common dso_local global i32 0, align 4
@CB_IO_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown trans_method\00", align 1
@TRANSFER_GO = common dso_local global i32 0, align 4
@ALL_COUNTER_CLR = common dso_local global i32 0, align 4
@SGT_ADR = common dso_local global i32 0, align 4
@COMMAND_CONTROL = common dso_local global i32 0, align 4
@AUTO_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @nsp32_selection_autopara to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp32_selection_autopara(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %37 = call zeroext i8 @scmd_id(%struct.scsi_cmnd* %36)
  store i8 %37, i8* %7, align 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %8, align 8
  %41 = load i32, i32* @NSP32_DEBUG_AUTOSCSI, align 4
  %42 = call i32 @nsp32_dbg(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SCSI_BUS_MONITOR, align 4
  %45 = call zeroext i8 @nsp32_read1(i32 %43, i32 %44)
  store i8 %45, i8* %9, align 1
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @BUSMON_BUS_FREE, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %1
  %52 = load i32, i32* @KERN_WARNING, align 4
  %53 = call i32 @nsp32_msg(i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i8, i8* %9, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @BUSMON_PHASE_MASK, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = trunc i32 %58 to i8
  %60 = call i32 @show_busphase(i8 zeroext %59)
  %61 = load i32, i32* @DID_BUS_BUSY, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %249

66:                                               ; preds = %1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i32, i32* @KERN_ERR, align 4
  %73 = call i32 @nsp32_msg(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @DID_ERROR, align 4
  %75 = shl i32 %74, 16
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %2, align 4
  br label %249

79:                                               ; preds = %66
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %122

84:                                               ; preds = %79
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp sle i32 %87, 3
  br i1 %88, label %89, label %122

89:                                               ; preds = %84
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %110, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = lshr i32 %97, 8
  store i32 %98, i32* %12, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = shl i32 %106, 24
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %90

113:                                              ; preds = %90
  %114 = load i32, i32* @MV_VALID, align 4
  %115 = load i32, i32* %12, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %123

122:                                              ; preds = %84, %79
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %122, %113
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = call i32 @memset(%struct.TYPE_13__* %125, i32 0, i32 64)
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %148, %124
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %130 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %127
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 8
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 4, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %140, i32* %147, align 4
  br label %148

148:                                              ; preds = %133
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %127

151:                                              ; preds = %127
  %152 = load i32, i32* %12, align 4
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = trunc i32 %170 to i8
  %172 = call i32 @BIT(i8 zeroext %171)
  %173 = load i8, i8* %7, align 1
  %174 = call i32 @BIT(i8 zeroext %173)
  %175 = or i32 %172, %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @CLEAR_CDB_FIFO_POINTER, align 4
  %186 = load i32, i32* @AUTOSCSI_START, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @AUTO_MSGIN_00_OR_04, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @AUTO_MSGIN_02, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @AUTO_ATN, align 4
  %193 = or i32 %191, %192
  %194 = call i8* @cpu_to_le16(i32 %193)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  store i32 0, i32* %13, align 4
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  switch i32 %199, label %212 [
    i32 130, label %200
    i32 129, label %204
    i32 128, label %208
  ]

200:                                              ; preds = %151
  %201 = load i32, i32* @BM_START, align 4
  %202 = load i32, i32* %13, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %13, align 4
  br label %215

204:                                              ; preds = %151
  %205 = load i32, i32* @CB_MMIO_MODE, align 4
  %206 = load i32, i32* %13, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %13, align 4
  br label %215

208:                                              ; preds = %151
  %209 = load i32, i32* @CB_IO_MODE, align 4
  %210 = load i32, i32* %13, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %13, align 4
  br label %215

212:                                              ; preds = %151
  %213 = load i32, i32* @KERN_ERR, align 4
  %214 = call i32 @nsp32_msg(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %208, %204, %200
  %216 = load i32, i32* @TRANSFER_GO, align 4
  %217 = load i32, i32* @ALL_COUNTER_CLR, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %13, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i8* @cpu_to_le16(i32 %221)
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  store i8* %222, i8** %224, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 3
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @cpu_to_le32(i32 %229)
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  store i8* %230, i8** %232, align 8
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* @SGT_ADR, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @nsp32_write4(i32 %233, i32 %234, i32 %237)
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @COMMAND_CONTROL, align 4
  %241 = load i32, i32* @CLEAR_CDB_FIFO_POINTER, align 4
  %242 = load i32, i32* @AUTO_PARAMETER, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @nsp32_write2(i32 %239, i32 %240, i32 %243)
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @nsp32_arbitration(%struct.scsi_cmnd* %245, i32 %246)
  store i32 %247, i32* %11, align 4
  %248 = load i32, i32* %11, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %215, %71, %51
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local zeroext i8 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @nsp32_dbg(i32, i8*) #1

declare dso_local zeroext i8 @nsp32_read1(i32, i32) #1

declare dso_local i32 @nsp32_msg(i32, i8*) #1

declare dso_local i32 @show_busphase(i8 zeroext) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i8 zeroext) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nsp32_write4(i32, i32, i32) #1

declare dso_local i32 @nsp32_write2(i32, i32, i32) #1

declare dso_local i32 @nsp32_arbitration(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
