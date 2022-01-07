; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16.c_das16_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.comedi_device = type { i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i32, i64, i32, i32* }

@devpriv = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [64 x i8] c"irq (or use of 'timer mode') dma required to execute comedi_cmd\00", align 1
@TRIG_RT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"isa dma transfers cannot be performed with TRIG_RT, aborting\00", align 1
@thisboard = common dso_local global %struct.TYPE_4__* null, align 8
@DAS1600_CONV_DISABLE = common dso_local global i32 0, align 4
@DAS1600_CONV = common dso_local global i64 0, align 8
@DAS16_MUX = common dso_local global i64 0, align 8
@das16_pg_none = common dso_local global i64 0, align 8
@das16_gainlists = common dso_local global i32** null, align 8
@DAS16_GAIN = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"pacer period: %d ns\0A\00", align 1
@TRIG_NOW = common dso_local global i64 0, align 8
@DAS1600_BURST_VAL = common dso_local global i32 0, align 4
@DAS1600_BURST = common dso_local global i64 0, align 8
@DAS16_PACER = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DAS16_INTE = common dso_local global i32 0, align 4
@DAS16_STATUS = common dso_local global i64 0, align 8
@DMA_ENABLE = common dso_local global i32 0, align 4
@PACING_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@EXT_PACER = common dso_local global i32 0, align 4
@INT_PACER = common dso_local global i32 0, align 4
@DAS16_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das16_cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_cmd_exec(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  store %struct.comedi_async* %13, %struct.comedi_async** %6, align 8
  %14 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 0
  store %struct.comedi_cmd* %15, %struct.comedi_cmd** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %2
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = call i32 @comedi_error(%struct.comedi_device* %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %308

33:                                               ; preds = %25, %20
  %34 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRIG_RT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %42 = call i32 @comedi_error(%struct.comedi_device* %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %308

43:                                               ; preds = %33
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1024
  br i1 %59, label %60, label %68

60:                                               ; preds = %43
  %61 = load i32, i32* @DAS1600_CONV_DISABLE, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DAS1600_CONV, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @outb(i32 %61, i64 %66)
  br label %68

68:                                               ; preds = %60, %43
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CR_CHAN(i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %79 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CR_CHAN(i32 %84)
  %86 = shl i32 %85, 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %91 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DAS16_MUX, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outb(i32 %89, i64 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @das16_pg_none, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %68
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @CR_RANGE(i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32**, i32*** @das16_gainlists, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DAS16_GAIN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outb(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %101, %68
  %125 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %126 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %127 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @das16_set_pacer(%struct.comedi_device* %125, i32 %128, i32 %133)
  %135 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @DEBUG_PRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  store i32 0, i32* %8, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %143, 1024
  br i1 %144, label %145, label %174

145:                                              ; preds = %124
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @TRIG_NOW, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %145
  %152 = load i32, i32* @DAS1600_BURST_VAL, align 4
  %153 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %154 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DAS1600_BURST, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outb(i32 %152, i64 %157)
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @BURST_LEN_BITS(i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %8, align 4
  br label %173

166:                                              ; preds = %145
  %167 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %168 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DAS1600_BURST, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @outb(i32 0, i64 %171)
  br label %173

173:                                              ; preds = %166, %151
  br label %174

174:                                              ; preds = %173, %124
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @DAS16_PACER, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 %175, i64 %180)
  %182 = call i64 (...) @claim_dma_lock()
  store i64 %182, i64* %9, align 8
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @disable_dma(i64 %185)
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @clear_dma_ff(i64 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 8
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @set_dma_addr(i64 %195, i32 %203)
  %205 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %207 = call i32 @das16_suggest_transfer_size(%struct.comedi_device* %205, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8 %206)
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 7
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @set_dma_count(i64 %212, i32 %215)
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @enable_dma(i64 %219)
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @release_dma_lock(i64 %221)
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %174
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 4
  store i32 1, i32* %229, align 8
  %230 = load i64, i64* @jiffies, align 8
  %231 = call i64 (...) @timer_period()
  %232 = add nsw i64 %230, %231
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  store i64 %232, i64* %235, align 8
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 6
  %238 = call i32 @add_timer(%struct.TYPE_6__* %237)
  %239 = load i32, i32* @DAS16_INTE, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 4
  br label %257

245:                                              ; preds = %174
  %246 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %247 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @DAS16_STATUS, align 8
  %250 = add nsw i64 %248, %249
  %251 = call i32 @outb(i32 0, i64 %250)
  %252 = load i32, i32* @DAS16_INTE, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %245, %227
  %258 = load i32, i32* @DMA_ENABLE, align 4
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* @PACING_MASK, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %270 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @TRIG_EXT, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %280

274:                                              ; preds = %257
  %275 = load i32, i32* @EXT_PACER, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 4
  br label %286

280:                                              ; preds = %257
  %281 = load i32, i32* @INT_PACER, align 4
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %281
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %280, %274
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** @devpriv, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %291 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @DAS16_CONTROL, align 8
  %294 = add nsw i64 %292, %293
  %295 = call i32 @outb(i32 %289, i64 %294)
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp sgt i32 %298, 1024
  br i1 %299, label %300, label %307

300:                                              ; preds = %286
  %301 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %302 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %301, i32 0, i32 1
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @DAS1600_CONV, align 8
  %305 = add nsw i64 %303, %304
  %306 = call i32 @outb(i32 0, i64 %305)
  br label %307

307:                                              ; preds = %300, %286
  store i32 0, i32* %3, align 4
  br label %308

308:                                              ; preds = %307, %40, %30
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @das16_set_pacer(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @DEBUG_PRINT(i8*, i32) #1

declare dso_local i32 @BURST_LEN_BITS(i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @set_dma_addr(i64, i32) #1

declare dso_local i32 @das16_suggest_transfer_size(%struct.comedi_device*, %struct.comedi_cmd* byval(%struct.comedi_cmd) align 8) #1

declare dso_local i32 @set_dma_count(i64, i32) #1

declare dso_local i32 @enable_dma(i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i64 @timer_period(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
