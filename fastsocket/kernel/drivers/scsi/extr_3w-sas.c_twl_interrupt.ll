; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_3w-sas.c_twl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32*, i32, i64*, %struct.TYPE_20__*, %struct.scsi_cmnd**, i32, i32, %struct.TYPE_26__**, %struct.TYPE_19__**, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)* }
%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@TWL_HISTATUS_VALID_INTERRUPT = common dso_local global i32 0, align 4
@TW_IN_RESET = common dso_local global i32 0, align 4
@TWL_HISTATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TWL_HISTATUS_RESPONSE_INTERRUPT = common dso_local global i32 0, align 4
@TW_Q_LENGTH = common dso_local global i32 0, align 4
@TW_S_POSTED = common dso_local global i64 0, align 8
@TW_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Received a request id that wasn't posted\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Error completing AEN during attention interrupt\00", align 1
@TW_IOCTL_CHRDEV_FREE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@TW_S_COMPLETED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scsi_cmnd*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_lock(i32 %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %26 = call i32 @TWL_HISTAT_REG_ADDR(%struct.TYPE_25__* %25)
  %27 = call i8* @readl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @TWL_HISTATUS_VALID_INTERRUPT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  br label %337

34:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %35 = load i32, i32* @TW_IN_RESET, align 4
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 9
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %337

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @TWL_HISTATUS_ATTENTION_INTERRUPT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = call i64 @twl_handle_attention_interrupt(%struct.TYPE_25__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = call i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_25__* %51)
  br label %337

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %331, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @TWL_HISTATUS_RESPONSE_INTERRUPT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %336

60:                                               ; preds = %55
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = call i32 @TWL_HOBQPL_REG_ADDR(%struct.TYPE_25__* %61)
  %63 = call i8* @readl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @TW_NOTMFA_OUT(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %164, label %69

69:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %160, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @TW_Q_LENGTH, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %163

74:                                               ; preds = %70
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %159

84:                                               ; preds = %74
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 8
  %87 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %87, i64 %89
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le16_to_cpu(i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 4
  %98 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %98, i64 %100
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %101, align 8
  %103 = icmp ne %struct.scsi_cmnd* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @twl_fill_sense(%struct.TYPE_25__* %105, i32 %106, i32 %107, i32 1, i32 1)
  store i32 %108, i32* %8, align 4
  br label %137

109:                                              ; preds = %84
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @twl_fill_sense(%struct.TYPE_25__* %116, i32 %117, i32 %118, i32 0, i32 1)
  store i32 %119, i32* %8, align 4
  br label %136

120:                                              ; preds = %109
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %123, i64 %125
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 8
  %130 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %130, i64 %132
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = call i32 @memcpy(%struct.TYPE_26__* %127, %struct.TYPE_19__* %134, i32 4)
  br label %136

136:                                              ; preds = %120, %115
  br label %137

137:                                              ; preds = %136, %104
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 32
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %147 = call i32 @TWL_HOBQPH_REG_ADDR(%struct.TYPE_25__* %146)
  %148 = call i32 @writel(i32 %145, i32 %147)
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = call i32 @TWL_HOBQPL_REG_ADDR(%struct.TYPE_25__* %156)
  %158 = call i32 @writel(i32 %155, i32 %157)
  br label %163

159:                                              ; preds = %74
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %70

163:                                              ; preds = %137, %70
  br label %167

164:                                              ; preds = %60
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @TW_RESID_OUT(i32 %165)
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %164, %163
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 7
  %170 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %170, i64 %172
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %173, align 8
  store %struct.TYPE_26__* %174, %struct.TYPE_26__** %16, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 2
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @TW_S_POSTED, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %167
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 4
  %187 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %187, i64 %189
  %191 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %190, align 8
  %192 = icmp ne %struct.scsi_cmnd* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load i32, i32* @TW_DRIVER, align 4
  %198 = call i32 @TW_PRINTK(%struct.TYPE_20__* %196, i32 %197, i32 14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %200 = call i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_25__* %199)
  br label %337

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201, %167
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 4
  %205 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %205, i64 %207
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %208, align 8
  %210 = icmp eq %struct.scsi_cmnd* %209, null
  br i1 %210, label %211, label %237

211:                                              ; preds = %202
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %212, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %211
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %219 = load i32, i32* %14, align 4
  %220 = call i64 @twl_aen_complete(%struct.TYPE_25__* %218, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = load i32, i32* @TW_DRIVER, align 4
  %227 = call i32 @TW_PRINTK(%struct.TYPE_20__* %225, i32 %226, i32 15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %228

228:                                              ; preds = %222, %217
  br label %236

229:                                              ; preds = %211
  %230 = load i32, i32* @TW_IOCTL_CHRDEV_FREE, align 4
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 6
  %235 = call i32 @wake_up(i32* %234)
  br label %236

236:                                              ; preds = %229, %228
  br label %331

237:                                              ; preds = %202
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 4
  %240 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %240, i64 %242
  %244 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %243, align 8
  store %struct.scsi_cmnd* %244, %struct.scsi_cmnd** %15, align 8
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %237
  %248 = load i32, i32* @DID_OK, align 4
  %249 = shl i32 %248, 16
  %250 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %251 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 8
  br label %252

252:                                              ; preds = %247, %237
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %254 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %253)
  %255 = icmp sle i32 %254, 1
  br i1 %255, label %256, label %296

256:                                              ; preds = %252
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %296

263:                                              ; preds = %256
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i64 0
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 4
  %274 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %274, i64 %276
  %278 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %277, align 8
  %279 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %278)
  %280 = icmp slt i64 %271, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %263
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %283 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  %284 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %283)
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %284, %292
  %294 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %282, i64 %293)
  br label %295

295:                                              ; preds = %281, %263
  br label %296

296:                                              ; preds = %295, %256, %252
  %297 = load i64, i64* @TW_S_COMPLETED, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 2
  %300 = load i64*, i64** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  store i64 %297, i64* %303, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %305 = load i32, i32* %14, align 4
  %306 = call i32 @twl_free_request_id(%struct.TYPE_25__* %304, i32 %305)
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 8
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %308, align 8
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 4
  %313 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %312, align 8
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %313, i64 %315
  %317 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %316, align 8
  %318 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %317, i32 0, i32 1
  %319 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %318, align 8
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 4
  %322 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %321, align 8
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %322, i64 %324
  %326 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %325, align 8
  %327 = call i32 %319(%struct.scsi_cmnd* %326)
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %329 = load i32, i32* %14, align 4
  %330 = call i32 @twl_unmap_scsi_data(%struct.TYPE_25__* %328, i32 %329)
  br label %331

331:                                              ; preds = %296, %236
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %333 = call i32 @TWL_HISTAT_REG_ADDR(%struct.TYPE_25__* %332)
  %334 = call i8* @readl(i32 %333)
  %335 = ptrtoint i8* %334 to i32
  store i32 %335, i32* %10, align 4
  br label %55

336:                                              ; preds = %55
  br label %337

337:                                              ; preds = %336, %193, %50, %40, %33
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @spin_unlock(i32 %342)
  %344 = load i32, i32* %7, align 4
  %345 = call i32 @IRQ_RETVAL(i32 %344)
  ret i32 %345
}

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @TWL_HISTAT_REG_ADDR(%struct.TYPE_25__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @twl_handle_attention_interrupt(%struct.TYPE_25__*) #1

declare dso_local i32 @TWL_MASK_INTERRUPTS(%struct.TYPE_25__*) #1

declare dso_local i32 @TWL_HOBQPL_REG_ADDR(%struct.TYPE_25__*) #1

declare dso_local i32 @TW_NOTMFA_OUT(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @twl_fill_sense(%struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_26__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @TWL_HOBQPH_REG_ADDR(%struct.TYPE_25__*) #1

declare dso_local i32 @TW_RESID_OUT(i32) #1

declare dso_local i32 @TW_PRINTK(%struct.TYPE_20__*, i32, i32, i8*) #1

declare dso_local i64 @twl_aen_complete(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @twl_free_request_id(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @twl_unmap_scsi_data(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
