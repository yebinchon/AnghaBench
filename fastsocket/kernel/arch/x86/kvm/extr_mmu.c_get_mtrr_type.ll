; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_get_mtrr_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_get_mtrr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrr_state_type = type { i32, i32*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@KVM_NR_VAR_MTRR = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@MTRR_TYPE_UNCACHABLE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRBACK = common dso_local global i32 0, align 4
@MTRR_TYPE_WRTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtrr_state_type*, i32, i32)* @get_mtrr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mtrr_type(%struct.mtrr_state_type* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtrr_state_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  store %struct.mtrr_state_type* %0, %struct.mtrr_state_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @KVM_NR_VAR_MTRR, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %19 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 255, i32* %4, align 4
  br label %248

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %27 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 1048576
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 524288
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 16
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %42 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %248

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 786432
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  store i32 8, i32* %14, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 524288
  %54 = ashr i32 %53, 14
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %14, align 4
  %57 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %58 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  br label %248

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 16777216
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  store i32 24, i32* %14, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 786432
  %70 = ashr i32 %69, 12
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %14, align 4
  %73 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %74 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %248

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %30, %23
  %84 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %85 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %91 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %4, align 4
  br label %248

93:                                               ; preds = %83
  store i32 255, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %236, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %239

98:                                               ; preds = %94
  %99 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %100 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %99, i32 0, i32 3
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 2048
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %98
  br label %236

110:                                              ; preds = %98
  %111 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %112 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %111, i32 0, i32 3
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 32
  %121 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %122 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @PAGE_MASK, align 4
  %130 = and i32 %128, %129
  %131 = add nsw i32 %120, %130
  store i32 %131, i32* %9, align 4
  %132 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %133 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %132, i32 0, i32 3
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 %140, 32
  %142 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %143 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %142, i32 0, i32 3
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @PAGE_MASK, align 4
  %151 = and i32 %149, %150
  %152 = add nsw i32 %141, %151
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %155, %158
  %160 = zext i1 %159 to i32
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %15, align 2
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %10, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %165, %166
  %168 = icmp eq i32 %164, %167
  %169 = zext i1 %168 to i32
  %170 = trunc i32 %169 to i16
  store i16 %170, i16* %16, align 2
  %171 = load i16, i16* %15, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* %16, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %110
  store i32 254, i32* %4, align 4
  br label %248

177:                                              ; preds = %110
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  br label %236

186:                                              ; preds = %177
  %187 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %188 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %187, i32 0, i32 3
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 255
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp eq i32 %196, 255
  br i1 %197, label %198, label %200

198:                                              ; preds = %186
  %199 = load i32, i32* %12, align 4
  store i32 %199, i32* %11, align 4
  br label %236

200:                                              ; preds = %186
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %200
  %209 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  store i32 %209, i32* %4, align 4
  br label %248

210:                                              ; preds = %204
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %214, %210
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %222, %214
  %227 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* @MTRR_TYPE_WRTHROUGH, align 4
  store i32 %228, i32* %12, align 4
  br label %229

229:                                              ; preds = %226, %222, %218
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  store i32 %234, i32* %4, align 4
  br label %248

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %198, %185, %109
  %237 = load i32, i32* %8, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %94

239:                                              ; preds = %94
  %240 = load i32, i32* %11, align 4
  %241 = icmp ne i32 %240, 255
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = load i32, i32* %11, align 4
  store i32 %243, i32* %4, align 4
  br label %248

244:                                              ; preds = %239
  %245 = load %struct.mtrr_state_type*, %struct.mtrr_state_type** %5, align 8
  %246 = getelementptr inbounds %struct.mtrr_state_type, %struct.mtrr_state_type* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %244, %242, %233, %208, %176, %89, %67, %51, %36, %22
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
