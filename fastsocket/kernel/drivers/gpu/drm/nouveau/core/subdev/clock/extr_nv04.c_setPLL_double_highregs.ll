; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_double_highregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_double_highregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_clock_priv = type { i32 }
%struct.nouveau_pll_vals = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*)* @setPLL_double_highregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPLL_double_highregs(%struct.nv04_clock_priv* %0, i32 %1, %struct.nouveau_pll_vals* %2) #0 {
  %4 = alloca %struct.nv04_clock_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_pll_vals*, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nv04_clock_priv* %0, %struct.nv04_clock_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_pll_vals* %2, %struct.nouveau_pll_vals** %6, align 8
  %21 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %22 = call %struct.TYPE_4__* @nouveau_bios(%struct.nv04_clock_priv* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 53
  br label %31

31:                                               ; preds = %28, %3
  %32 = phi i1 [ true, %3 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 6817056
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 92, i32 112
  %39 = add nsw i32 %34, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nv_rd32(%struct.nv04_clock_priv* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %31
  %46 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @nv_rd32(%struct.nv04_clock_priv* %46, i32 %47)
  br label %50

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, -524288
  %54 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %60 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 2147418112
  %65 = or i32 %64, -2147483648
  %66 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %67 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  store i32 %69, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %70 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %71 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %50
  %75 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %76 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %79 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %77, %80
  br label %82

82:                                               ; preds = %74, %50
  %83 = phi i1 [ true, %50 ], [ %81, %74 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @powerctrl_1_shift(i32 %85, i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  %92 = and i32 %91, -54001665
  %93 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %94 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 24
  %97 = shl i32 %96, 21
  %98 = or i32 %92, %97
  %99 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %100 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 7
  %103 = shl i32 %102, 19
  %104 = or i32 %98, %103
  %105 = or i32 %104, 128
  %106 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %107 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 7
  %110 = shl i32 %109, 4
  %111 = or i32 %105, %110
  store i32 %111, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %90, %82
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 64
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = icmp sge i32 %116, 6817032
  br i1 %117, label %118, label %136

118:                                              ; preds = %115
  %119 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %120 = call i32 @nv_rd32(%struct.nv04_clock_priv* %119, i32 6817152)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @new_ramdac580(i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  store i32 -1, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = or i32 %133, 287
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %115, %112
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %137, 112
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = and i32 %140, 2147483647
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 4, i32 12
  %146 = shl i32 %145, 28
  %147 = or i32 %141, %146
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %139, %136
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %238

157:                                              ; preds = %152, %148
  %158 = load i32, i32* %19, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %162 = call i32 @nv_rd32(%struct.nv04_clock_priv* %161, i32 5508)
  store i32 %162, i32* %17, align 4
  %163 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %19, align 4
  %166 = shl i32 15, %165
  %167 = xor i32 %166, -1
  %168 = and i32 %164, %167
  %169 = load i32, i32* %19, align 4
  %170 = shl i32 1, %169
  %171 = or i32 %168, %170
  %172 = call i32 @nv_wr32(%struct.nv04_clock_priv* %163, i32 5508, i32 %171)
  br label %173

173:                                              ; preds = %160, %157
  %174 = load i32, i32* %7, align 4
  %175 = icmp sge i32 %174, 64
  br i1 %175, label %176, label %204

176:                                              ; preds = %173
  store i32 14, i32* %20, align 4
  %177 = load i32, i32* %5, align 4
  switch i32 %177, label %190 [
    i32 6817028, label %178
    i32 6817024, label %181
    i32 6817056, label %184
    i32 6817032, label %187
  ]

178:                                              ; preds = %176
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 2
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %176, %178
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %20, align 4
  br label %184

184:                                              ; preds = %176, %181
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %185, 2
  store i32 %186, i32* %20, align 4
  br label %187

187:                                              ; preds = %176, %184
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 2
  store i32 %189, i32* %20, align 4
  br label %190

190:                                              ; preds = %187, %176
  %191 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %192 = call i32 @nv_rd32(%struct.nv04_clock_priv* %191, i32 49216)
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %20, align 4
  %194 = icmp ne i32 %193, 14
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %20, align 4
  %199 = shl i32 3, %198
  %200 = xor i32 %199, -1
  %201 = and i32 %197, %200
  %202 = call i32 @nv_wr32(%struct.nv04_clock_priv* %196, i32 49216, i32 %201)
  br label %203

203:                                              ; preds = %195, %190
  br label %204

204:                                              ; preds = %203, %173
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %15, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @nv_wr32(%struct.nv04_clock_priv* %209, i32 6817152, i32 %210)
  br label %212

212:                                              ; preds = %208, %204
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @nv_wr32(%struct.nv04_clock_priv* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %215, %212
  %221 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @nv_wr32(%struct.nv04_clock_priv* %221, i32 %222, i32 %223)
  %225 = load i32, i32* %19, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %229 = load i32, i32* %17, align 4
  %230 = call i32 @nv_wr32(%struct.nv04_clock_priv* %228, i32 5508, i32 %229)
  br label %231

231:                                              ; preds = %227, %220
  %232 = load i32, i32* %7, align 4
  %233 = icmp sge i32 %232, 64
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %236 = load i32, i32* %18, align 4
  %237 = call i32 @nv_wr32(%struct.nv04_clock_priv* %235, i32 49216, i32 %236)
  br label %238

238:                                              ; preds = %156, %234, %231
  ret void
}

declare dso_local %struct.TYPE_4__* @nouveau_bios(%struct.nv04_clock_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv04_clock_priv*, i32) #1

declare dso_local i32 @powerctrl_1_shift(i32, i32) #1

declare dso_local i32 @new_ramdac580(i32, i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_clock_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
