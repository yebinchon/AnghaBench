; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_transmission_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_transmission_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32 }
%struct.scb = type { i32 }
%struct.TYPE_2__ = type { i8* }

@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@LQISTAT1 = common dso_local global i32 0, align 4
@LQIPHASE_LQ = common dso_local global i32 0, align 4
@LQIPHASE_NLQ = common dso_local global i32 0, align 4
@LQISTAT2 = common dso_local global i32 0, align 4
@LQICRCI_NLQ = common dso_local global i32 0, align 4
@LQICRCI_LQ = common dso_local global i32 0, align 4
@AHD_NLQICRC_DELAYED_BUG = common dso_local global i32 0, align 4
@AHD_MODE_CFG = common dso_local global i32 0, align 4
@LQISTATE = common dso_local global i32 0, align 4
@CLRLQIINT1 = common dso_local global i32 0, align 4
@LASTPHASE = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@PHASE_MASK = common dso_local global i32 0, align 4
@PERRDIAG = common dso_local global i32 0, align 4
@MSG_INITIATOR_DET_ERR = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LQIOVERI_NLQ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: Transmission error detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LQIOVERI_LQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"%s: Gross protocol error during incoming packet.  lqistat1 == 0x%x.  Resetting bus.\0A\00", align 1
@LQCTL2 = common dso_local global i32 0, align 4
@LQIRETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"LQIRetry for LQICRCI_LQ to release ACK\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"LQICRC_NLQ\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%s: No SCB valid for LQICRC_NLQ.  Resetting bus\0A\00", align 1
@LQIBADLQI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Need to handle BADLQI!\0A\00", align 1
@PARITYERR = common dso_local global i32 0, align 4
@PREVPHASE = common dso_local global i32 0, align 4
@P_DATAIN_DT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Acking %s to clear perror\0A\00", align 1
@SCSIDAT = common dso_local global i32 0, align 4
@P_MESGIN = common dso_local global i32 0, align 4
@MSG_PARITY_ERROR = common dso_local global i32 0, align 4
@SCB_TRANSMISSION_ERROR = common dso_local global i32 0, align 4
@MSG_OUT = common dso_local global i32 0, align 4
@HOST_MSG = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@AHD_SHOW_RECOVERY = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_handle_transmission_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_transmission_error(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store %struct.scb* null, %struct.scb** %3, align 8
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = load i32, i32* @AHD_MODE_SCSI, align 4
  %16 = load i32, i32* @AHD_MODE_SCSI, align 4
  %17 = call i32 @ahd_set_modes(%struct.ahd_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %19 = load i32, i32* @LQISTAT1, align 4
  %20 = call i32 @ahd_inb(%struct.ahd_softc* %18, i32 %19)
  %21 = load i32, i32* @LQIPHASE_LQ, align 4
  %22 = load i32, i32* @LQIPHASE_NLQ, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %27 = load i32, i32* @LQISTAT2, align 4
  %28 = call i32 @ahd_inb(%struct.ahd_softc* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @LQICRCI_NLQ, align 4
  %31 = load i32, i32* @LQICRCI_LQ, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %1
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AHD_NLQICRC_DELAYED_BUG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %44 = load i32, i32* @AHD_MODE_CFG, align 4
  %45 = load i32, i32* @AHD_MODE_CFG, align 4
  %46 = call i32 @ahd_set_modes(%struct.ahd_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = load i32, i32* @LQISTATE, align 4
  %49 = call i32 @ahd_inb(%struct.ahd_softc* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sge i32 %50, 30
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = icmp sle i32 %53, 36
  br i1 %54, label %58, label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 41
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52
  %59 = load i32, i32* @LQICRCI_NLQ, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %64 = load i32, i32* @AHD_MODE_SCSI, align 4
  %65 = load i32, i32* @AHD_MODE_SCSI, align 4
  %66 = call i32 @ahd_set_modes(%struct.ahd_softc* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %35, %1
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %69 = load i32, i32* @CLRLQIINT1, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @ahd_outb(%struct.ahd_softc* %68, i32 %69, i32 %70)
  %72 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %73 = load i32, i32* @LASTPHASE, align 4
  %74 = call i32 @ahd_inb(%struct.ahd_softc* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %76 = load i32, i32* @SCSISIGI, align 4
  %77 = call i32 @ahd_inb(%struct.ahd_softc* %75, i32 %76)
  %78 = load i32, i32* @PHASE_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %8, align 4
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %81 = load i32, i32* @PERRDIAG, align 4
  %82 = call i32 @ahd_inb(%struct.ahd_softc* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  store i32 %83, i32* %7, align 4
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %85 = load i32, i32* @CLRSINT1, align 4
  %86 = load i32, i32* @CLRSCSIPERR, align 4
  %87 = call i32 @ahd_outb(%struct.ahd_softc* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @LQICRCI_NLQ, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %91, %67
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @LQICRCI_NLQ, align 4
  %99 = load i32, i32* @LQIOVERI_NLQ, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %105 = call i32 @ahd_set_active_fifo(%struct.ahd_softc* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %108 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %107)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %109, i32 %110)
  store %struct.scb* %111, %struct.scb** %3, align 8
  %112 = load %struct.scb*, %struct.scb** %3, align 8
  %113 = icmp ne %struct.scb* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.scb*, %struct.scb** %3, align 8
  %116 = call i64 @SCB_IS_SILENT(%struct.scb* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @TRUE, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %118, %114, %106
  br label %121

121:                                              ; preds = %120, %91
  store i32 0, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %127 = call i8* @ahd_name(%struct.ahd_softc* %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @ahd_lqistat1_print(i32 %129, i32* %11, i32 50)
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @ahd_lastphase_print(i32 %131, i32* %11, i32 50)
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ahd_scsisigi_print(i32 %133, i32* %11, i32 50)
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @ahd_perrdiag_print(i32 %135, i32* %11, i32 50)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %139 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %138)
  br label %140

140:                                              ; preds = %125, %121
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @LQIOVERI_LQ, align 4
  %143 = load i32, i32* @LQIOVERI_NLQ, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %140
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @FALSE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %153 = call i8* @ahd_name(%struct.ahd_softc* %152)
  %154 = load i32, i32* %5, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %147
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %158 = load i32, i32* @TRUE, align 4
  %159 = call i32 @ahd_reset_channel(%struct.ahd_softc* %157, i8 signext 65, i32 %158)
  br label %269

160:                                              ; preds = %140
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @LQICRCI_LQ, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %167 = load i32, i32* @LQCTL2, align 4
  %168 = load i32, i32* @LQIRETRY, align 4
  %169 = call i32 @ahd_outb(%struct.ahd_softc* %166, i32 %167, i32 %168)
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %241

171:                                              ; preds = %160
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @LQICRCI_NLQ, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %171
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @FALSE, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %176
  %183 = load %struct.scb*, %struct.scb** %3, align 8
  %184 = icmp eq %struct.scb* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %187 = call i8* @ahd_name(%struct.ahd_softc* %186)
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %187)
  %189 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @ahd_reset_channel(%struct.ahd_softc* %189, i8 signext 65, i32 %190)
  br label %269

192:                                              ; preds = %182
  br label %240

193:                                              ; preds = %171
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* @LQIBADLQI, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %200 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %201 = load i32, i32* @TRUE, align 4
  %202 = call i32 @ahd_reset_channel(%struct.ahd_softc* %200, i8 signext 65, i32 %201)
  br label %269

203:                                              ; preds = %193
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @PARITYERR, align 4
  %206 = load i32, i32* @PREVPHASE, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = load i32, i32* @PARITYERR, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %238

211:                                              ; preds = %203
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @P_DATAIN_DT, align 4
  %214 = xor i32 %213, -1
  %215 = and i32 %212, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %211
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @FALSE, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i32, i32* %8, align 4
  %223 = call %struct.TYPE_2__* @ahd_lookup_phase_entry(i32 %222)
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %221, %217
  %228 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %229 = load i32, i32* @SCSIDAT, align 4
  %230 = call i32 @ahd_inb(%struct.ahd_softc* %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %211
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @P_MESGIN, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = load i32, i32* @MSG_PARITY_ERROR, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %235, %231
  br label %238

238:                                              ; preds = %237, %203
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %192
  br label %241

241:                                              ; preds = %240, %165
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %245 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  %246 = load %struct.scb*, %struct.scb** %3, align 8
  %247 = icmp ne %struct.scb* %246, null
  br i1 %247, label %248, label %258

248:                                              ; preds = %242
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32, i32* @SCB_TRANSMISSION_ERROR, align 4
  %254 = load %struct.scb*, %struct.scb** %3, align 8
  %255 = getelementptr inbounds %struct.scb, %struct.scb* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %248, %242
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %260 = load i32, i32* @MSG_OUT, align 4
  %261 = load i32, i32* @HOST_MSG, align 4
  %262 = call i32 @ahd_outb(%struct.ahd_softc* %259, i32 %260, i32 %261)
  %263 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %264 = load i32, i32* @CLRINT, align 4
  %265 = load i32, i32* @CLRSCSIINT, align 4
  %266 = call i32 @ahd_outb(%struct.ahd_softc* %263, i32 %264, i32 %265)
  %267 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %268 = call i32 @ahd_unpause(%struct.ahd_softc* %267)
  br label %269

269:                                              ; preds = %258, %198, %185, %156
  ret void
}

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_set_active_fifo(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @SCB_IS_SILENT(%struct.scb*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_lqistat1_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_lastphase_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_scsisigi_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_perrdiag_print(i32, i32*, i32) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local %struct.TYPE_2__* @ahd_lookup_phase_entry(i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
