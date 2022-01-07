; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aes_generic.c_crypto_aes_expand_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aes_generic.c_crypto_aes_expand_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aes_expand_key(%struct.crypto_aes_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aes_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.crypto_aes_ctx* %0, %struct.crypto_aes_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 130
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 129
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 128
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %272

27:                                               ; preds = %21, %18, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @le32_to_cpu(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 24
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %35, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le32_to_cpu(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 25
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %51, i32* %62, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @le32_to_cpu(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 26
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %67, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %83, i32* %87, align 4
  %88 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %89 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 27
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %83, i32* %94, align 4
  %95 = load i32, i32* %7, align 4
  switch i32 %95, label %190 [
    i32 130, label %96
    i32 129, label %112
    i32 128, label %141
  ]

96:                                               ; preds = %27
  %97 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %108, %96
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @loop4(i32 %106)
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %102

111:                                              ; preds = %102
  br label %190

112:                                              ; preds = %27
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @le32_to_cpu(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  store i32 %117, i32* %121, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %128 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 %126, i32* %130, align 4
  store i32 %126, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %137, %112
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 8
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @loop6(i32 %135)
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %131

140:                                              ; preds = %131
  br label %190

141:                                              ; preds = %27
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 4
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @le32_to_cpu(i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %148 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32 %146, i32* %150, align 4
  %151 = load i32*, i32** %8, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 5
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @le32_to_cpu(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %157 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  store i32 %155, i32* %159, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @le32_to_cpu(i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %166 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 6
  store i32 %164, i32* %168, align 4
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 7
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @le32_to_cpu(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %175 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 7
  store i32 %173, i32* %177, align 4
  store i32 %173, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %184, %141
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 6
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @loop8(i32 %182)
  br label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %178

187:                                              ; preds = %178
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @loop8tophalf(i32 %188)
  br label %190

190:                                              ; preds = %27, %187, %140, %111
  %191 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %192 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = add i32 %194, 24
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %200 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %198, i32* %202, align 4
  %203 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %204 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = add i32 %206, 25
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %212 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  store i32 %210, i32* %214, align 4
  %215 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %216 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = add i32 %218, 26
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %224 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  store i32 %222, i32* %226, align 4
  %227 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %228 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = add i32 %230, 27
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %236 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 3
  store i32 %234, i32* %238, align 4
  store i32 4, i32* %9, align 4
  br label %239

239:                                              ; preds = %268, %190
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %7, align 4
  %242 = add i32 %241, 24
  %243 = icmp ult i32 %240, %242
  br i1 %243, label %244, label %271

244:                                              ; preds = %239
  %245 = load i32, i32* %7, align 4
  %246 = add i32 %245, 24
  %247 = load i32, i32* %9, align 4
  %248 = and i32 %247, -4
  %249 = sub i32 %246, %248
  %250 = load i32, i32* %9, align 4
  %251 = and i32 %250, 3
  %252 = add i32 %249, %251
  store i32 %252, i32* %14, align 4
  %253 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %254 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %261 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @imix_col(i32 %259, i32 %266)
  br label %268

268:                                              ; preds = %244
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %239

271:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %272

272:                                              ; preds = %271, %24
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @loop4(i32) #1

declare dso_local i32 @loop6(i32) #1

declare dso_local i32 @loop8(i32) #1

declare dso_local i32 @loop8tophalf(i32) #1

declare dso_local i32 @imix_col(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
