; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, %struct.TYPE_12__, i32, i32, %struct.vc_map*, %struct.atm_dev* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.vc_map = type { i64, i64, i64, %struct.TYPE_15__*, i64, i32, %struct.TYPE_14__*, i32*, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i64, i32, i32**, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"%s: idt77252_close: vc = %d (%d.%d)\0A\00", align 1
@ATM_VF_READY = common dso_local global i32 0, align 4
@ATM_NONE = common dso_local global i64 0, align 8
@VCF_RX = common dso_local global i32 0, align 4
@SAR_SRAM_RCT_SIZE = common dso_local global i64 0, align 8
@SAR_CMD_CLOSE_CONNECTION = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: closing a VC with pending rx buffers.\0A\00", align 1
@VCF_TX = common dso_local global i32 0, align 4
@VCF_IDLE = common dso_local global i32 0, align 4
@VCF_RSV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: SCQ drain timeout: %u used\0A\00", align 1
@TCMDQ_HALT = common dso_local global i64 0, align 8
@SAR_REG_TCMDQ = common dso_local global i32 0, align 4
@SCHED_CBR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @idt77252_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idt77252_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca %struct.vc_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 5
  %11 = load %struct.atm_dev*, %struct.atm_dev** %10, align 8
  store %struct.atm_dev* %11, %struct.atm_dev** %3, align 8
  %12 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %13 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %12, i32 0, i32 0
  %14 = load %struct.idt77252_dev*, %struct.idt77252_dev** %13, align 8
  store %struct.idt77252_dev* %14, %struct.idt77252_dev** %4, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 4
  %17 = load %struct.vc_map*, %struct.vc_map** %16, align 8
  store %struct.vc_map* %17, %struct.vc_map** %5, align 8
  %18 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %19 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %22 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %25 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %31 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @IPRINTK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26, i32 %29, i32 %32)
  %34 = load i32, i32* @ATM_VF_READY, align 4
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %36 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %35, i32 0, i32 2
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATM_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %113

45:                                               ; preds = %1
  %46 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %47 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %46, i32 0, i32 5
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i32, i32* @VCF_RX, align 4
  %51 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %52 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %51, i32 0, i32 8
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %55 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %54, i32 0, i32 10
  store i32* null, i32** %55, align 8
  %56 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %57 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %56, i32 0, i32 5
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %61 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %69, label %64

64:                                               ; preds = %45
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %66 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %45
  br label %114

70:                                               ; preds = %64
  %71 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %72 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %75 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SAR_SRAM_RCT_SIZE, align 8
  %78 = mul i64 %76, %77
  %79 = add i64 %73, %78
  store i64 %79, i64* %7, align 8
  %80 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %81 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %80, i32 0, i32 5
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load i64, i64* @SAR_CMD_CLOSE_CONNECTION, align 8
  %85 = load i64, i64* %7, align 8
  %86 = shl i64 %85, 2
  %87 = or i64 %84, %86
  %88 = load i32, i32* @SAR_REG_CMD, align 4
  %89 = call i32 @writel(i64 %87, i32 %88)
  %90 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %91 = call i32 @waitfor_idle(%struct.idt77252_dev* %90)
  %92 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %93 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %92, i32 0, i32 5
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %97 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = call i64 @skb_queue_len(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %70
  %103 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %104 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DPRINTK(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %108 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %109 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @recycle_rx_pool_skb(%struct.idt77252_dev* %107, %struct.TYPE_13__* %110)
  br label %112

112:                                              ; preds = %102, %70
  br label %113

113:                                              ; preds = %112, %1
  br label %114

114:                                              ; preds = %113, %69
  %115 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %116 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @ATM_NONE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %238

122:                                              ; preds = %114
  %123 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %124 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %123, i32 0, i32 5
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load i32, i32* @VCF_TX, align 4
  %128 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %129 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %128, i32 0, i32 8
  %130 = call i32 @clear_bit(i32 %127, i32* %129)
  %131 = load i32, i32* @VCF_IDLE, align 4
  %132 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %133 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %132, i32 0, i32 8
  %134 = call i32 @clear_bit(i32 %131, i32* %133)
  %135 = load i32, i32* @VCF_RSV, align 4
  %136 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %137 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %136, i32 0, i32 8
  %138 = call i32 @clear_bit(i32 %135, i32* %137)
  %139 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %140 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %139, i32 0, i32 7
  store i32* null, i32** %140, align 8
  %141 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %142 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %141, i32 0, i32 6
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = icmp ne %struct.TYPE_14__* %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %122
  %146 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %147 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %146, i32 0, i32 6
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = call i32 @del_timer(i32* %149)
  %151 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %152 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %151, i32 0, i32 6
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = call i32 @kfree(%struct.TYPE_14__* %153)
  %155 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %156 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %155, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %156, align 8
  br label %157

157:                                              ; preds = %145, %122
  %158 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %159 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %158, i32 0, i32 5
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  store i64 5000, i64* %8, align 8
  br label %162

162:                                              ; preds = %175, %157
  %163 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %164 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %163, i32 0, i32 3
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = call i64 @atomic_read(i32* %166)
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load i64, i64* %8, align 8
  %171 = call i64 @msleep_interruptible(i64 %170)
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %8, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  br label %176

175:                                              ; preds = %169
  br label %162

176:                                              ; preds = %174, %162
  %177 = load i64, i64* %8, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %181 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %184 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %183, i32 0, i32 3
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = call i64 @atomic_read(i32* %186)
  %188 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %182, i64 %187)
  br label %189

189:                                              ; preds = %179, %176
  %190 = load i64, i64* @TCMDQ_HALT, align 8
  %191 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %192 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = or i64 %190, %193
  %195 = load i32, i32* @SAR_REG_TCMDQ, align 4
  %196 = call i32 @writel(i64 %194, i32 %195)
  %197 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %198 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %199 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %198, i32 0, i32 3
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %202 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @clear_scd(%struct.idt77252_dev* %197, %struct.TYPE_15__* %200, i64 %203)
  %205 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %206 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SCHED_CBR, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %189
  %211 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %212 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %213 = call i32 @clear_tst(%struct.idt77252_dev* %211, %struct.vc_map* %212)
  %214 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %215 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %214, i32 0, i32 4
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %218 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %216
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 8
  %223 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %224 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %223, i32 0, i32 4
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %210, %189
  %226 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %227 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %230 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds i32*, i32** %228, i64 %231
  store i32* null, i32** %232, align 8
  %233 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %234 = load %struct.vc_map*, %struct.vc_map** %5, align 8
  %235 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %234, i32 0, i32 3
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = call i32 @free_scq(%struct.idt77252_dev* %233, %struct.TYPE_15__* %236)
  br label %238

238:                                              ; preds = %225, %114
  %239 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %240 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %239, i32 0, i32 1
  %241 = call i32 @mutex_unlock(i32* %240)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPRINTK(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

declare dso_local i32 @recycle_rx_pool_skb(%struct.idt77252_dev*, %struct.TYPE_13__*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_14__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @msleep_interruptible(i64) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @clear_scd(%struct.idt77252_dev*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @clear_tst(%struct.idt77252_dev*, %struct.vc_map*) #1

declare dso_local i32 @free_scq(%struct.idt77252_dev*, %struct.TYPE_15__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
