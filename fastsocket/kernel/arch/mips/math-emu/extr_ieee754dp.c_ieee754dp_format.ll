; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754dp.c_ieee754dp_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_ieee754dp.c_ieee754dp_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@DP_MBITS = common dso_local global i32 0, align 4
@DP_HIDDEN_BIT = common dso_local global i32 0, align 4
@DP_EMIN = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IEEE754_UNDERFLOW = common dso_local global i32 0, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@DP_EMAX = common dso_local global i32 0, align 4
@IEEE754_OVERFLOW = common dso_local global i32 0, align 4
@DP_EBIAS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_format(i32 %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32, i32* @DP_MBITS, align 4
  %13 = add nsw i32 %12, 1
  %14 = add nsw i32 %13, 3
  %15 = ashr i32 %11, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %21 = shl i32 %20, 3
  %22 = and i32 %19, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @DP_EMIN, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %109

27:                                               ; preds = %3
  %28 = load i32, i32* @DP_EMIN, align 4
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
  %41 = call i32 @ieee754dp_zero(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %236

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ieee754dp_zero(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %236

45:                                               ; preds = %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @ieee754dp_min(i32 0)
  store i32 %49, i32* %4, align 4
  br label %236

50:                                               ; preds = %45
  %51 = call i32 @ieee754dp_zero(i32 1)
  store i32 %51, i32* %4, align 4
  br label %236

52:                                               ; preds = %33
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @ieee754dp_zero(i32 0)
  store i32 %56, i32* %4, align 4
  br label %236

57:                                               ; preds = %52
  %58 = call i32 @ieee754dp_min(i32 1)
  store i32 %58, i32* %4, align 4
  br label %236

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @DP_EMIN, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @get_rounding(i32 %66, i32 %67)
  %69 = load i32, i32* @DP_MBITS, align 4
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
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = call i32 @DP_MBIT(i32 3)
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %108

89:                                               ; preds = %65, %60
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @XDPSRS(i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %98 = shl i32 %97, 3
  %99 = and i32 %96, %98
  %100 = icmp eq i32 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @DP_EMIN, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %108

108:                                              ; preds = %89, %74
  br label %109

109:                                              ; preds = %108, %3
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @DP_MBIT(i32 3)
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %109
  %116 = load i32, i32* @IEEE754_INEXACT, align 4
  %117 = call i32 @SETCX(i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %120 = shl i32 %119, 3
  %121 = and i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %125 = call i32 @SETCX(i32 %124)
  br label %126

126:                                              ; preds = %123, %115
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @get_rounding(i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @DP_MBITS, align 4
  %132 = add nsw i32 %131, 3
  %133 = add nsw i32 %132, 1
  %134 = ashr i32 %130, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %136, %126
  br label %142

142:                                              ; preds = %141, %109
  %143 = load i32, i32* %7, align 4
  %144 = ashr i32 %143, 3
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @DP_MBITS, align 4
  %147 = add nsw i32 %146, 1
  %148 = ashr i32 %145, %147
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @DP_EMIN, align 4
  %154 = icmp sge i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @DP_EMAX, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %187

160:                                              ; preds = %142
  %161 = load i32, i32* @IEEE754_OVERFLOW, align 4
  %162 = call i32 @SETCX(i32 %161)
  %163 = load i32, i32* @IEEE754_INEXACT, align 4
  %164 = call i32 @SETCX(i32 %163)
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 8
  switch i32 %165, label %186 [
    i32 130, label %166
    i32 128, label %169
    i32 129, label %172
    i32 131, label %179
  ]

166:                                              ; preds = %160
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @ieee754dp_inf(i32 %167)
  store i32 %168, i32* %4, align 4
  br label %236

169:                                              ; preds = %160
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @ieee754dp_max(i32 %170)
  store i32 %171, i32* %4, align 4
  br label %236

172:                                              ; preds = %160
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @ieee754dp_inf(i32 0)
  store i32 %176, i32* %4, align 4
  br label %236

177:                                              ; preds = %172
  %178 = call i32 @ieee754dp_max(i32 1)
  store i32 %178, i32* %4, align 4
  br label %236

179:                                              ; preds = %160
  %180 = load i32, i32* %5, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = call i32 @ieee754dp_max(i32 0)
  store i32 %183, i32* %4, align 4
  br label %236

184:                                              ; preds = %179
  %185 = call i32 @ieee754dp_inf(i32 1)
  store i32 %185, i32* %4, align 4
  br label %236

186:                                              ; preds = %160
  br label %187

187:                                              ; preds = %186, %142
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %190 = and i32 %188, %189
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @DP_EMIN, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 1), align 4
  %199 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %204 = call i32 @SETCX(i32 %203)
  br label %205

205:                                              ; preds = %202, %192
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @DP_EMIN, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @DP_EBIAS, align 8
  %211 = add nsw i64 %209, %210
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @builddp(i32 %206, i64 %211, i32 %212)
  store i32 %213, i32* %4, align 4
  br label %236

214:                                              ; preds = %187
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @DP_MBITS, align 4
  %217 = add nsw i32 %216, 1
  %218 = ashr i32 %215, %217
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %7, align 4
  %223 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %224 = and i32 %222, %223
  %225 = call i32 @assert(i32 %224)
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %6, align 4
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* @DP_EBIAS, align 8
  %230 = add nsw i64 %228, %229
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @DP_HIDDEN_BIT, align 4
  %233 = xor i32 %232, -1
  %234 = and i32 %231, %233
  %235 = call i32 @builddp(i32 %226, i64 %230, i32 %234)
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %214, %205, %184, %182, %177, %175, %169, %166, %57, %55, %50, %48, %42, %39
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SETCX(i32) #1

declare dso_local i32 @ieee754dp_zero(i32) #1

declare dso_local i32 @ieee754dp_min(i32) #1

declare dso_local i32 @get_rounding(i32, i32) #1

declare dso_local i32 @DP_MBIT(i32) #1

declare dso_local i32 @XDPSRS(i32, i32) #1

declare dso_local i32 @ieee754dp_inf(i32) #1

declare dso_local i32 @ieee754dp_max(i32) #1

declare dso_local i32 @builddp(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
