; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_goertzel_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_capidtmf.c_capidtmf_goertzel_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT = common dso_local global i32 0, align 4
@CAPIDTMF_RECV_FUNDAMENTAL_DECREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i16*, i64)* @capidtmf_goertzel_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @capidtmf_goertzel_loop(i64* %0, i64* %1, i16* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i16* %2, i16** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %131, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %134

21:                                               ; preds = %16
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = ashr i64 %38, 1
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = shl i64 %40, 1
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %75, %44
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %45
  %51 = load i16*, i16** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i64
  %57 = load i64, i64* %15, align 8
  %58 = sub nsw i64 %56, %57
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %14, align 8
  %61 = ashr i64 %60, 16
  %62 = mul nsw i64 %59, %61
  %63 = add nsw i64 %58, %62
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %14, align 8
  %67 = and i64 %66, 65535
  %68 = trunc i64 %67 to i32
  %69 = mul nsw i32 %65, %68
  %70 = ashr i32 %69, 15
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %63, %71
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %14, align 8
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %13, align 8
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %50
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %45

78:                                               ; preds = %45
  br label %118

79:                                               ; preds = %21
  %80 = load i64, i64* %11, align 8
  %81 = sub nsw i64 0, %80
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = sub nsw i64 0, %82
  store i64 %83, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %114, %79
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %8, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %84
  %90 = load i16*, i16** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i16, i16* %90, i64 %92
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i64
  %96 = load i64, i64* %15, align 8
  %97 = sub nsw i64 %95, %96
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %14, align 8
  %100 = ashr i64 %99, 16
  %101 = mul nsw i64 %98, %100
  %102 = load i64, i64* %12, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %14, align 8
  %105 = and i64 %104, 65535
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %103, %106
  %108 = ashr i32 %107, 15
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %101, %109
  %111 = sub nsw i64 %97, %110
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %14, align 8
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %13, align 8
  store i64 %113, i64* %14, align 8
  br label %114

114:                                              ; preds = %89
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %84

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i64, i64* %14, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %119, i64* %123, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64*, i64** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  store i64 %124, i64* %130, align 8
  br label %131

131:                                              ; preds = %118
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %16

134:                                              ; preds = %16
  %135 = load i64*, i64** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %14, align 8
  %140 = load i64*, i64** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %140, i64 %144
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %15, align 8
  %147 = load i64*, i64** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = ashr i64 %151, 1
  %153 = shl i64 %152, 1
  store i64 %153, i64* %11, align 8
  %154 = load i64, i64* %11, align 8
  %155 = icmp sge i64 %154, 0
  br i1 %155, label %156, label %195

156:                                              ; preds = %134
  store i32 0, i32* %10, align 4
  br label %157

157:                                              ; preds = %191, %156
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %8, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %194

162:                                              ; preds = %157
  %163 = load i16*, i16** %7, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i16, i16* %163, i64 %165
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i64
  %169 = load i64, i64* %15, align 8
  %170 = sub nsw i64 %168, %169
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %14, align 8
  %173 = ashr i64 %172, 16
  %174 = mul nsw i64 %171, %173
  %175 = add nsw i64 %170, %174
  %176 = load i64, i64* %11, align 8
  %177 = ashr i64 %176, 1
  %178 = trunc i64 %177 to i32
  %179 = load i64, i64* %14, align 8
  %180 = and i64 %179, 65535
  %181 = trunc i64 %180 to i32
  %182 = mul nsw i32 %178, %181
  %183 = ashr i32 %182, 15
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %175, %184
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %14, align 8
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %13, align 8
  store i64 %187, i64* %14, align 8
  %188 = load i64, i64* @CAPIDTMF_RECV_FUNDAMENTAL_DECREMENT, align 8
  %189 = load i64, i64* %11, align 8
  %190 = sub nsw i64 %189, %188
  store i64 %190, i64* %11, align 8
  br label %191

191:                                              ; preds = %162
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %157

194:                                              ; preds = %157
  br label %236

195:                                              ; preds = %134
  %196 = load i64, i64* %11, align 8
  %197 = sub nsw i64 0, %196
  store i64 %197, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %198

198:                                              ; preds = %232, %195
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %8, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %235

203:                                              ; preds = %198
  %204 = load i16*, i16** %7, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, i16* %204, i64 %206
  %208 = load i16, i16* %207, align 2
  %209 = sext i16 %208 to i64
  %210 = load i64, i64* %15, align 8
  %211 = sub nsw i64 %209, %210
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* %14, align 8
  %214 = ashr i64 %213, 16
  %215 = mul nsw i64 %212, %214
  %216 = load i64, i64* %11, align 8
  %217 = ashr i64 %216, 1
  %218 = trunc i64 %217 to i32
  %219 = load i64, i64* %14, align 8
  %220 = and i64 %219, 65535
  %221 = trunc i64 %220 to i32
  %222 = mul nsw i32 %218, %221
  %223 = ashr i32 %222, 15
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %215, %224
  %226 = sub nsw i64 %211, %225
  store i64 %226, i64* %13, align 8
  %227 = load i64, i64* %14, align 8
  store i64 %227, i64* %15, align 8
  %228 = load i64, i64* %13, align 8
  store i64 %228, i64* %14, align 8
  %229 = load i64, i64* @CAPIDTMF_RECV_FUNDAMENTAL_DECREMENT, align 8
  %230 = load i64, i64* %11, align 8
  %231 = add nsw i64 %230, %229
  store i64 %231, i64* %11, align 8
  br label %232

232:                                              ; preds = %203
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %198

235:                                              ; preds = %198
  br label %236

236:                                              ; preds = %235, %194
  %237 = load i64, i64* %11, align 8
  %238 = load i64*, i64** %6, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  store i64 %237, i64* %241, align 8
  %242 = load i64, i64* %14, align 8
  %243 = load i64*, i64** %5, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  store i64 %242, i64* %246, align 8
  %247 = load i64, i64* %15, align 8
  %248 = load i64*, i64** %5, align 8
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* @CAPIDTMF_RECV_TOTAL_FREQUENCY_COUNT, align 4
  %251 = add nsw i32 %249, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i64, i64* %248, i64 %252
  store i64 %247, i64* %253, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
