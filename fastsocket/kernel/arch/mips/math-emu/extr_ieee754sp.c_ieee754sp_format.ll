; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754sp.c_ieee754sp_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754sp.c_ieee754sp_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@SP_MBITS = common dso_local global i32 0, align 4
@SP_HIDDEN_BIT = common dso_local global i32 0, align 4
@SP_EMIN = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IEEE754_UNDERFLOW = common dso_local global i32 0, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@SP_EMAX = common dso_local global i32 0, align 4
@IEEE754_OVERFLOW = common dso_local global i32 0, align 4
@SP_EBIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_format(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SP_MBITS, align 4
  %13 = add nsw i32 %12, 1
  %14 = add nsw i32 %13, 3
  %15 = lshr i32 %11, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %21 = shl i32 %20, 3
  %22 = and i32 %19, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SP_EMIN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %3
  %28 = load i32, i32* @SP_EMIN, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 2), align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %35 = call i32 @SETCX(i32 %34)
  %36 = load i32, i32* @IEEE754_INEXACT, align 4
  %37 = call i32 @SETCX(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 8
  switch i32 %38, label %59 [
    i32 130, label %39
    i32 128, label %42
    i32 129, label %45
    i32 131, label %52
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ieee754sp_zero(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %232

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ieee754sp_zero(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %232

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @ieee754sp_min(i32 0)
  store i32 %49, i32* %4, align 4
  br label %232

50:                                               ; preds = %45
  %51 = call i32 @ieee754sp_zero(i32 1)
  store i32 %51, i32* %4, align 4
  br label %232

52:                                               ; preds = %33
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @ieee754sp_zero(i32 0)
  store i32 %56, i32* %4, align 4
  br label %232

57:                                               ; preds = %52
  %58 = call i32 @ieee754sp_min(i32 1)
  store i32 %58, i32* %4, align 4
  br label %232

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @SP_EMIN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @get_rounding(i32 %66, i32 %67)
  %69 = load i32, i32* @SP_MBITS, align 4
  %70 = add nsw i32 %69, 1
  %71 = add nsw i32 %70, 3
  %72 = ashr i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %65
  %75 = load i32, i32* @IEEE754_INEXACT, align 4
  %76 = call i32 @SETCX(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @get_rounding(i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = lshr i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = call i32 @SP_MBIT(i32 3)
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %104

89:                                               ; preds = %65, %60
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @SPXSRSXn(i32 %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %94 = shl i32 %93, 3
  %95 = and i32 %92, %94
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @SP_EMIN, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %89, %74
  br label %105

105:                                              ; preds = %104, %3
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @SP_MBIT(i32 3)
  %108 = sub nsw i32 %107, 1
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %138

111:                                              ; preds = %105
  %112 = load i32, i32* @IEEE754_INEXACT, align 4
  %113 = call i32 @SETCX(i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %116 = shl i32 %115, 3
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %121 = call i32 @SETCX(i32 %120)
  br label %122

122:                                              ; preds = %119, %111
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @get_rounding(i32 %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SP_MBITS, align 4
  %128 = add nsw i32 %127, 1
  %129 = add nsw i32 %128, 3
  %130 = lshr i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load i32, i32* %7, align 4
  %134 = lshr i32 %133, 1
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %132, %122
  br label %138

138:                                              ; preds = %137, %105
  %139 = load i32, i32* %7, align 4
  %140 = lshr i32 %139, 3
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @SP_MBITS, align 4
  %143 = add nsw i32 %142, 1
  %144 = lshr i32 %141, %143
  %145 = icmp eq i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @SP_EMIN, align 4
  %150 = icmp sge i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @SP_EMAX, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %183

156:                                              ; preds = %138
  %157 = load i32, i32* @IEEE754_OVERFLOW, align 4
  %158 = call i32 @SETCX(i32 %157)
  %159 = load i32, i32* @IEEE754_INEXACT, align 4
  %160 = call i32 @SETCX(i32 %159)
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 8
  switch i32 %161, label %182 [
    i32 130, label %162
    i32 128, label %165
    i32 129, label %168
    i32 131, label %175
  ]

162:                                              ; preds = %156
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @ieee754sp_inf(i32 %163)
  store i32 %164, i32* %4, align 4
  br label %232

165:                                              ; preds = %156
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @ieee754sp_max(i32 %166)
  store i32 %167, i32* %4, align 4
  br label %232

168:                                              ; preds = %156
  %169 = load i32, i32* %5, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = call i32 @ieee754sp_inf(i32 0)
  store i32 %172, i32* %4, align 4
  br label %232

173:                                              ; preds = %168
  %174 = call i32 @ieee754sp_max(i32 1)
  store i32 %174, i32* %4, align 4
  br label %232

175:                                              ; preds = %156
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @ieee754sp_max(i32 0)
  store i32 %179, i32* %4, align 4
  br label %232

180:                                              ; preds = %175
  %181 = call i32 @ieee754sp_inf(i32 1)
  store i32 %181, i32* %4, align 4
  br label %232

182:                                              ; preds = %156
  br label %183

183:                                              ; preds = %182, %138
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %210

188:                                              ; preds = %183
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* @SP_EMIN, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 1), align 4
  %195 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %200 = call i32 @SETCX(i32 %199)
  br label %201

201:                                              ; preds = %198, %188
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @SP_EMIN, align 4
  %204 = sub nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = load i64, i64* @SP_EBIAS, align 8
  %207 = add nsw i64 %205, %206
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @buildsp(i32 %202, i64 %207, i32 %208)
  store i32 %209, i32* %4, align 4
  br label %232

210:                                              ; preds = %183
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @SP_MBITS, align 4
  %213 = add nsw i32 %212, 1
  %214 = lshr i32 %211, %213
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %220 = and i32 %218, %219
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = load i64, i64* @SP_EBIAS, align 8
  %226 = add nsw i64 %224, %225
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* @SP_HIDDEN_BIT, align 4
  %229 = xor i32 %228, -1
  %230 = and i32 %227, %229
  %231 = call i32 @buildsp(i32 %222, i64 %226, i32 %230)
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %210, %201, %180, %178, %173, %171, %165, %162, %57, %55, %50, %48, %42, %39
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754sp_zero(i32) #1

declare dso_local i32 @ieee754sp_min(i32) #1

declare dso_local i32 @get_rounding(i32, i32) #1

declare dso_local i32 @SP_MBIT(i32) #1

declare dso_local i32 @SPXSRSXn(i32) #1

declare dso_local i32 @ieee754sp_inf(i32) #1

declare dso_local i32 @ieee754sp_max(i32) #1

declare dso_local i32 @buildsp(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
