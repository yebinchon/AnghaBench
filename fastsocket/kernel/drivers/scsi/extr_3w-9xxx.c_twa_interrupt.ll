; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-9xxx.c_twa_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_28__ = type { i64*, i64, i32*, i64, i32, %struct.TYPE_23__*, %struct.scsi_cmnd**, i32, i32, %struct.TYPE_29__**, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }

@TW_STATUS_VALID_INTERRUPT = common dso_local global i32 0, align 4
@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_STATUS_HOST_INTERRUPT = common dso_local global i32 0, align 4
@TW_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TW_IN_ATTENTION_LOOP = common dso_local global i32 0, align 4
@TW_S_COMPLETED = common dso_local global i8* null, align 8
@TW_STATUS_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TW_S_PENDING = common dso_local global i64 0, align 8
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Found request id that wasn't pending\00", align 1
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_STATUS_RESPONSE_INTERRUPT = common dso_local global i32 0, align 4
@TW_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@TW_S_POSTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Received a request id that wasn't posted\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Error completing AEN during attention interrupt\00", align 1
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twa_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spin_lock(i32 %19)
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %22 = call i32 @TW_STATUS_REG_ADDR(%struct.TYPE_28__* %21)
  %23 = call i8* @readl(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @TW_STATUS_VALID_INTERRUPT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %407

30:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  %31 = load i32, i32* @TW_IN_RESET, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 10
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %407

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @twa_check_bits(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @twa_decode_bits(%struct.TYPE_28__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %48 = call i32 @TW_CLEAR_ALL_INTERRUPTS(%struct.TYPE_28__* %47)
  br label %407

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TW_STATUS_HOST_INTERRUPT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %57 = call i32 @TW_CLEAR_HOST_INTERRUPT(%struct.TYPE_28__* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TW_STATUS_ATTENTION_INTERRUPT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %65 = call i32 @TW_CLEAR_ATTENTION_INTERRUPT(%struct.TYPE_28__* %64)
  %66 = load i32, i32* @TW_IN_ATTENTION_LOOP, align 4
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 10
  %69 = call i32 @test_and_set_bit(i32 %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %73 = call i32 @twa_get_request_id(%struct.TYPE_28__* %72, i32* %5)
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @twa_aen_read_queue(%struct.TYPE_28__* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = load i8*, i8** @TW_S_COMPLETED, align 8
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @twa_free_request_id(%struct.TYPE_28__* %88, i32 %89)
  %91 = load i32, i32* @TW_IN_ATTENTION_LOOP, align 4
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 10
  %94 = call i32 @clear_bit(i32 %91, i32* %93)
  br label %95

95:                                               ; preds = %79, %71
  br label %96

96:                                               ; preds = %95, %63
  br label %97

97:                                               ; preds = %96, %58
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @TW_STATUS_COMMAND_INTERRUPT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %158

102:                                              ; preds = %97
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %104 = call i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_28__* %103)
  br label %105

105:                                              ; preds = %156, %102
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %157

110:                                              ; preds = %105
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %5, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TW_S_PENDING, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %110
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %130, align 8
  %132 = load i32, i32* @TW_DRIVER, align 4
  %133 = call i32 @TW_PRINTK(%struct.TYPE_23__* %131, i32 %132, i32 25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %135 = call i32 @TW_CLEAR_ALL_INTERRUPTS(%struct.TYPE_28__* %134)
  br label %407

136:                                              ; preds = %110
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i64 @twa_post_command_packet(%struct.TYPE_28__* %137, i32 %138, i32 1)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %136
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add i64 %144, 1
  %146 = load i32, i32* @TW_Q_LENGTH, align 4
  %147 = sext i32 %146 to i64
  %148 = urem i64 %145, %147
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, -1
  store i64 %154, i64* %152, align 8
  br label %156

155:                                              ; preds = %136
  br label %157

156:                                              ; preds = %141
  br label %105

157:                                              ; preds = %155, %105
  br label %158

158:                                              ; preds = %157, %97
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @TW_STATUS_RESPONSE_INTERRUPT, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %406

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %404, %163
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @TW_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %405

169:                                              ; preds = %164
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %171 = call i32 @TW_RESPONSE_QUEUE_REG_ADDR(%struct.TYPE_28__* %170)
  %172 = call i8* @readl(i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @TW_RESID_OUT(i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 9
  %179 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %179, i64 %181
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %182, align 8
  store %struct.TYPE_29__* %183, %struct.TYPE_29__** %9, align 8
  store i32 0, i32* %6, align 4
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %169
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 6
  %193 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %192, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %193, i64 %195
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %196, align 8
  %198 = icmp ne %struct.scsi_cmnd* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @twa_fill_sense(%struct.TYPE_28__* %200, i32 %201, i32 1, i32 1)
  store i32 %202, i32* %6, align 4
  br label %214

203:                                              ; preds = %190
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %211 = load i32, i32* %5, align 4
  %212 = call i32 @twa_fill_sense(%struct.TYPE_28__* %210, i32 %211, i32 0, i32 1)
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %209, %203
  br label %214

214:                                              ; preds = %213, %199
  br label %215

215:                                              ; preds = %214, %169
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @TW_S_POSTED, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %243

225:                                              ; preds = %215
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 6
  %228 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %228, i64 %230
  %232 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %231, align 8
  %233 = icmp ne %struct.scsi_cmnd* %232, null
  br i1 %233, label %234, label %242

234:                                              ; preds = %225
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %236, align 8
  %238 = load i32, i32* @TW_DRIVER, align 4
  %239 = call i32 @TW_PRINTK(%struct.TYPE_23__* %237, i32 %238, i32 26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %241 = call i32 @TW_CLEAR_ALL_INTERRUPTS(%struct.TYPE_28__* %240)
  br label %407

242:                                              ; preds = %225
  br label %243

243:                                              ; preds = %242, %215
  %244 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 6
  %246 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %246, i64 %248
  %250 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %249, align 8
  %251 = icmp eq %struct.scsi_cmnd* %250, null
  br i1 %251, label %252, label %278

252:                                              ; preds = %243
  %253 = load i32, i32* %5, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %253, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %252
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %260 = load i32, i32* %5, align 4
  %261 = call i64 @twa_aen_complete(%struct.TYPE_28__* %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = load i32, i32* @TW_DRIVER, align 4
  %268 = call i32 @TW_PRINTK(%struct.TYPE_23__* %266, i32 %267, i32 27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %269

269:                                              ; preds = %263, %258
  br label %277

270:                                              ; preds = %252
  %271 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 8
  %276 = call i32 @wake_up(i32* %275)
  br label %277

277:                                              ; preds = %270, %269
  br label %387

278:                                              ; preds = %243
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 6
  %281 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %281, i64 %283
  %285 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %284, align 8
  store %struct.scsi_cmnd* %285, %struct.scsi_cmnd** %12, align 8
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @twa_scsiop_execute_scsi_complete(%struct.TYPE_28__* %286, i32 %287)
  %289 = load i32, i32* %6, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %278
  %292 = load i32, i32* @DID_OK, align 4
  %293 = shl i32 %292, 16
  %294 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %295 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %291, %278
  %297 = load i32, i32* %6, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %307

299:                                              ; preds = %296
  %300 = load i32, i32* @DID_OK, align 4
  %301 = shl i32 %300, 16
  %302 = load i32, i32* @CHECK_CONDITION, align 4
  %303 = shl i32 %302, 1
  %304 = or i32 %301, %303
  %305 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %306 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %305, i32 0, i32 0
  store i32 %304, i32* %306, align 8
  br label %307

307:                                              ; preds = %299, %296
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %309 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %308)
  %310 = icmp sle i32 %309, 1
  br i1 %310, label %311, label %351

311:                                              ; preds = %307
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %351

318:                                              ; preds = %311
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 6
  %329 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %328, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %329, i64 %331
  %333 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %332, align 8
  %334 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %333)
  %335 = icmp slt i64 %326, %334
  br i1 %335, label %336, label %350

336:                                              ; preds = %318
  %337 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %338 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %12, align 8
  %339 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %338)
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 1
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i64 0
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = sub nsw i64 %339, %347
  %349 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %337, i64 %348)
  br label %350

350:                                              ; preds = %336, %318
  br label %351

351:                                              ; preds = %350, %311, %307
  %352 = load i8*, i8** @TW_S_COMPLETED, align 8
  %353 = ptrtoint i8* %352 to i64
  %354 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %354, i32 0, i32 0
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  store i64 %353, i64* %359, align 8
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %361 = load i32, i32* %5, align 4
  %362 = call i32 @twa_free_request_id(%struct.TYPE_28__* %360, i32 %361)
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %364, align 8
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i32 0, i32 6
  %369 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %368, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %369, i64 %371
  %373 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %372, align 8
  %374 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %373, i32 0, i32 1
  %375 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %374, align 8
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 6
  %378 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %377, align 8
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %378, i64 %380
  %382 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %381, align 8
  %383 = call i32 %375(%struct.scsi_cmnd* %382)
  %384 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %385 = load i32, i32* %5, align 4
  %386 = call i32 @twa_unmap_scsi_data(%struct.TYPE_28__* %384, i32 %385)
  br label %387

387:                                              ; preds = %351, %277
  %388 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %389 = call i32 @TW_STATUS_REG_ADDR(%struct.TYPE_28__* %388)
  %390 = call i8* @readl(i32 %389)
  %391 = ptrtoint i8* %390 to i32
  store i32 %391, i32* %7, align 4
  %392 = load i32, i32* %7, align 4
  %393 = call i64 @twa_check_bits(i32 %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %387
  %396 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %397 = load i32, i32* %7, align 4
  %398 = call i64 @twa_decode_bits(%struct.TYPE_28__* %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %395
  %401 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %402 = call i32 @TW_CLEAR_ALL_INTERRUPTS(%struct.TYPE_28__* %401)
  br label %407

403:                                              ; preds = %395
  br label %404

404:                                              ; preds = %403, %387
  br label %164

405:                                              ; preds = %164
  br label %406

406:                                              ; preds = %405, %158
  br label %407

407:                                              ; preds = %406, %400, %234, %128, %46, %36, %29
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %408, i32 0, i32 5
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @spin_unlock(i32 %412)
  %414 = load i32, i32* %11, align 4
  %415 = call i32 @IRQ_RETVAL(i32 %414)
  ret i32 %415
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @TW_STATUS_REG_ADDR(%struct.TYPE_28__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @twa_check_bits(i32) #1

declare dso_local i64 @twa_decode_bits(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @TW_CLEAR_ALL_INTERRUPTS(%struct.TYPE_28__*) #1

declare dso_local i32 @TW_CLEAR_HOST_INTERRUPT(%struct.TYPE_28__*) #1

declare dso_local i32 @TW_CLEAR_ATTENTION_INTERRUPT(%struct.TYPE_28__*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @twa_get_request_id(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @twa_aen_read_queue(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @twa_free_request_id(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @TW_MASK_COMMAND_INTERRUPT(%struct.TYPE_28__*) #1

declare dso_local i32 @TW_PRINTK(%struct.TYPE_23__*, i32, i32, i8*) #1

declare dso_local i64 @twa_post_command_packet(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @TW_RESPONSE_QUEUE_REG_ADDR(%struct.TYPE_28__*) #1

declare dso_local i32 @TW_RESID_OUT(i32) #1

declare dso_local i32 @twa_fill_sense(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i64 @twa_aen_complete(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @twa_scsiop_execute_scsi_complete(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @twa_unmap_scsi_data(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
