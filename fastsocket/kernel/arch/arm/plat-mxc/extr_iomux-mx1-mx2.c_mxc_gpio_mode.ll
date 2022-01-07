; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-mx1-mx2.c_mxc_gpio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-mxc/extr_iomux-mx1-mx2.c_mxc_gpio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PIN_MASK = common dso_local global i32 0, align 4
@GPIO_PORT_MASK = common dso_local global i32 0, align 4
@GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@GPIO_OCR_MASK = common dso_local global i32 0, align 4
@GPIO_OCR_SHIFT = common dso_local global i32 0, align 4
@VA_GPIO_BASE = common dso_local global i64 0, align 8
@GPIO_PUEN = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO_AF = common dso_local global i32 0, align 4
@GPIO_PF = common dso_local global i32 0, align 4
@GPIO_AOUT_SHIFT = common dso_local global i32 0, align 4
@GPIO_BOUT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mxc_gpio_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @GPIO_PIN_MASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @GPIO_PORT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @GPIO_PORT_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GPIO_OCR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @GPIO_OCR_SHIFT, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @VA_GPIO_BASE, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @MXC_PUEN(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @__raw_readl(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @GPIO_PUEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* @VA_GPIO_BASE, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @MXC_PUEN(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @__raw_writel(i32 %41, i64 %45)
  %47 = load i64, i64* @VA_GPIO_BASE, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @MXC_DDIR(i32 %48)
  %50 = add nsw i64 %47, %49
  %51 = call i32 @__raw_readl(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @GPIO_OUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = load i32, i32* %3, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %67

61:                                               ; preds = %40
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %56
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* @VA_GPIO_BASE, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @MXC_DDIR(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = call i32 @__raw_writel(i32 %68, i64 %72)
  %74 = load i64, i64* @VA_GPIO_BASE, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i64 @MXC_GPR(i32 %75)
  %77 = add nsw i64 %74, %76
  %78 = call i32 @__raw_readl(i64 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @GPIO_AF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* %3, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %94

88:                                               ; preds = %67
  %89 = load i32, i32* %3, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i64, i64* @VA_GPIO_BASE, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @MXC_GPR(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = call i32 @__raw_writel(i32 %95, i64 %99)
  %101 = load i64, i64* @VA_GPIO_BASE, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @MXC_GIUS(i32 %102)
  %104 = add nsw i64 %101, %103
  %105 = call i32 @__raw_readl(i64 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* @GPIO_PF, align 4
  %108 = load i32, i32* @GPIO_AF, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %94
  %113 = load i32, i32* %3, align 4
  %114 = shl i32 1, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %123

118:                                              ; preds = %94
  %119 = load i32, i32* %3, align 4
  %120 = shl i32 1, %119
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32, i32* %6, align 4
  %125 = load i64, i64* @VA_GPIO_BASE, align 8
  %126 = load i32, i32* %4, align 4
  %127 = call i64 @MXC_GIUS(i32 %126)
  %128 = add nsw i64 %125, %127
  %129 = call i32 @__raw_writel(i32 %124, i64 %128)
  %130 = load i32, i32* %3, align 4
  %131 = icmp ult i32 %130, 16
  br i1 %131, label %132, label %208

132:                                              ; preds = %123
  %133 = load i64, i64* @VA_GPIO_BASE, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i64 @MXC_OCR1(i32 %134)
  %136 = add nsw i64 %133, %135
  %137 = call i32 @__raw_readl(i64 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %3, align 4
  %139 = mul i32 %138, 2
  %140 = shl i32 3, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %6, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %3, align 4
  %146 = mul i32 %145, 2
  %147 = shl i32 %144, %146
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = load i64, i64* @VA_GPIO_BASE, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i64 @MXC_OCR1(i32 %152)
  %154 = add nsw i64 %151, %153
  %155 = call i32 @__raw_writel(i32 %150, i64 %154)
  %156 = load i64, i64* @VA_GPIO_BASE, align 8
  %157 = load i32, i32* %4, align 4
  %158 = call i64 @MXC_ICONFA1(i32 %157)
  %159 = add nsw i64 %156, %158
  %160 = call i32 @__raw_readl(i64 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %3, align 4
  %162 = mul i32 %161, 2
  %163 = shl i32 3, %162
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %2, align 4
  %168 = load i32, i32* @GPIO_AOUT_SHIFT, align 4
  %169 = ashr i32 %167, %168
  %170 = and i32 %169, 3
  %171 = load i32, i32* %3, align 4
  %172 = mul i32 %171, 2
  %173 = shl i32 %170, %172
  %174 = load i32, i32* %6, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i64, i64* @VA_GPIO_BASE, align 8
  %178 = load i32, i32* %4, align 4
  %179 = call i64 @MXC_ICONFA1(i32 %178)
  %180 = add nsw i64 %177, %179
  %181 = call i32 @__raw_writel(i32 %176, i64 %180)
  %182 = load i64, i64* @VA_GPIO_BASE, align 8
  %183 = load i32, i32* %4, align 4
  %184 = call i64 @MXC_ICONFB1(i32 %183)
  %185 = add nsw i64 %182, %184
  %186 = call i32 @__raw_readl(i64 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %3, align 4
  %188 = mul i32 %187, 2
  %189 = shl i32 3, %188
  %190 = xor i32 %189, -1
  %191 = load i32, i32* %6, align 4
  %192 = and i32 %191, %190
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %2, align 4
  %194 = load i32, i32* @GPIO_BOUT_SHIFT, align 4
  %195 = ashr i32 %193, %194
  %196 = and i32 %195, 3
  %197 = load i32, i32* %3, align 4
  %198 = mul i32 %197, 2
  %199 = shl i32 %196, %198
  %200 = load i32, i32* %6, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load i64, i64* @VA_GPIO_BASE, align 8
  %204 = load i32, i32* %4, align 4
  %205 = call i64 @MXC_ICONFB1(i32 %204)
  %206 = add nsw i64 %203, %205
  %207 = call i32 @__raw_writel(i32 %202, i64 %206)
  br label %286

208:                                              ; preds = %123
  %209 = load i32, i32* %3, align 4
  %210 = sub i32 %209, 16
  store i32 %210, i32* %3, align 4
  %211 = load i64, i64* @VA_GPIO_BASE, align 8
  %212 = load i32, i32* %4, align 4
  %213 = call i64 @MXC_OCR2(i32 %212)
  %214 = add nsw i64 %211, %213
  %215 = call i32 @__raw_readl(i64 %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %3, align 4
  %217 = mul i32 %216, 2
  %218 = shl i32 3, %217
  %219 = xor i32 %218, -1
  %220 = load i32, i32* %6, align 4
  %221 = and i32 %220, %219
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %3, align 4
  %224 = mul i32 %223, 2
  %225 = shl i32 %222, %224
  %226 = load i32, i32* %6, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i64, i64* @VA_GPIO_BASE, align 8
  %230 = load i32, i32* %4, align 4
  %231 = call i64 @MXC_OCR2(i32 %230)
  %232 = add nsw i64 %229, %231
  %233 = call i32 @__raw_writel(i32 %228, i64 %232)
  %234 = load i64, i64* @VA_GPIO_BASE, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @MXC_ICONFA2(i32 %235)
  %237 = add nsw i64 %234, %236
  %238 = call i32 @__raw_readl(i64 %237)
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %3, align 4
  %240 = mul i32 %239, 2
  %241 = shl i32 3, %240
  %242 = xor i32 %241, -1
  %243 = load i32, i32* %6, align 4
  %244 = and i32 %243, %242
  store i32 %244, i32* %6, align 4
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* @GPIO_AOUT_SHIFT, align 4
  %247 = ashr i32 %245, %246
  %248 = and i32 %247, 3
  %249 = load i32, i32* %3, align 4
  %250 = mul i32 %249, 2
  %251 = shl i32 %248, %250
  %252 = load i32, i32* %6, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %6, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load i64, i64* @VA_GPIO_BASE, align 8
  %256 = load i32, i32* %4, align 4
  %257 = call i64 @MXC_ICONFA2(i32 %256)
  %258 = add nsw i64 %255, %257
  %259 = call i32 @__raw_writel(i32 %254, i64 %258)
  %260 = load i64, i64* @VA_GPIO_BASE, align 8
  %261 = load i32, i32* %4, align 4
  %262 = call i64 @MXC_ICONFB2(i32 %261)
  %263 = add nsw i64 %260, %262
  %264 = call i32 @__raw_readl(i64 %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %3, align 4
  %266 = mul i32 %265, 2
  %267 = shl i32 3, %266
  %268 = xor i32 %267, -1
  %269 = load i32, i32* %6, align 4
  %270 = and i32 %269, %268
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %2, align 4
  %272 = load i32, i32* @GPIO_BOUT_SHIFT, align 4
  %273 = ashr i32 %271, %272
  %274 = and i32 %273, 3
  %275 = load i32, i32* %3, align 4
  %276 = mul i32 %275, 2
  %277 = shl i32 %274, %276
  %278 = load i32, i32* %6, align 4
  %279 = or i32 %278, %277
  store i32 %279, i32* %6, align 4
  %280 = load i32, i32* %6, align 4
  %281 = load i64, i64* @VA_GPIO_BASE, align 8
  %282 = load i32, i32* %4, align 4
  %283 = call i64 @MXC_ICONFB2(i32 %282)
  %284 = add nsw i64 %281, %283
  %285 = call i32 @__raw_writel(i32 %280, i64 %284)
  br label %286

286:                                              ; preds = %208, %132
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i64 @MXC_PUEN(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i64 @MXC_DDIR(i32) #1

declare dso_local i64 @MXC_GPR(i32) #1

declare dso_local i64 @MXC_GIUS(i32) #1

declare dso_local i64 @MXC_OCR1(i32) #1

declare dso_local i64 @MXC_ICONFA1(i32) #1

declare dso_local i64 @MXC_ICONFB1(i32) #1

declare dso_local i64 @MXC_OCR2(i32) #1

declare dso_local i64 @MXC_ICONFA2(i32) #1

declare dso_local i64 @MXC_ICONFB2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
