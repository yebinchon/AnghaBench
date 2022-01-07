; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_interrupt_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_interrupt_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43legacy_IRQ_MAC_TXERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MAC transmission error\0A\00", align 1
@B43legacy_IRQ_PHY_TXERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PHY transmission error\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Too many PHY TX errors, restarting the controller\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"PHY TX errors\00", align 1
@B43legacy_DMAIRQ_FATALMASK = common dso_local global i32 0, align 4
@B43legacy_DMAIRQ_NONFATALMASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"Fatal DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DMA error\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"DMA error: 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X, 0x%08X\0A\00", align 1
@B43legacy_IRQ_UCODE_DEBUG = common dso_local global i32 0, align 4
@B43legacy_IRQ_TBTT_INDI = common dso_local global i32 0, align 4
@B43legacy_IRQ_ATIM_END = common dso_local global i32 0, align 4
@B43legacy_IRQ_BEACON = common dso_local global i32 0, align 4
@B43legacy_IRQ_PMQ = common dso_local global i32 0, align 4
@B43legacy_IRQ_TXFIFO_FLUSH_OK = common dso_local global i32 0, align 4
@B43legacy_IRQ_NOISESAMPLE_OK = common dso_local global i32 0, align 4
@B43legacy_DMAIRQ_RX_DONE = common dso_local global i32 0, align 4
@B43legacy_IRQ_TX_OK = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_interrupt_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_interrupt_tasklet(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %24 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %23)
  %25 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @B43legacy_WARN_ON(i32 %27)
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %53, %1
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ARRAY_SIZE(i32* %16)
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %16, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %16, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @B43legacy_IRQ_MAC_TXERR, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %64 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @B43legacy_IRQ_PHY_TXERR, align 4
  %70 = and i32 %68, %69
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %78 = call i32 (...) @rmb()
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %80 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @atomic_dec_and_test(i32* %81)
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = call i32 @b43legacy_controller_restart(%struct.b43legacy_wldev* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %85, %73
  br label %93

93:                                               ; preds = %92, %67
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @B43legacy_DMAIRQ_FATALMASK, align 4
  %96 = load i32, i32* @B43legacy_DMAIRQ_NONFATALMASK, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %94, %97
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %155

101:                                              ; preds = %93
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @B43legacy_DMAIRQ_FATALMASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %101
  %107 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %108 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds i32, i32* %16, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = getelementptr inbounds i32, i32* %16, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %16, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = getelementptr inbounds i32, i32* %16, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds i32, i32* %16, i64 4
  %119 = load i32, i32* %118, align 16
  %120 = getelementptr inbounds i32, i32* %16, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %109, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121)
  %123 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %124 = call i32 @b43legacy_controller_restart(%struct.b43legacy_wldev* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %125 = call i32 (...) @mmiowb()
  %126 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %127 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @spin_unlock_irqrestore(i32* %129, i64 %130)
  store i32 1, i32* %9, align 4
  br label %298

132:                                              ; preds = %101
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @B43legacy_DMAIRQ_NONFATALMASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %139 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %138, i32 0, i32 2
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds i32, i32* %16, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = getelementptr inbounds i32, i32* %16, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds i32, i32* %16, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds i32, i32* %16, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds i32, i32* %16, i64 4
  %150 = load i32, i32* %149, align 16
  %151 = getelementptr inbounds i32, i32* %16, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (%struct.TYPE_8__*, i8*, ...) @b43legacyerr(%struct.TYPE_8__* %140, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %142, i32 %144, i32 %146, i32 %148, i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %137, %132
  br label %155

155:                                              ; preds = %154, %93
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @B43legacy_IRQ_UCODE_DEBUG, align 4
  %158 = and i32 %156, %157
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %163 = call i32 @handle_irq_ucode_debug(%struct.b43legacy_wldev* %162)
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @B43legacy_IRQ_TBTT_INDI, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %171 = call i32 @handle_irq_tbtt_indication(%struct.b43legacy_wldev* %170)
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @B43legacy_IRQ_ATIM_END, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %179 = call i32 @handle_irq_atim_end(%struct.b43legacy_wldev* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @B43legacy_IRQ_BEACON, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %187 = call i32 @handle_irq_beacon(%struct.b43legacy_wldev* %186)
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @B43legacy_IRQ_PMQ, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %195 = call i32 @handle_irq_pmq(%struct.b43legacy_wldev* %194)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load i32, i32* %3, align 4
  %198 = load i32, i32* @B43legacy_IRQ_TXFIFO_FLUSH_OK, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %196
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @B43legacy_IRQ_NOISESAMPLE_OK, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %209 = call i32 @handle_irq_noise(%struct.b43legacy_wldev* %208)
  br label %210

210:                                              ; preds = %207, %202
  %211 = getelementptr inbounds i32, i32* %16, i64 0
  %212 = load i32, i32* %211, align 16
  %213 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %210
  %217 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %218 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %222 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @b43legacy_pio_rx(i32 %224)
  br label %232

226:                                              ; preds = %216
  %227 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %228 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @b43legacy_dma_rx(i32 %230)
  br label %232

232:                                              ; preds = %226, %220
  br label %233

233:                                              ; preds = %232, %210
  %234 = getelementptr inbounds i32, i32* %16, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @B43legacy_WARN_ON(i32 %237)
  %239 = getelementptr inbounds i32, i32* %16, i64 2
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %242 = and i32 %240, %241
  %243 = call i32 @B43legacy_WARN_ON(i32 %242)
  %244 = getelementptr inbounds i32, i32* %16, i64 3
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %233
  %250 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %251 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %249
  %254 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %255 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @b43legacy_pio_rx(i32 %257)
  br label %265

259:                                              ; preds = %249
  %260 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %261 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @b43legacy_dma_rx(i32 %263)
  br label %265

265:                                              ; preds = %259, %253
  br label %266

266:                                              ; preds = %265, %233
  %267 = getelementptr inbounds i32, i32* %16, i64 4
  %268 = load i32, i32* %267, align 16
  %269 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %270 = and i32 %268, %269
  %271 = call i32 @B43legacy_WARN_ON(i32 %270)
  %272 = getelementptr inbounds i32, i32* %16, i64 5
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %275 = and i32 %273, %274
  %276 = call i32 @B43legacy_WARN_ON(i32 %275)
  %277 = load i32, i32* %3, align 4
  %278 = load i32, i32* @B43legacy_IRQ_TX_OK, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %266
  %282 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %283 = call i32 @handle_irq_transmit_status(%struct.b43legacy_wldev* %282)
  br label %284

284:                                              ; preds = %281, %266
  %285 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %286 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %287 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %288 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %285, i32 %286, i32 %289)
  %291 = call i32 (...) @mmiowb()
  %292 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %293 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %292, i32 0, i32 2
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i64, i64* %8, align 8
  %297 = call i32 @spin_unlock_irqrestore(i32* %295, i64 %296)
  store i32 0, i32* %9, align 4
  br label %298

298:                                              ; preds = %284, %106
  %299 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %299)
  %300 = load i32, i32* %9, align 4
  switch i32 %300, label %302 [
    i32 0, label %301
    i32 1, label %301
  ]

301:                                              ; preds = %298, %298
  ret void

302:                                              ; preds = %298
  unreachable
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @b43legacyerr(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @b43legacy_controller_restart(%struct.b43legacy_wldev*, i8*) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @handle_irq_ucode_debug(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_tbtt_indication(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_atim_end(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_beacon(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_pmq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @handle_irq_noise(%struct.b43legacy_wldev*) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_pio_rx(i32) #1

declare dso_local i32 @b43legacy_dma_rx(i32) #1

declare dso_local i32 @handle_irq_transmit_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
