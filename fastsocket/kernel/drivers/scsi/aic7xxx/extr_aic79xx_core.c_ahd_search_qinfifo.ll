; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_qinfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_search_qinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scb = type { i32 }

@AHD_MODE_CCHAN = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@CCARREN = common dso_local global i32 0, align 4
@CCSCBEN = common dso_local global i32 0, align 4
@CCSCBDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"qinstart = %d qinfifonext = %d\0AQINFIFO:\00", align 1
@NEXT_QUEUED_SCB_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"qinpos = %d, SCB index = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Loop 1\0A\00", align 1
@SCB_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Inactive SCB in qinfifo\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"\0AWAITING_TID_QUEUES:\0A\00", align 1
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@SEQ_FLAGS2 = common dso_local global i32 0, align 4
@PENDING_MK_MESSAGE = common dso_local global i32 0, align 4
@MK_MESSAGE_SCB = common dso_local global i32 0, align 4
@WAITING_TID_HEAD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"TID LIST LOOP\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"%s: Waiting TID List inconsistency. SCB index == 0x%x, yet numscbs == 0x%x.\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"for safety\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%s: SCB = 0x%x Not Active!\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Waiting TID List traversal\0A\00", align 1
@SCB_NEXT2 = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_UNKNOWN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"       %d ( \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Inactive SCB pending MK_MSG\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Removing MK_MSG scb\0A\00", align 1
@WAITING_SCB_TAILS = common dso_local global i32 0, align 4
@CMDS_PENDING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Queueing mk_msg_scb\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_search_qinfifo(%struct.ahd_softc* %0, i32 %1, i8 signext %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.ahd_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scb*, align 8
  %18 = alloca %struct.scb*, align 8
  %19 = alloca %struct.scb*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8 %2, i8* %11, align 1
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %36 = call i32 @ahd_save_modes(%struct.ahd_softc* %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %38 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %39 = load i32, i32* @AHD_MODE_CCHAN, align 4
  %40 = call i32 @ahd_set_modes(%struct.ahd_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %42 = load i32, i32* @CCSCBCTL, align 4
  %43 = call i32 @ahd_inb(%struct.ahd_softc* %41, i32 %42)
  %44 = load i32, i32* @CCARREN, align 4
  %45 = load i32, i32* @CCSCBEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CCSCBDIR, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = load i32, i32* @CCARREN, align 4
  %51 = load i32, i32* @CCSCBEN, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CCSCBDIR, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %8
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %58 = load i32, i32* @CCSCBCTL, align 4
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %60 = load i32, i32* @CCSCBCTL, align 4
  %61 = call i32 @ahd_inb(%struct.ahd_softc* %59, i32 %60)
  %62 = load i32, i32* @CCARREN, align 4
  %63 = load i32, i32* @CCSCBEN, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = call i32 @ahd_outb(%struct.ahd_softc* %57, i32 %58, i32 %66)
  br label %68

68:                                               ; preds = %77, %56
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %70 = load i32, i32* @CCSCBCTL, align 4
  %71 = call i32 @ahd_inb(%struct.ahd_softc* %69, i32 %70)
  %72 = load i32, i32* @CCARREN, align 4
  %73 = load i32, i32* @CCSCBEN, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %68

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %8
  %80 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %81 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @AHD_QIN_WRAP(i32 %82)
  store i32 %83, i32* %23, align 4
  %84 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %85 = call i32 @ahd_get_snscb_qoff(%struct.ahd_softc* %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @AHD_QIN_WRAP(i32 %86)
  store i32 %87, i32* %22, align 4
  store i32 0, i32* %30, align 4
  store %struct.scb* null, %struct.scb** %19, align 8
  %88 = load i32, i32* %16, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* %21, align 4
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %93 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %21, align 4
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %99 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ahd_le32toh(i32 %104)
  store i32 %105, i32* %29, align 4
  %106 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %107 = load i32, i32* @NEXT_QUEUED_SCB_ADDR, align 4
  %108 = load i32, i32* %29, align 4
  %109 = call i32 @ahd_outl(%struct.ahd_softc* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %188, %96
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %192

114:                                              ; preds = %110
  %115 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %116 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %117 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %115, i32 %122)
  store %struct.scb* %123, %struct.scb** %17, align 8
  %124 = load %struct.scb*, %struct.scb** %17, align 8
  %125 = icmp eq %struct.scb* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %114
  %127 = load i32, i32* %22, align 4
  %128 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %129 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %134)
  %136 = call i32 @panic(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %137

137:                                              ; preds = %126, %114
  %138 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %139 = load %struct.scb*, %struct.scb** %17, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i8, i8* %11, align 1
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i64 @ahd_match_scb(%struct.ahd_softc* %138, %struct.scb* %139, i32 %140, i8 signext %141, i32 %142, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %182

147:                                              ; preds = %137
  %148 = load i32, i32* %30, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %30, align 4
  %150 = load i32, i32* %16, align 4
  switch i32 %150, label %181 [
    i32 131, label %151
    i32 128, label %165
    i32 129, label %166
    i32 130, label %175
  ]

151:                                              ; preds = %147
  %152 = load %struct.scb*, %struct.scb** %17, align 8
  %153 = getelementptr inbounds %struct.scb, %struct.scb* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @SCB_ACTIVE, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %151
  %161 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %162 = load %struct.scb*, %struct.scb** %17, align 8
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @ahd_done_with_status(%struct.ahd_softc* %161, %struct.scb* %162, i32 %163)
  br label %165

165:                                              ; preds = %147, %160
  br label %181

166:                                              ; preds = %147
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %168 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %22, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %147, %166
  %176 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %177 = load %struct.scb*, %struct.scb** %19, align 8
  %178 = load %struct.scb*, %struct.scb** %17, align 8
  %179 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %176, %struct.scb* %177, %struct.scb* %178)
  %180 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %180, %struct.scb** %19, align 8
  br label %181

181:                                              ; preds = %147, %175, %165
  br label %188

182:                                              ; preds = %137
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %184 = load %struct.scb*, %struct.scb** %19, align 8
  %185 = load %struct.scb*, %struct.scb** %17, align 8
  %186 = call i32 @ahd_qinfifo_requeue(%struct.ahd_softc* %183, %struct.scb* %184, %struct.scb* %185)
  %187 = load %struct.scb*, %struct.scb** %17, align 8
  store %struct.scb* %187, %struct.scb** %19, align 8
  br label %188

188:                                              ; preds = %182, %181
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, 1
  %191 = call i32 @AHD_QIN_WRAP(i32 %190)
  store i32 %191, i32* %22, align 4
  br label %110

192:                                              ; preds = %110
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %195 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @ahd_set_hnscb_qoff(%struct.ahd_softc* %193, i32 %196)
  %198 = load i32, i32* %16, align 4
  %199 = icmp eq i32 %198, 129
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %192
  %203 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %204 = load i32, i32* @AHD_MODE_SCSI, align 4
  %205 = load i32, i32* @AHD_MODE_SCSI, align 4
  %206 = call i32 @ahd_set_modes(%struct.ahd_softc* %203, i32 %204, i32 %205)
  %207 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %208 = load i32, i32* @SEQ_FLAGS2, align 4
  %209 = call i32 @ahd_inb(%struct.ahd_softc* %207, i32 %208)
  store i32 %209, i32* %27, align 4
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %202
  %215 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %216 = load i32, i32* @MK_MESSAGE_SCB, align 4
  %217 = call i32 @ahd_inw(%struct.ahd_softc* %215, i32 %216)
  store i32 %217, i32* %26, align 4
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %219 = load i32, i32* %26, align 4
  %220 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %218, i32 %219)
  store %struct.scb* %220, %struct.scb** %18, align 8
  br label %222

221:                                              ; preds = %202
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %222

222:                                              ; preds = %221, %214
  %223 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %224 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %223)
  store i32 %224, i32* %28, align 4
  %225 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %226 = load i32, i32* @WAITING_TID_HEAD, align 4
  %227 = call i32 @ahd_inw(%struct.ahd_softc* %225, i32 %226)
  store i32 %227, i32* %24, align 4
  %228 = load i32, i32* @SCB_LIST_NULL, align 4
  store i32 %228, i32* %25, align 4
  store i32 0, i32* %31, align 4
  %229 = load i32, i32* %24, align 4
  store i32 %229, i32* %26, align 4
  br label %230

230:                                              ; preds = %433, %222
  %231 = load i32, i32* %26, align 4
  %232 = call i64 @SCBID_IS_NULL(i32 %231)
  %233 = icmp ne i64 %232, 0
  %234 = xor i1 %233, true
  br i1 %234, label %235, label %435

235:                                              ; preds = %230
  %236 = load i32, i32* %31, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %31, align 4
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %235
  %244 = load i32, i32* %26, align 4
  %245 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %246 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp sge i32 %244, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %243
  %251 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %252 = call i8* @ahd_name(%struct.ahd_softc* %251)
  %253 = load i32, i32* %26, align 4
  %254 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %255 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i8* %252, i32 %253, i32 %257)
  %259 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %260 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %259)
  %261 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %262

262:                                              ; preds = %250, %243
  %263 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %264 = load i32, i32* %26, align 4
  %265 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %263, i32 %264)
  store %struct.scb* %265, %struct.scb** %17, align 8
  %266 = load %struct.scb*, %struct.scb** %17, align 8
  %267 = icmp eq %struct.scb* %266, null
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %270 = call i8* @ahd_name(%struct.ahd_softc* %269)
  %271 = load i32, i32* %26, align 4
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %270, i32 %271)
  %273 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %274

274:                                              ; preds = %268, %262
  %275 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %276 = load i32, i32* %26, align 4
  %277 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %275, i32 %276)
  %278 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %279 = load i32, i32* @SCB_NEXT2, align 4
  %280 = call i32 @ahd_inw_scbram(%struct.ahd_softc* %278, i32 %279)
  store i32 %280, i32* %24, align 4
  %281 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %282 = load %struct.scb*, %struct.scb** %17, align 8
  %283 = load i32, i32* %10, align 4
  %284 = load i8, i8* %11, align 1
  %285 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %286 = load i32, i32* @SCB_LIST_NULL, align 4
  %287 = load i32, i32* @ROLE_UNKNOWN, align 4
  %288 = call i64 @ahd_match_scb(%struct.ahd_softc* %281, %struct.scb* %282, i32 %283, i8 signext %284, i32 %285, i32 %286, i32 %287)
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %274
  %291 = load i32, i32* %26, align 4
  store i32 %291, i32* %25, align 4
  br label %433

292:                                              ; preds = %274
  %293 = load i32, i32* %16, align 4
  %294 = icmp eq i32 %293, 129
  br i1 %294, label %295, label %300

295:                                              ; preds = %292
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %297 = load %struct.scb*, %struct.scb** %17, align 8
  %298 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %296, %struct.scb* %297)
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %295, %292
  %301 = load i32, i32* %26, align 4
  store i32 %301, i32* %32, align 4
  %302 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %303 = load i32, i32* %10, align 4
  %304 = load i8, i8* %11, align 1
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* %15, align 4
  %309 = load i32, i32* %16, align 4
  %310 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %311 = load %struct.scb*, %struct.scb** %17, align 8
  %312 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %310, %struct.scb* %311)
  %313 = call i64 @ahd_search_scb_list(%struct.ahd_softc* %302, i32 %303, i8 signext %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32* %32, i32* %33, i32 %312)
  %314 = load i32, i32* %30, align 4
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %315, %313
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %30, align 4
  %318 = load %struct.scb*, %struct.scb** %18, align 8
  %319 = icmp ne %struct.scb* %318, null
  br i1 %319, label %320, label %381

320:                                              ; preds = %300
  %321 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %322 = load %struct.scb*, %struct.scb** %18, align 8
  %323 = load i32, i32* %10, align 4
  %324 = load i8, i8* %11, align 1
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %14, align 4
  %328 = call i64 @ahd_match_scb(%struct.ahd_softc* %321, %struct.scb* %322, i32 %323, i8 signext %324, i32 %325, i32 %326, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %381

330:                                              ; preds = %320
  %331 = load i32, i32* %30, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %30, align 4
  %333 = load i32, i32* %16, align 4
  switch i32 %333, label %380 [
    i32 131, label %334
    i32 128, label %348
    i32 129, label %375
    i32 130, label %379
  ]

334:                                              ; preds = %330
  %335 = load %struct.scb*, %struct.scb** %18, align 8
  %336 = getelementptr inbounds %struct.scb, %struct.scb* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @SCB_ACTIVE, align 4
  %339 = and i32 %337, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %334
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %343

343:                                              ; preds = %341, %334
  %344 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %345 = load %struct.scb*, %struct.scb** %18, align 8
  %346 = load i32, i32* %15, align 4
  %347 = call i32 @ahd_done_with_status(%struct.ahd_softc* %344, %struct.scb* %345, i32 %346)
  br label %348

348:                                              ; preds = %330, %343
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %350 = load i32, i32* @WAITING_SCB_TAILS, align 4
  %351 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %352 = load %struct.scb*, %struct.scb** %18, align 8
  %353 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %351, %struct.scb* %352)
  %354 = mul nsw i32 2, %353
  %355 = add nsw i32 %350, %354
  store i32 %355, i32* %34, align 4
  %356 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %357 = load i32, i32* %34, align 4
  %358 = load i32, i32* %33, align 4
  %359 = call i32 @ahd_outw(%struct.ahd_softc* %356, i32 %357, i32 %358)
  %360 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %361 = xor i32 %360, -1
  %362 = load i32, i32* %27, align 4
  %363 = and i32 %362, %361
  store i32 %363, i32* %27, align 4
  %364 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %365 = load i32, i32* @SEQ_FLAGS2, align 4
  %366 = load i32, i32* %27, align 4
  %367 = call i32 @ahd_outb(%struct.ahd_softc* %364, i32 %365, i32 %366)
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %369 = load i32, i32* @CMDS_PENDING, align 4
  %370 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %371 = load i32, i32* @CMDS_PENDING, align 4
  %372 = call i32 @ahd_inw(%struct.ahd_softc* %370, i32 %371)
  %373 = sub nsw i32 %372, 1
  %374 = call i32 @ahd_outw(%struct.ahd_softc* %368, i32 %369, i32 %373)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %380

375:                                              ; preds = %330
  %376 = load %struct.scb*, %struct.scb** %17, align 8
  %377 = call i32 @SCB_GET_TAG(%struct.scb* %376)
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %377)
  br label %379

379:                                              ; preds = %330, %375
  br label %380

380:                                              ; preds = %330, %379, %348
  br label %381

381:                                              ; preds = %380, %320, %300
  %382 = load %struct.scb*, %struct.scb** %18, align 8
  %383 = icmp ne %struct.scb* %382, null
  br i1 %383, label %384, label %411

384:                                              ; preds = %381
  %385 = load i32, i32* %32, align 4
  %386 = call i64 @SCBID_IS_NULL(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %411

388:                                              ; preds = %384
  %389 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %390 = load %struct.scb*, %struct.scb** %17, align 8
  %391 = load i32, i32* %10, align 4
  %392 = load i8, i8* %11, align 1
  %393 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %394 = load i32, i32* @SCB_LIST_NULL, align 4
  %395 = load i32, i32* @ROLE_UNKNOWN, align 4
  %396 = call i64 @ahd_match_scb(%struct.ahd_softc* %389, %struct.scb* %390, i32 %391, i8 signext %392, i32 %393, i32 %394, i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %411

398:                                              ; preds = %388
  %399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %400 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %401 = load i32, i32* @MK_MESSAGE_SCB, align 4
  %402 = call i32 @ahd_inw(%struct.ahd_softc* %400, i32 %401)
  store i32 %402, i32* %32, align 4
  %403 = load i32, i32* @PENDING_MK_MESSAGE, align 4
  %404 = xor i32 %403, -1
  %405 = load i32, i32* %27, align 4
  %406 = and i32 %405, %404
  store i32 %406, i32* %27, align 4
  %407 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %408 = load i32, i32* @SEQ_FLAGS2, align 4
  %409 = load i32, i32* %27, align 4
  %410 = call i32 @ahd_outb(%struct.ahd_softc* %407, i32 %408, i32 %409)
  store %struct.scb* null, %struct.scb** %18, align 8
  br label %411

411:                                              ; preds = %398, %388, %384, %381
  %412 = load i32, i32* %32, align 4
  %413 = load i32, i32* %26, align 4
  %414 = icmp ne i32 %412, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %411
  %416 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %417 = load i32, i32* %25, align 4
  %418 = load i32, i32* %32, align 4
  %419 = load i32, i32* %24, align 4
  %420 = call i32 @ahd_stitch_tid_list(%struct.ahd_softc* %416, i32 %417, i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %415, %411
  %422 = load i32, i32* %32, align 4
  %423 = call i64 @SCBID_IS_NULL(i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %427, label %425

425:                                              ; preds = %421
  %426 = load i32, i32* %32, align 4
  store i32 %426, i32* %25, align 4
  br label %427

427:                                              ; preds = %425, %421
  %428 = load i32, i32* %16, align 4
  %429 = icmp eq i32 %428, 129
  br i1 %429, label %430, label %432

430:                                              ; preds = %427
  %431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  br label %432

432:                                              ; preds = %430, %427
  br label %433

433:                                              ; preds = %432, %290
  %434 = load i32, i32* %24, align 4
  store i32 %434, i32* %26, align 4
  br label %230

435:                                              ; preds = %230
  %436 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %437 = load i32, i32* %28, align 4
  %438 = call i32 @ahd_set_scbptr(%struct.ahd_softc* %436, i32 %437)
  %439 = load %struct.ahd_softc*, %struct.ahd_softc** %9, align 8
  %440 = load i32, i32* %20, align 4
  %441 = call i32 @ahd_restore_modes(%struct.ahd_softc* %439, i32 %440)
  %442 = load i32, i32* %30, align 4
  ret i32 %442
}

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @AHD_QIN_WRAP(i32) #1

declare dso_local i32 @ahd_get_snscb_qoff(%struct.ahd_softc*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i32, i32) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ahd_match_scb(%struct.ahd_softc*, %struct.scb*, i32, i8 signext, i32, i32, i32) #1

declare dso_local i32 @ahd_done_with_status(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_qinfifo_requeue(%struct.ahd_softc*, %struct.scb*, %struct.scb*) #1

declare dso_local i32 @ahd_set_hnscb_qoff(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local i64 @SCBID_IS_NULL(i32) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_scbptr(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inw_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @ahd_search_scb_list(%struct.ahd_softc*, i32, i8 signext, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_stitch_tid_list(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
