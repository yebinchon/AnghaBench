; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_7__*, %struct.scb_tailq* }
%struct.TYPE_7__ = type { i64 }
%struct.scb_tailq = type { i32 }
%struct.scb = type { i32, %struct.scsi_cmnd*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.scsi_cmnd = type { i32, i64, i64, i32*, i32, i64* }
%struct.TYPE_6__ = type { %struct.ahc_linux_device* }
%struct.ahc_linux_device = type { i64, i32, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@pending_links = common dso_local global i32 0, align 4
@SCB_UNTAGGEDQ = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SCB %d done'd twice\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Stopping for safety\00", align 1
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@SCB_TRANSMISSION_ERROR = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i64 0, align 8
@SCSI_STATUS_QUEUE_FULL = common dso_local global i64 0, align 8
@AHC_TAG_SUCCESS_INTERVAL = common dso_local global i64 0, align 8
@SCB_RECOVERY_SCB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Recovery SCB completes\0A\00", align 1
@CAM_BDR_SENT = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i64 0, align 8
@CAM_CMD_TIMEOUT = common dso_local global i64 0, align 8
@AHC_SHOW_MISC = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i64 0, align 8
@ahc_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_done(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ahc_linux_device*, align 8
  %7 = alloca %struct.scb_tailq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %10 = load %struct.scb*, %struct.scb** %4, align 8
  %11 = load i32, i32* @pending_links, align 4
  %12 = call i32 @LIST_REMOVE(%struct.scb* %10, i32 %11)
  %13 = load %struct.scb*, %struct.scb** %4, align 8
  %14 = getelementptr inbounds %struct.scb, %struct.scb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SCB_UNTAGGEDQ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %21 = load %struct.scb*, %struct.scb** %4, align 8
  %22 = call i32 @SCB_GET_TARGET_OFFSET(%struct.ahc_softc* %20, %struct.scb* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 1
  %25 = load %struct.scb_tailq*, %struct.scb_tailq** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.scb_tailq, %struct.scb_tailq* %25, i64 %27
  store %struct.scb_tailq* %28, %struct.scb_tailq** %7, align 8
  %29 = load %struct.scb_tailq*, %struct.scb_tailq** %7, align 8
  %30 = load %struct.scb*, %struct.scb** %4, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @links, i32 0, i32 0), align 4
  %32 = call i32 @TAILQ_REMOVE(%struct.scb_tailq* %29, %struct.scb* %30, i32 %31)
  %33 = load %struct.scb_tailq*, %struct.scb_tailq** %7, align 8
  %34 = call i32 @TAILQ_EMPTY(%struct.scb_tailq* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  br label %57

39:                                               ; preds = %2
  %40 = load %struct.scb*, %struct.scb** %4, align 8
  %41 = getelementptr inbounds %struct.scb, %struct.scb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SCB_ACTIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.scb*, %struct.scb** %4, align 8
  %48 = getelementptr inbounds %struct.scb, %struct.scb* %47, i32 0, i32 3
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %54 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %53)
  %55 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %46, %39
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.scb*, %struct.scb** %4, align 8
  %59 = getelementptr inbounds %struct.scb, %struct.scb* %58, i32 0, i32 1
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %59, align 8
  store %struct.scsi_cmnd* %60, %struct.scsi_cmnd** %5, align 8
  %61 = load %struct.scb*, %struct.scb** %4, align 8
  %62 = getelementptr inbounds %struct.scb, %struct.scb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %64, align 8
  store %struct.ahc_linux_device* %65, %struct.ahc_linux_device** %6, align 8
  %66 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %67 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %71 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %78 = shl i32 %77, 16
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %57
  %82 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %83 = shl i32 %82, 16
  %84 = xor i32 %83, -1
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %90 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %81, %57
  %94 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %95 = load %struct.scb*, %struct.scb** %4, align 8
  %96 = call i32 @ahc_linux_unmap_scb(%struct.ahc_softc* %94, %struct.scb* %95)
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  store i64 0, i64* %100, align 8
  %101 = load %struct.scb*, %struct.scb** %4, align 8
  %102 = call i64 @ahc_get_transaction_status(%struct.scb* %101)
  %103 = load i64, i64* @CAM_REQ_INPROG, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %93
  %106 = load %struct.scb*, %struct.scb** %4, align 8
  %107 = call i64 @ahc_get_transfer_length(%struct.scb* %106)
  %108 = load %struct.scb*, %struct.scb** %4, align 8
  %109 = call i64 @ahc_get_residual(%struct.scb* %108)
  %110 = sub nsw i64 %107, %109
  store i64 %110, i64* %9, align 8
  %111 = load %struct.scb*, %struct.scb** %4, align 8
  %112 = getelementptr inbounds %struct.scb, %struct.scb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @SCB_TRANSMISSION_ERROR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = load %struct.scb*, %struct.scb** %4, align 8
  %119 = load i64, i64* @CAM_UNCOR_PARITY, align 8
  %120 = call i32 @ahc_set_transaction_status(%struct.scb* %118, i64 %119)
  br label %125

121:                                              ; preds = %105
  %122 = load %struct.scb*, %struct.scb** %4, align 8
  %123 = load i64, i64* @CAM_REQ_CMP, align 8
  %124 = call i32 @ahc_set_transaction_status(%struct.scb* %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %117
  br label %139

126:                                              ; preds = %93
  %127 = load %struct.scb*, %struct.scb** %4, align 8
  %128 = call i64 @ahc_get_transaction_status(%struct.scb* %127)
  %129 = load i64, i64* @CAM_SCSI_STATUS_ERROR, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %134 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.scb*, %struct.scb** %4, align 8
  %137 = call i32 @ahc_linux_handle_scsi_status(%struct.ahc_softc* %132, i32 %135, %struct.scb* %136)
  br label %138

138:                                              ; preds = %131, %126
  br label %139

139:                                              ; preds = %138, %125
  %140 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %141 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %159

144:                                              ; preds = %139
  %145 = load %struct.scb*, %struct.scb** %4, align 8
  %146 = call i64 @ahc_get_transaction_status(%struct.scb* %145)
  %147 = load i64, i64* @CAM_REQ_CMP, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load %struct.scb*, %struct.scb** %4, align 8
  %151 = call i64 @ahc_get_scsi_status(%struct.scb* %150)
  %152 = load i64, i64* @SCSI_STATUS_QUEUE_FULL, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %156 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %159

159:                                              ; preds = %154, %149, %144, %139
  %160 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %161 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %165 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %169 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %159
  %173 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %174 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @AHC_TAG_SUCCESS_INTERVAL, align 8
  %177 = icmp sgt i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %180 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %179, i32 0, i32 2
  store i64 0, i64* %180, align 8
  %181 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %182 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %178, %172, %159
  %186 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %187 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.ahc_linux_device*, %struct.ahc_linux_device** %6, align 8
  %192 = getelementptr inbounds %struct.ahc_linux_device, %struct.ahc_linux_device* %191, i32 0, i32 4
  store i64 0, i64* %192, align 8
  br label %193

193:                                              ; preds = %190, %185
  %194 = load %struct.scb*, %struct.scb** %4, align 8
  %195 = getelementptr inbounds %struct.scb, %struct.scb* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @SCB_RECOVERY_SCB, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %230

200:                                              ; preds = %193
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %202 = load %struct.scb*, %struct.scb** %4, align 8
  %203 = call i64 @ahc_get_transaction_status(%struct.scb* %202)
  %204 = load i64, i64* @CAM_BDR_SENT, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %211, label %206

206:                                              ; preds = %200
  %207 = load %struct.scb*, %struct.scb** %4, align 8
  %208 = call i64 @ahc_get_transaction_status(%struct.scb* %207)
  %209 = load i64, i64* @CAM_REQ_ABORTED, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %206, %200
  %212 = load %struct.scb*, %struct.scb** %4, align 8
  %213 = load i64, i64* @CAM_CMD_TIMEOUT, align 8
  %214 = call i32 @ahc_set_transaction_status(%struct.scb* %212, i64 %213)
  br label %215

215:                                              ; preds = %211, %206
  %216 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %216, i32 0, i32 0
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %224 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @complete(i64 %227)
  br label %229

229:                                              ; preds = %222, %215
  br label %230

230:                                              ; preds = %229, %193
  %231 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %232 = load %struct.scb*, %struct.scb** %4, align 8
  %233 = call i32 @ahc_free_scb(%struct.ahc_softc* %231, %struct.scb* %232)
  %234 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %236 = call i32 @ahc_linux_queue_cmd_complete(%struct.ahc_softc* %234, %struct.scsi_cmnd* %235)
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.scb*, i32) #1

declare dso_local i32 @SCB_GET_TARGET_OFFSET(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.scb_tailq*, %struct.scb*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @TAILQ_EMPTY(%struct.scb_tailq*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahc_linux_unmap_scb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i64 @ahc_get_transaction_status(%struct.scb*) #1

declare dso_local i64 @ahc_get_transfer_length(%struct.scb*) #1

declare dso_local i64 @ahc_get_residual(%struct.scb*) #1

declare dso_local i32 @ahc_set_transaction_status(%struct.scb*, i64) #1

declare dso_local i32 @ahc_linux_handle_scsi_status(%struct.ahc_softc*, i32, %struct.scb*) #1

declare dso_local i64 @ahc_get_scsi_status(%struct.scb*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ahc_free_scb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_linux_queue_cmd_complete(%struct.ahc_softc*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
