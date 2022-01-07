; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_timeout_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_timeout_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i64, i64, i32, i32, %struct.TYPE_5__*, i32, %struct.mtip_cmd*, i32* }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtip_cmd = type { i64, i32, i32, i32, i32, i32*, i32 (i32, i32)*, i32, i64 }
%struct.host_to_dev_fis = type { i32 }

@SLOTBITS_IN_LONGS = common dso_local global i32 0, align 4
@MTIP_DDF_RESUME_BIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MTIP_TAG_INTERNAL = common dso_local global i32 0, align 4
@MTIP_PF_EH_ACTIVE_BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@MTIP_PF_IC_ACTIVE_BIT = common dso_local global i32 0, align 4
@MTIP_PF_SE_ACTIVE_BIT = common dso_local global i32 0, align 4
@MTIP_PF_DM_ACTIVE_BIT = common dso_local global i32 0, align 4
@MTIP_TIMEOUT_CHECK_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mtip_timeout_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_timeout_function(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mtip_port*, align 8
  %4 = alloca %struct.host_to_dev_fis*, align 8
  %5 = alloca %struct.mtip_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %15 = load i64, i64* %2, align 8
  %16 = inttoptr i64 %15 to %struct.mtip_port*
  store %struct.mtip_port* %16, %struct.mtip_port** %3, align 8
  store i32 0, i32* %7, align 4
  %17 = load i32, i32* @SLOTBITS_IN_LONGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %22 = icmp ne %struct.mtip_port* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %14, align 4
  br label %253

28:                                               ; preds = %1
  %29 = load i32, i32* @MTIP_DDF_RESUME_BIT, align 4
  %30 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %31 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %29, i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 2
  %39 = load i64, i64* @jiffies, align 8
  %40 = call i64 @msecs_to_jiffies(i32 30000)
  %41 = add i64 %39, %40
  %42 = call i32 @mod_timer(i32* %38, i64 %41)
  store i32 1, i32* %14, align 4
  br label %253

43:                                               ; preds = %28
  %44 = load i32, i32* @SLOTBITS_IN_LONGS, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memset(i64* %20, i32 0, i32 %47)
  %49 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 32
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %174, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %177

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %174

64:                                               ; preds = %59
  %65 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %66 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %65, i32 0, i32 6
  %67 = load %struct.mtip_cmd*, %struct.mtip_cmd** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %67, i64 %69
  %71 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %70, i32 0, i32 1
  %72 = call i64 @atomic_read(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %173

74:                                               ; preds = %64
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %77 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %76, i32 0, i32 6
  %78 = load %struct.mtip_cmd*, %struct.mtip_cmd** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %78, i64 %80
  %82 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @time_after(i64 %75, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %173

86:                                               ; preds = %74
  %87 = load i32, i32* %6, align 4
  %88 = ashr i32 %87, 5
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, 31
  store i32 %90, i32* %8, align 4
  %91 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %92 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %91, i32 0, i32 6
  %93 = load %struct.mtip_cmd*, %struct.mtip_cmd** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %93, i64 %95
  store %struct.mtip_cmd* %96, %struct.mtip_cmd** %5, align 8
  %97 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %98 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.host_to_dev_fis*
  store %struct.host_to_dev_fis* %100, %struct.host_to_dev_fis** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @set_bit(i32 %101, i64* %20)
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %86
  %108 = load i32, i32* @MTIP_PF_EH_ACTIVE_BIT, align 4
  %109 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %110 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %109, i32 0, i32 0
  %111 = call i32 @set_bit(i32 %108, i64* %110)
  br label %112

112:                                              ; preds = %107, %86
  %113 = load i32, i32* %8, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %116 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %115, i32 0, i32 7
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @writel(i32 %114, i32 %121)
  %123 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %124 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %123, i32 0, i32 6
  %125 = load i32 (i32, i32)*, i32 (i32, i32)** %124, align 8
  %126 = call i64 @likely(i32 (i32, i32)* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %112
  %129 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %129, i32 0, i32 6
  %131 = load i32 (i32, i32)*, i32 (i32, i32)** %130, align 8
  %132 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %133 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 %131(i32 %134, i32 %136)
  br label %138

138:                                              ; preds = %128, %112
  %139 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %139, i32 0, i32 6
  store i32 (i32, i32)* null, i32 (i32, i32)** %140, align 8
  %141 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %142 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %141, i32 0, i32 5
  store i32* null, i32** %142, align 8
  %143 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %144 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %143, i32 0, i32 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %150 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %153 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.mtip_cmd*, %struct.mtip_cmd** %5, align 8
  %156 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dma_unmap_sg(i32* %148, i32 %151, i32 %154, i32 %157)
  %159 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %160 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %159, i32 0, i32 6
  %161 = load %struct.mtip_cmd*, %struct.mtip_cmd** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %161, i64 %163
  %165 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %164, i32 0, i32 1
  %166 = call i32 @atomic_set(i32* %165, i32 0)
  %167 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @release_slot(%struct.mtip_port* %167, i32 %168)
  %170 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %171 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %170, i32 0, i32 5
  %172 = call i32 @up(i32* %171)
  br label %173

173:                                              ; preds = %138, %74, %64
  br label %174

174:                                              ; preds = %173, %63
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %55

177:                                              ; preds = %55
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %177
  %181 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %182 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %181, i32 0, i32 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @print_tags(%struct.TYPE_5__* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %20, i32 %184)
  %186 = load i32, i32* @MTIP_PF_IC_ACTIVE_BIT, align 4
  %187 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %188 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %187, i32 0, i32 0
  %189 = call i64 @test_bit(i32 %186, i64* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %180
  %192 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %193 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %192, i32 0, i32 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = call i32 @mtip_device_reset(%struct.TYPE_5__* %194)
  %196 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %197 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %196, i32 0, i32 3
  %198 = call i32 @wake_up_interruptible(i32* %197)
  br label %199

199:                                              ; preds = %191, %180
  %200 = load i32, i32* @MTIP_PF_EH_ACTIVE_BIT, align 4
  %201 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %202 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %201, i32 0, i32 0
  %203 = call i32 @clear_bit(i32 %200, i64* %202)
  br label %204

204:                                              ; preds = %199, %177
  %205 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %206 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %245

209:                                              ; preds = %204
  %210 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %211 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i64 @msecs_to_jiffies(i32 1000)
  %214 = add i64 %212, %213
  store i64 %214, i64* %11, align 8
  %215 = load i64, i64* @jiffies, align 8
  %216 = load i64, i64* %11, align 8
  %217 = call i64 @time_after(i64 %215, i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %244

219:                                              ; preds = %209
  %220 = load i32, i32* @MTIP_PF_IC_ACTIVE_BIT, align 4
  %221 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %222 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %221, i32 0, i32 0
  %223 = call i64 @test_bit(i32 %220, i64* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %219
  %226 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %227 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %226, i32 0, i32 1
  store i64 0, i64* %227, align 8
  %228 = load i32, i32* @MTIP_PF_SE_ACTIVE_BIT, align 4
  %229 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %230 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %229, i32 0, i32 0
  %231 = call i32 @clear_bit(i32 %228, i64* %230)
  %232 = load i32, i32* @MTIP_PF_DM_ACTIVE_BIT, align 4
  %233 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %234 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %233, i32 0, i32 0
  %235 = call i32 @clear_bit(i32 %232, i64* %234)
  %236 = load i32, i32* @MTIP_PF_IC_ACTIVE_BIT, align 4
  %237 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %238 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %237, i32 0, i32 0
  %239 = call i32 @clear_bit(i32 %236, i64* %238)
  %240 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %241 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %240, i32 0, i32 3
  %242 = call i32 @wake_up_interruptible(i32* %241)
  br label %243

243:                                              ; preds = %225, %219
  br label %244

244:                                              ; preds = %243, %209
  br label %245

245:                                              ; preds = %244, %204
  %246 = load %struct.mtip_port*, %struct.mtip_port** %3, align 8
  %247 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %246, i32 0, i32 2
  %248 = load i64, i64* @jiffies, align 8
  %249 = load i32, i32* @MTIP_TIMEOUT_CHECK_PERIOD, align 4
  %250 = call i64 @msecs_to_jiffies(i32 %249)
  %251 = add i64 %248, %250
  %252 = call i32 @mod_timer(i32* %247, i64 %251)
  store i32 0, i32* %14, align 4
  br label %253

253:                                              ; preds = %245, %36, %27
  %254 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %14, align 4
  switch i32 %255, label %257 [
    i32 0, label %256
    i32 1, label %256
  ]

256:                                              ; preds = %253, %253
  ret void

257:                                              ; preds = %253
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local i32 @mod_timer(i32*, i64) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @time_after(i64, i64) #2

declare dso_local i32 @set_bit(i32, i64*) #2

declare dso_local i32 @writel(i32, i32) #2

declare dso_local i64 @likely(i32 (i32, i32)*) #2

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @release_slot(%struct.mtip_port*, i32) #2

declare dso_local i32 @up(i32*) #2

declare dso_local i32 @print_tags(%struct.TYPE_5__*, i8*, i64*, i32) #2

declare dso_local i32 @mtip_device_reset(%struct.TYPE_5__*) #2

declare dso_local i32 @wake_up_interruptible(i32*) #2

declare dso_local i32 @clear_bit(i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
