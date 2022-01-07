; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_t1isa.c_t1_detectandinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_t1isa.c_t1_detectandinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEMA_VERSION_ID = common dso_local global i32 0, align 4
@hema_irq_table = common dso_local global i8* null, align 8
@T1_RESETBOARD = common dso_local global i32 0, align 4
@T1_FASTLINK = common dso_local global i32 0, align 4
@T1_OUTSTAT = common dso_local global i64 0, align 8
@HEMA_PAL_ID = common dso_local global i32 0, align 4
@T1_RESETLINK = common dso_local global i32 0, align 4
@T1_SLOWLINK = common dso_local global i32 0, align 4
@T1_ANALYSE = common dso_local global i32 0, align 4
@T1_INSTAT = common dso_local global i64 0, align 8
@T1_IRQENABLE = common dso_local global i64 0, align 8
@T1_FIFOSTAT = common dso_local global i64 0, align 8
@T1_IRQMASTER = common dso_local global i64 0, align 8
@T1_IDENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @t1_detectandinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t1_detectandinit(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 1
  %14 = shl i32 %13, 3
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 2
  %17 = shl i32 %16, 1
  %18 = or i32 %14, %17
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 4
  %21 = ashr i32 %20, 1
  %22 = or i32 %18, %21
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 8
  %25 = ashr i32 %24, 3
  %26 = or i32 %22, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %9, align 1
  %28 = load i32, i32* @HEMA_VERSION_ID, align 4
  %29 = shl i32 %28, 4
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 15
  %33 = or i32 %29, %32
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  store i8 5, i8* %37, align 1
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  store i8 17, i8* %39, align 1
  %40 = load i8*, i8** @hema_irq_table, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 15
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 5
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 6
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  store i8 0, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @T1_RESETBOARD, align 4
  %51 = call i32 @t1outp(i32 %49, i32 %50, i32 15)
  %52 = call i32 @mdelay(i32 100)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @T1_FASTLINK, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* @T1_OUTSTAT, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @t1inp(i32 %53, i64 %57)
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %10, align 1
  %60 = load i32, i32* %5, align 4
  %61 = lshr i32 %60, 4
  %62 = and i32 %61, 255
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %10, align 1
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %73, %3
  %65 = load i32, i32* %11, align 4
  %66 = icmp sle i32 %65, 15
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 @t1outp(i32 %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %64

76:                                               ; preds = %64
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @HEMA_PAL_ID, align 4
  %79 = and i32 %78, 15
  %80 = load i8, i8* %10, align 1
  %81 = zext i8 %80 to i32
  %82 = call i32 @t1outp(i32 %77, i32 %79, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @HEMA_PAL_ID, align 4
  %85 = ashr i32 %84, 4
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = call i32 @t1outp(i32 %83, i32 %85, i32 %88)
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %101, %76
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 7
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = call i32 @t1outp(i32 %94, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %90

104:                                              ; preds = %90
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = lshr i32 %106, 4
  %108 = and i32 %107, 3
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = call i32 @t1outp(i32 %105, i32 %108, i32 %111)
  %113 = call i32 @mdelay(i32 100)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @T1_FASTLINK, align 4
  %116 = load i32, i32* @T1_RESETLINK, align 4
  %117 = add i32 %115, %116
  %118 = call i32 @t1outp(i32 %114, i32 %117, i32 0)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @T1_SLOWLINK, align 4
  %121 = load i32, i32* @T1_RESETLINK, align 4
  %122 = add i32 %120, %121
  %123 = call i32 @t1outp(i32 %119, i32 %122, i32 0)
  %124 = call i32 @mdelay(i32 10)
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @T1_FASTLINK, align 4
  %127 = load i32, i32* @T1_RESETLINK, align 4
  %128 = add i32 %126, %127
  %129 = call i32 @t1outp(i32 %125, i32 %128, i32 1)
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @T1_SLOWLINK, align 4
  %132 = load i32, i32* @T1_RESETLINK, align 4
  %133 = add i32 %131, %132
  %134 = call i32 @t1outp(i32 %130, i32 %133, i32 1)
  %135 = call i32 @mdelay(i32 100)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @T1_FASTLINK, align 4
  %138 = load i32, i32* @T1_RESETLINK, align 4
  %139 = add i32 %137, %138
  %140 = call i32 @t1outp(i32 %136, i32 %139, i32 0)
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @T1_SLOWLINK, align 4
  %143 = load i32, i32* @T1_RESETLINK, align 4
  %144 = add i32 %142, %143
  %145 = call i32 @t1outp(i32 %141, i32 %144, i32 0)
  %146 = call i32 @mdelay(i32 10)
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @T1_FASTLINK, align 4
  %149 = load i32, i32* @T1_ANALYSE, align 4
  %150 = add i32 %148, %149
  %151 = call i32 @t1outp(i32 %147, i32 %150, i32 0)
  %152 = call i32 @mdelay(i32 5)
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @T1_SLOWLINK, align 4
  %155 = load i32, i32* @T1_ANALYSE, align 4
  %156 = add i32 %154, %155
  %157 = call i32 @t1outp(i32 %153, i32 %156, i32 0)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @T1_FASTLINK, align 4
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* @T1_OUTSTAT, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @t1inp(i32 %158, i64 %162)
  %164 = icmp ne i32 %163, 1
  br i1 %164, label %165, label %166

165:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %244

166:                                              ; preds = %104
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @T1_FASTLINK, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* @T1_INSTAT, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @t1inp(i32 %167, i64 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  store i32 2, i32* %4, align 4
  br label %244

175:                                              ; preds = %166
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @T1_FASTLINK, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* @T1_IRQENABLE, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @t1inp(i32 %176, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  store i32 3, i32* %4, align 4
  br label %244

184:                                              ; preds = %175
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* @T1_FASTLINK, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* @T1_FIFOSTAT, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @t1inp(i32 %185, i64 %189)
  %191 = and i32 %190, 240
  %192 = icmp ne i32 %191, 112
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  store i32 4, i32* %4, align 4
  br label %244

194:                                              ; preds = %184
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @T1_FASTLINK, align 4
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* @T1_IRQMASTER, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @t1inp(i32 %195, i64 %199)
  %201 = and i32 %200, 14
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %194
  store i32 5, i32* %4, align 4
  br label %244

204:                                              ; preds = %194
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @T1_FASTLINK, align 4
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* @T1_IDENT, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @t1inp(i32 %205, i64 %209)
  %211 = and i32 %210, 125
  %212 = icmp ne i32 %211, 1
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i32 6, i32* %4, align 4
  br label %244

214:                                              ; preds = %204
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @T1_SLOWLINK, align 4
  %217 = zext i32 %216 to i64
  %218 = load i64, i64* @T1_OUTSTAT, align 8
  %219 = add nsw i64 %217, %218
  %220 = call i32 @t1inp(i32 %215, i64 %219)
  %221 = icmp ne i32 %220, 1
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  store i32 7, i32* %4, align 4
  br label %244

223:                                              ; preds = %214
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @T1_SLOWLINK, align 4
  %226 = zext i32 %225 to i64
  %227 = load i64, i64* @T1_IRQMASTER, align 8
  %228 = add nsw i64 %226, %227
  %229 = call i32 @t1inp(i32 %224, i64 %228)
  %230 = and i32 %229, 14
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %223
  store i32 8, i32* %4, align 4
  br label %244

233:                                              ; preds = %223
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* @T1_SLOWLINK, align 4
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* @T1_IDENT, align 8
  %238 = add nsw i64 %236, %237
  %239 = call i32 @t1inp(i32 %234, i64 %238)
  %240 = and i32 %239, 125
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %233
  store i32 9, i32* %4, align 4
  br label %244

243:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %243, %242, %232, %222, %213, %203, %193, %183, %174, %165
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @t1outp(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @t1inp(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
