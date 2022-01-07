; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_generate_ucode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_generate_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @generate_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_ucode(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %123, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %126

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 255
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 16
  %34 = and i32 %33, 255
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 255
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 240, i32* %52, align 4
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  %61 = shl i32 %60, 4
  %62 = or i32 %61, 12
  %63 = load i32, i32* %12, align 4
  %64 = ashr i32 %63, 6
  %65 = or i32 %62, %64
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = shl i32 %71, 2
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 128, %78
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 244, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 4
  %92 = or i32 64, %91
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 %98, 4
  %100 = or i32 %99, 12
  %101 = load i32, i32* %10, align 4
  %102 = ashr i32 %101, 6
  %103 = or i32 %100, %102
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %109, 2
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 128, %116
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %117, i32* %122, align 4
  br label %123

123:                                              ; preds = %20
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %17

126:                                              ; preds = %17
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %233, %126
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 128
  br i1 %129, label %130, label %236

130:                                              ; preds = %127
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 24
  %137 = and i32 %136, 255
  store i32 %137, i32* %13, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 255
  store i32 %144, i32* %14, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  store i32 %151, i32* %15, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 255
  store i32 %157, i32* %16, align 4
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 240, i32* %162, align 4
  %163 = load i32, i32* %15, align 4
  %164 = ashr i32 %163, 4
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* %15, align 4
  %171 = shl i32 %170, 4
  %172 = or i32 %171, 2
  %173 = load i32, i32* %8, align 4
  %174 = ashr i32 %173, 6
  %175 = or i32 %172, %174
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %8, align 4
  %182 = shl i32 %181, 2
  %183 = or i32 %182, 3
  %184 = load i32*, i32** %4, align 8
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 244, i32* %199, align 4
  %200 = load i32, i32* %13, align 4
  %201 = ashr i32 %200, 4
  %202 = or i32 64, %201
  %203 = load i32*, i32** %4, align 8
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 %202, i32* %207, align 4
  %208 = load i32, i32* %13, align 4
  %209 = shl i32 %208, 4
  %210 = or i32 %209, 2
  %211 = load i32, i32* %8, align 4
  %212 = ashr i32 %211, 6
  %213 = or i32 %210, %212
  %214 = load i32*, i32** %4, align 8
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %8, align 4
  %220 = shl i32 %219, 2
  %221 = or i32 %220, 3
  %222 = load i32*, i32** %4, align 8
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* %7, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %7, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %227, i32* %232, align 4
  br label %233

233:                                              ; preds = %130
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %127

236:                                              ; preds = %127
  %237 = load i32*, i32** %4, align 8
  %238 = load i32, i32* %7, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %7, align 4
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  store i32 224, i32* %241, align 4
  %242 = load i32*, i32** %4, align 8
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %7, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 0, i32* %246, align 4
  %247 = load i32*, i32** %4, align 8
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 1, i32* %251, align 4
  %252 = load i32*, i32** %4, align 8
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32 0, i32* %256, align 4
  %257 = load i32*, i32** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %7, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  store i32 0, i32* %261, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
