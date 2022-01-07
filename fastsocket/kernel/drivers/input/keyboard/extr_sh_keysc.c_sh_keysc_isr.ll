; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.sh_keysc_priv = type { i64, i32, i64, %struct.sh_keysc_info }
%struct.sh_keysc_info = type { i64, i32*, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"isr!\0A\00", align 1
@KYCR2_IRQ_DISABLED = common dso_local global i8 0, align 1
@KYCR2_OFFS = common dso_local global i64 0, align 8
@sh_keysc_mode = common dso_local global %struct.TYPE_2__* null, align 8
@KYOUTDR_OFFS = common dso_local global i64 0, align 8
@KYINDR_OFFS = common dso_local global i64 0, align 8
@KYCR2_IRQ_LEVEL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"keys 0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"last_keys 0x%08lx keys0 0x%08lx keys1 0x%08lx\0A\00", align 1
@SH_KEYSC_MAXKEYS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_keysc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_keysc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_keysc_priv*, align 8
  %7 = alloca %struct.sh_keysc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.platform_device*
  store %struct.platform_device* %17, %struct.platform_device** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = call %struct.sh_keysc_priv* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.sh_keysc_priv* %19, %struct.sh_keysc_priv** %6, align 8
  %20 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %21 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %20, i32 0, i32 3
  store %struct.sh_keysc_info* %21, %struct.sh_keysc_info** %7, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %165, %2
  store i64 0, i64* %8, align 8
  store i8 0, i8* %12, align 1
  %26 = load i8, i8* @KYCR2_IRQ_DISABLED, align 1
  %27 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %28 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @KYCR2_OFFS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @iowrite16(i8 zeroext %26, i64 %31)
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %100, %25
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %36 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %37 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %33
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %44, 2
  %46 = shl i32 3, %45
  %47 = xor i32 4095, %46
  %48 = trunc i32 %47 to i8
  %49 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %50 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @KYOUTDR_OFFS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite16(i8 zeroext %48, i64 %53)
  %55 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %56 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @udelay(i64 %57)
  %59 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %60 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @KYINDR_OFFS, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @ioread16(i64 %63)
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %13, align 1
  %66 = load i8, i8* %13, align 1
  %67 = zext i8 %66 to i32
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %69 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %70 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 %74, %75
  %77 = shl i32 %67, %76
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %8, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %82 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %83 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  %89 = sub nsw i32 %88, 1
  %90 = load i8, i8* %13, align 1
  %91 = zext i8 %90 to i32
  %92 = xor i32 %91, %89
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %13, align 1
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = load i8, i8* %12, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %97, %95
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %12, align 1
  br label %100

100:                                              ; preds = %43
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %33

103:                                              ; preds = %33
  %104 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %105 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @KYOUTDR_OFFS, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @iowrite16(i8 zeroext 0, i64 %108)
  %110 = load i8, i8* @KYCR2_IRQ_LEVEL, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* %12, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 8
  %115 = or i32 %111, %114
  %116 = trunc i32 %115 to i8
  %117 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %118 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @KYCR2_OFFS, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @iowrite16(i8 zeroext %116, i64 %121)
  %123 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %124 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %103
  %128 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %129 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @udelay(i64 %130)
  br label %132

132:                                              ; preds = %127, %103
  %133 = load i64, i64* %8, align 8
  %134 = xor i64 %133, -1
  store i64 %134, i64* %8, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %136 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %137 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %143 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %144 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %141, %148
  %150 = shl i32 1, %149
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %8, align 8
  %154 = and i64 %153, %152
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = and i64 %156, %155
  store i64 %157, i64* %9, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %10, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %10, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load i64, i64* %8, align 8
  %164 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %162, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %132
  %166 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %167 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @KYCR2_OFFS, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @ioread16(i64 %170)
  %172 = and i32 %171, 1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %25, label %174

174:                                              ; preds = %165
  %175 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %178 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %176, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %179, i64 %180, i64 %181)
  store i32 0, i32* %14, align 4
  br label %183

183:                                              ; preds = %249, %174
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %252

187:                                              ; preds = %183
  %188 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %189 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %187
  br label %249

198:                                              ; preds = %187
  %199 = load i32, i32* %14, align 4
  %200 = shl i32 1, %199
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %11, align 8
  %202 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %203 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %10, align 8
  %206 = xor i64 %204, %205
  %207 = load i64, i64* %11, align 8
  %208 = and i64 %206, %207
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %198
  br label %249

211:                                              ; preds = %198
  %212 = load i64, i64* %9, align 8
  %213 = load i64, i64* %10, align 8
  %214 = or i64 %212, %213
  %215 = load i64, i64* %11, align 8
  %216 = and i64 %214, %215
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %211
  %219 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %220 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @EV_KEY, align 4
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @input_event(i32 %221, i32 %222, i32 %223, i32 1)
  %225 = load i64, i64* %11, align 8
  %226 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %227 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = or i64 %228, %225
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %218, %211
  %231 = load i64, i64* %9, align 8
  %232 = load i64, i64* %11, align 8
  %233 = and i64 %231, %232
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %230
  %236 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %237 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @EV_KEY, align 4
  %240 = load i32, i32* %15, align 4
  %241 = call i32 @input_event(i32 %238, i32 %239, i32 %240, i32 0)
  %242 = load i64, i64* %11, align 8
  %243 = xor i64 %242, -1
  %244 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %245 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = and i64 %246, %243
  store i64 %247, i64* %245, align 8
  br label %248

248:                                              ; preds = %235, %230
  br label %249

249:                                              ; preds = %248, %210, %197
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  br label %183

252:                                              ; preds = %183
  %253 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %254 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @input_sync(i32 %255)
  %257 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %257
}

declare dso_local %struct.sh_keysc_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @iowrite16(i8 zeroext, i64) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @ioread16(i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
