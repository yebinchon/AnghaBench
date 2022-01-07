; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-irq.c_ivtv_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32, i32, i32, %struct.ivtv_stream*, i32 }
%struct.ivtv_stream = type { i64, i32 }

@IVTV_REG_IRQSTATUS = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_VSYNC = common dso_local global i32 0, align 4
@IVTV_REG_DEC_LINE_FIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"VSync interrupt missed %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"======= valid IRQ bits: 0x%08x ======\0A\00", align 1
@IVTV_IRQ_DEC_DMA_COMPLETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"DEC DMA COMPLETE\0A\00", align 1
@IVTV_IRQ_DMA_READ = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_DMA_COMPLETE = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_PIO_COMPLETE = common dso_local global i32 0, align 4
@IVTV_IRQ_DMA_ERR = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_START_CAP = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_VBI_CAP = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_VBI_RE_INSERT = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_EOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ENC EOS\0A\00", align 1
@IVTV_F_I_EOS = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_DATA_REQ = common dso_local global i32 0, align 4
@IVTV_IRQ_ENC_VIM_RST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"VIM RST\0A\00", align 1
@IVTV_IRQ_DEC_AUD_MODE_CHG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Stereo mode changed\0A\00", align 1
@IVTV_IRQ_DMA = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@IVTV_F_S_DMA_PENDING = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_F_I_UDMA_PENDING = common dso_local global i32 0, align 4
@IVTV_F_I_PIO = common dso_local global i32 0, align 4
@IVTV_F_S_PIO_PENDING = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_F_I_HAVE_WORK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ivtv_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ivtv_stream*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.ivtv*
  store %struct.ivtv* %16, %struct.ivtv** %6, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 3
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* @IVTV_REG_IRQSTATUS, align 4
  %21 = call i32 @read_reg(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @IVTV_REG_IRQSTATUS, align 4
  %33 = call i32 @write_reg(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 0, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %34
  %38 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %39 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @IVTV_IRQ_DEC_VSYNC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %47 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = load i32, i32* @IVTV_REG_DEC_LINE_FIELD, align 4
  %51 = call i32 @read_reg(i32 %50)
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32, i32* @IVTV_REG_DEC_LINE_FIELD, align 4
  %56 = call i32 @read_reg(i32 %55)
  %57 = ashr i32 %56, 16
  %58 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %54, %45
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* @IRQ_NONE, align 4
  store i32 %67, i32* %3, align 4
  br label %341

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 9632767
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (i8*, ...) @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IVTV_IRQ_DEC_DMA_COMPLETE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @IVTV_IRQ_DMA_READ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %90 = call i32 @ivtv_irq_dma_read(%struct.ivtv* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @IVTV_IRQ_ENC_DMA_COMPLETE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %98 = call i32 @ivtv_irq_enc_dma_complete(%struct.ivtv* %97)
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @IVTV_IRQ_ENC_PIO_COMPLETE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %106 = call i32 @ivtv_irq_enc_pio_complete(%struct.ivtv* %105)
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @IVTV_IRQ_DMA_ERR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %114 = call i32 @ivtv_irq_dma_err(%struct.ivtv* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @IVTV_IRQ_ENC_START_CAP, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %122 = call i32 @ivtv_irq_enc_start_cap(%struct.ivtv* %121)
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @IVTV_IRQ_ENC_VBI_CAP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %130 = call i32 @ivtv_irq_enc_vbi_cap(%struct.ivtv* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %138 = call i32 @ivtv_irq_dec_vbi_reinsert(%struct.ivtv* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @IVTV_IRQ_ENC_EOS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = call i32 @IVTV_DEBUG_IRQ(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @IVTV_F_I_EOS, align 4
  %147 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %148 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %147, i32 0, i32 6
  %149 = call i32 @set_bit(i32 %146, i32* %148)
  %150 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %151 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %150, i32 0, i32 8
  %152 = call i32 @wake_up(i32* %151)
  br label %153

153:                                              ; preds = %144, %139
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @IVTV_IRQ_DEC_DATA_REQ, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %160 = call i32 @ivtv_irq_dec_data_req(%struct.ivtv* %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %163 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = xor i32 %164, -1
  %166 = load i32, i32* @IVTV_IRQ_DEC_VSYNC, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %171 = call i32 @ivtv_irq_vsync(%struct.ivtv* %170)
  br label %172

172:                                              ; preds = %169, %161
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @IVTV_IRQ_ENC_VIM_RST, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = call i32 @IVTV_DEBUG_IRQ(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @IVTV_IRQ_DEC_AUD_MODE_CHG, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @IVTV_IRQ_DMA, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %256

191:                                              ; preds = %186
  %192 = load i32, i32* @IVTV_F_I_DMA, align 4
  %193 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %194 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %193, i32 0, i32 6
  %195 = call i64 @test_bit(i32 %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %256, label %197

197:                                              ; preds = %191
  %198 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %199 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %239, %197
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %242

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %209 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %207, %210
  %212 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %213 = srem i32 %211, %212
  store i32 %213, i32* %11, align 4
  %214 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %215 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %214, i32 0, i32 7
  %216 = load %struct.ivtv_stream*, %struct.ivtv_stream** %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %216, i64 %218
  store %struct.ivtv_stream* %219, %struct.ivtv_stream** %12, align 8
  %220 = load i32, i32* @IVTV_F_S_DMA_PENDING, align 4
  %221 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %222 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %221, i32 0, i32 1
  %223 = call i64 @test_and_clear_bit(i32 %220, i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %206
  br label %239

226:                                              ; preds = %206
  %227 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %228 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %234 = call i32 @ivtv_dma_dec_start(%struct.ivtv_stream* %233)
  br label %238

235:                                              ; preds = %226
  %236 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %237 = call i32 @ivtv_dma_enc_start(%struct.ivtv_stream* %236)
  br label %238

238:                                              ; preds = %235, %232
  br label %242

239:                                              ; preds = %225
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %9, align 4
  br label %202

242:                                              ; preds = %238, %202
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %242
  %247 = load i32, i32* @IVTV_F_I_UDMA_PENDING, align 4
  %248 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %249 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %248, i32 0, i32 6
  %250 = call i64 @test_bit(i32 %247, i32* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %246
  %253 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %254 = call i32 @ivtv_udma_start(%struct.ivtv* %253)
  br label %255

255:                                              ; preds = %252, %246, %242
  br label %256

256:                                              ; preds = %255, %191, %186
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @IVTV_IRQ_DMA, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %316

261:                                              ; preds = %256
  %262 = load i32, i32* @IVTV_F_I_PIO, align 4
  %263 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %264 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %263, i32 0, i32 6
  %265 = call i64 @test_bit(i32 %262, i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %316, label %267

267:                                              ; preds = %261
  %268 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %269 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 8
  store i32 0, i32* %9, align 4
  br label %272

272:                                              ; preds = %312, %267
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %315

276:                                              ; preds = %272
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %279 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %277, %280
  %282 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %283 = srem i32 %281, %282
  store i32 %283, i32* %13, align 4
  %284 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %285 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %284, i32 0, i32 7
  %286 = load %struct.ivtv_stream*, %struct.ivtv_stream** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %286, i64 %288
  store %struct.ivtv_stream* %289, %struct.ivtv_stream** %14, align 8
  %290 = load i32, i32* @IVTV_F_S_PIO_PENDING, align 4
  %291 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %292 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %291, i32 0, i32 1
  %293 = call i64 @test_and_clear_bit(i32 %290, i32* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %276
  br label %312

296:                                              ; preds = %276
  %297 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %298 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %308, label %302

302:                                              ; preds = %296
  %303 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %304 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %307 = icmp slt i64 %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %302, %296
  %309 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %310 = call i32 @ivtv_dma_enc_start(%struct.ivtv_stream* %309)
  br label %311

311:                                              ; preds = %308, %302
  br label %315

312:                                              ; preds = %295
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %9, align 4
  br label %272

315:                                              ; preds = %311, %272
  br label %316

316:                                              ; preds = %315, %261, %256
  %317 = load i32, i32* @IVTV_F_I_HAVE_WORK, align 4
  %318 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %319 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %318, i32 0, i32 6
  %320 = call i64 @test_and_clear_bit(i32 %317, i32* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %316
  %323 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %324 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %327 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %326, i32 0, i32 4
  %328 = call i32 @queue_work(i32 %325, i32* %327)
  br label %329

329:                                              ; preds = %322, %316
  %330 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %331 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %330, i32 0, i32 3
  %332 = call i32 @spin_unlock(i32* %331)
  %333 = load i32, i32* %10, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %329
  %336 = load i32, i32* @IRQ_NONE, align 4
  br label %339

337:                                              ; preds = %329
  %338 = load i32, i32* @IRQ_HANDLED, align 4
  br label %339

339:                                              ; preds = %337, %335
  %340 = phi i32 [ %336, %335 ], [ %338, %337 ]
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %339, %63
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*, ...) #1

declare dso_local i32 @ivtv_irq_dma_read(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_enc_dma_complete(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_enc_pio_complete(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_dma_err(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_enc_start_cap(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_enc_vbi_cap(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_dec_vbi_reinsert(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_IRQ(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ivtv_irq_dec_data_req(%struct.ivtv*) #1

declare dso_local i32 @ivtv_irq_vsync(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_dma_dec_start(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_dma_enc_start(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_udma_start(%struct.ivtv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
