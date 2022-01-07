; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_alloc_and_init_dma_members.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_alloc_and_init_dma_members.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32**, i32** }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ai dma descriptors start at bus addr 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ao dma descriptors start at bus addr 0x%x\0A\00", align 1
@LAYOUT_4020 = common dso_local global i64 0, align 8
@ADC_FIFO_REG = common dso_local global i32 0, align 4
@PLX_DESC_IN_PCI_BIT = common dso_local global i32 0, align 4
@PLX_INTR_TERM_COUNT = common dso_local global i32 0, align 4
@PLX_XFER_LOCAL_TO_PCI = common dso_local global i32 0, align 4
@DAC_FIFO_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_and_init_dma_members(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = call %struct.TYPE_10__* @board(%struct.comedi_device* %7)
  %9 = call i32 @ai_dma_ring_count(%struct.TYPE_10__* %8)
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = call i8* @pci_alloc_consistent(i32 %15, i32 %16, i32* %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %27 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 10
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %25, i32** %32, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %34 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 10
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %11
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %360

45:                                               ; preds = %11
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %5

49:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %95, %49
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %98

54:                                               ; preds = %50
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = call %struct.TYPE_10__* @board(%struct.comedi_device* %55)
  %57 = call i64 @ao_cmd_is_supported(%struct.TYPE_10__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %54
  %60 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %61 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %60)
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %66 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %65)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i8* @pci_alloc_consistent(i32 %63, i32 %64, i32* %71)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 9
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* %73, i32** %80, align 8
  %81 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %82 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %81)
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 9
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %59
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %360

93:                                               ; preds = %59
  br label %94

94:                                               ; preds = %93, %54
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %50

98:                                               ; preds = %50
  %99 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %100 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %104 = call %struct.TYPE_10__* @board(%struct.comedi_device* %103)
  %105 = call i32 @ai_dma_ring_count(%struct.TYPE_10__* %104)
  %106 = sext i32 %105 to i64
  %107 = mul i64 4, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %110 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = call i8* @pci_alloc_consistent(i32 %102, i32 %108, i32* %111)
  %113 = bitcast i8* %112 to %struct.TYPE_7__*
  %114 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %115 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %114)
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 7
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %116, align 8
  %117 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %118 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %117)
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 7
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = icmp eq %struct.TYPE_7__* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %98
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %360

125:                                              ; preds = %98
  %126 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %127 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %126)
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %132 = call %struct.TYPE_10__* @board(%struct.comedi_device* %131)
  %133 = call i64 @ao_cmd_is_supported(%struct.TYPE_10__* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %166

135:                                              ; preds = %125
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 4, %141
  %143 = trunc i64 %142 to i32
  %144 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %145 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %144)
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = call i8* @pci_alloc_consistent(i32 %139, i32 %143, i32* %146)
  %148 = bitcast i8* %147 to %struct.TYPE_8__*
  %149 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %150 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %149)
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %151, align 8
  %152 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %153 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %152)
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = icmp eq %struct.TYPE_8__* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %135
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %360

160:                                              ; preds = %135
  %161 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %162 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %161)
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %160, %125
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %272, %166
  %168 = load i32, i32* %4, align 4
  %169 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %170 = call %struct.TYPE_10__* @board(%struct.comedi_device* %169)
  %171 = call i32 @ai_dma_ring_count(%struct.TYPE_10__* %170)
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %275

173:                                              ; preds = %167
  %174 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %175 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %174)
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %184 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %183)
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 7
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 3
  store i8* %182, i8** %190, align 8
  %191 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %192 = call %struct.TYPE_10__* @board(%struct.comedi_device* %191)
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @LAYOUT_4020, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %213

197:                                              ; preds = %173
  %198 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %199 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %198)
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @ADC_FIFO_REG, align 4
  %203 = add nsw i32 %201, %202
  %204 = call i8* @cpu_to_le32(i32 %203)
  %205 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %206 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %205)
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 7
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  store i8* %204, i8** %212, align 8
  br label %229

213:                                              ; preds = %173
  %214 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %215 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %214)
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @ADC_FIFO_REG, align 4
  %219 = add nsw i32 %217, %218
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %222 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %221)
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 7
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  store i8* %220, i8** %228, align 8
  br label %229

229:                                              ; preds = %213, %197
  %230 = call i8* @cpu_to_le32(i32 0)
  %231 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %232 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %231)
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 7
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 1
  store i8* %230, i8** %238, align 8
  %239 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %240 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %239)
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = load i32, i32* %4, align 4
  %245 = add nsw i32 %244, 1
  %246 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %247 = call %struct.TYPE_10__* @board(%struct.comedi_device* %246)
  %248 = call i32 @ai_dma_ring_count(%struct.TYPE_10__* %247)
  %249 = srem i32 %245, %248
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 32
  %252 = add i64 %243, %251
  %253 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %254 = sext i32 %253 to i64
  %255 = or i64 %252, %254
  %256 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %257 = sext i32 %256 to i64
  %258 = or i64 %255, %257
  %259 = load i32, i32* @PLX_XFER_LOCAL_TO_PCI, align 4
  %260 = sext i32 %259 to i64
  %261 = or i64 %258, %260
  %262 = trunc i64 %261 to i32
  %263 = call i8* @cpu_to_le32(i32 %262)
  %264 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %265 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %264)
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 7
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  store i8* %263, i8** %271, align 8
  br label %272

272:                                              ; preds = %229
  %273 = load i32, i32* %4, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %4, align 4
  br label %167

275:                                              ; preds = %167
  %276 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %277 = call %struct.TYPE_10__* @board(%struct.comedi_device* %276)
  %278 = call i64 @ao_cmd_is_supported(%struct.TYPE_10__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %359

280:                                              ; preds = %275
  store i32 0, i32* %4, align 4
  br label %281

281:                                              ; preds = %355, %280
  %282 = load i32, i32* %4, align 4
  %283 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %358

285:                                              ; preds = %281
  %286 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %287 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %286)
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %4, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @cpu_to_le32(i32 %293)
  %295 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %296 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %295)
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %297, align 8
  %299 = load i32, i32* %4, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 3
  store i8* %294, i8** %302, align 8
  %303 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %304 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %303)
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @DAC_FIFO_REG, align 4
  %308 = add nsw i32 %306, %307
  %309 = call i8* @cpu_to_le32(i32 %308)
  %310 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %311 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %310)
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 6
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = load i32, i32* %4, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 2
  store i8* %309, i8** %317, align 8
  %318 = call i8* @cpu_to_le32(i32 0)
  %319 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %320 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %319)
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 6
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 1
  store i8* %318, i8** %326, align 8
  %327 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %328 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %327)
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = load i32, i32* %4, align 4
  %333 = add nsw i32 %332, 1
  %334 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %335 = srem i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = mul i64 %336, 32
  %338 = add i64 %331, %337
  %339 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %340 = sext i32 %339 to i64
  %341 = or i64 %338, %340
  %342 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %343 = sext i32 %342 to i64
  %344 = or i64 %341, %343
  %345 = trunc i64 %344 to i32
  %346 = call i8* @cpu_to_le32(i32 %345)
  %347 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %348 = call %struct.TYPE_9__* @priv(%struct.comedi_device* %347)
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 6
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = load i32, i32* %4, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 0
  store i8* %346, i8** %354, align 8
  br label %355

355:                                              ; preds = %285
  %356 = load i32, i32* %4, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %4, align 4
  br label %281

358:                                              ; preds = %281
  br label %359

359:                                              ; preds = %358, %275
  store i32 0, i32* %2, align 4
  br label %360

360:                                              ; preds = %359, %157, %122, %90, %42
  %361 = load i32, i32* %2, align 4
  ret i32 %361
}

declare dso_local i32 @ai_dma_ring_count(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @board(%struct.comedi_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local %struct.TYPE_9__* @priv(%struct.comedi_device*) #1

declare dso_local i64 @ao_cmd_is_supported(%struct.TYPE_10__*) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
