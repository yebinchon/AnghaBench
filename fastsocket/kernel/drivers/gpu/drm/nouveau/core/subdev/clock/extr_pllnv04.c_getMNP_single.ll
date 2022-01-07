; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_getMNP_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_pllnv04.c_getMNP_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_clock = type { i32 }
%struct.nvbios_pll = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_clock*, %struct.nvbios_pll*, i32, i32*, i32*, i32*)* @getMNP_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getMNP_single(%struct.nouveau_clock* %0, %struct.nvbios_pll* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_clock*, align 8
  %9 = alloca %struct.nvbios_pll*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.nouveau_clock* %0, %struct.nouveau_clock** %8, align 8
  store %struct.nvbios_pll* %1, %struct.nvbios_pll** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %35 = load %struct.nouveau_clock*, %struct.nouveau_clock** %8, align 8
  %36 = call %struct.TYPE_6__* @nouveau_bios(%struct.nouveau_clock* %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %41 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %45 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %49 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %53 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %18, align 4
  %56 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %57 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %19, align 4
  %60 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %65 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %21, align 4
  %68 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %69 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %22, align 4
  %72 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %73 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %23, align 4
  %75 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %76 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %24, align 4
  %78 = load %struct.nvbios_pll*, %struct.nvbios_pll** %9, align 8
  %79 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %25, align 4
  %81 = load i32, i32* @INT_MAX, align 4
  store i32 %81, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 23
  br i1 %83, label %90, label %84

84:                                               ; preds = %6
  %85 = load i32, i32* %14, align 4
  %86 = icmp eq i32 %85, 26
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %99

90:                                               ; preds = %87, %84, %6
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 250000
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 6, i32* %18, align 4
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i32, i32* %10, align 4
  %96 = icmp sgt i32 %95, 340000
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 2, i32* %18, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %116

99:                                               ; preds = %87
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp sgt i32 %103, 150000
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 6, i32* %18, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 200000
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 4, i32* %18, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %111, 340000
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 2, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %115

115:                                              ; preds = %114, %99
  br label %116

116:                                              ; preds = %115, %98
  %117 = load i32, i32* %24, align 4
  %118 = shl i32 1, %117
  store i32 %118, i32* %29, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %29, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %24, align 4
  %127 = mul nsw i32 %125, %126
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %128, 2
  store i32 %129, i32* %16, align 4
  br label %130

130:                                              ; preds = %124, %116
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %132, 200
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* %16, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = sdiv i32 %139, 200
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %137, %130
  %143 = load i32, i32* %23, align 4
  store i32 %143, i32* %28, align 4
  br label %144

144:                                              ; preds = %243, %142
  %145 = load i32, i32* %28, align 4
  %146 = load i32, i32* %24, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %246

148:                                              ; preds = %144
  %149 = load i32, i32* %28, align 4
  %150 = shl i32 1, %149
  store i32 %150, i32* %29, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %29, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %30, align 4
  %154 = load i32, i32* %30, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %243

158:                                              ; preds = %148
  %159 = load i32, i32* %30, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* %34, align 4
  store i32 %163, i32* %7, align 4
  br label %248

164:                                              ; preds = %158
  %165 = load i32, i32* %17, align 4
  store i32 %165, i32* %26, align 4
  br label %166

166:                                              ; preds = %239, %164
  %167 = load i32, i32* %26, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %242

170:                                              ; preds = %166
  %171 = load i32, i32* %25, align 4
  %172 = load i32, i32* %26, align 4
  %173 = sdiv i32 %171, %172
  %174 = load i32, i32* %21, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %34, align 4
  store i32 %177, i32* %7, align 4
  br label %248

178:                                              ; preds = %170
  %179 = load i32, i32* %25, align 4
  %180 = load i32, i32* %26, align 4
  %181 = sdiv i32 %179, %180
  %182 = load i32, i32* %22, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %239

185:                                              ; preds = %178
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %26, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %25, align 4
  %190 = sdiv i32 %189, 2
  %191 = add nsw i32 %188, %190
  %192 = load i32, i32* %25, align 4
  %193 = sdiv i32 %191, %192
  store i32 %193, i32* %27, align 4
  %194 = load i32, i32* %27, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %239

198:                                              ; preds = %185
  %199 = load i32, i32* %27, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp sgt i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %242

203:                                              ; preds = %198
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %25, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* %29, align 4
  %208 = sdiv i32 %207, 2
  %209 = add nsw i32 %206, %208
  %210 = load i32, i32* %29, align 4
  %211 = sdiv i32 %209, %210
  %212 = load i32, i32* %26, align 4
  %213 = sdiv i32 %212, 2
  %214 = add nsw i32 %211, %213
  %215 = load i32, i32* %26, align 4
  %216 = sdiv i32 %214, %215
  store i32 %216, i32* %31, align 4
  %217 = load i32, i32* %31, align 4
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %217, %218
  %220 = call i32 @abs(i32 %219) #3
  store i32 %220, i32* %32, align 4
  %221 = load i32, i32* %32, align 4
  %222 = load i32, i32* %33, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %203
  %225 = load i32, i32* %32, align 4
  store i32 %225, i32* %33, align 4
  %226 = load i32, i32* %31, align 4
  store i32 %226, i32* %34, align 4
  %227 = load i32, i32* %27, align 4
  %228 = load i32*, i32** %11, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %26, align 4
  %230 = load i32*, i32** %12, align 8
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %28, align 4
  %232 = load i32*, i32** %13, align 8
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* %32, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %224
  %236 = load i32, i32* %34, align 4
  store i32 %236, i32* %7, align 4
  br label %248

237:                                              ; preds = %224
  br label %238

238:                                              ; preds = %237, %203
  br label %239

239:                                              ; preds = %238, %197, %184
  %240 = load i32, i32* %26, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %26, align 4
  br label %166

242:                                              ; preds = %202, %166
  br label %243

243:                                              ; preds = %242, %157
  %244 = load i32, i32* %28, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %28, align 4
  br label %144

246:                                              ; preds = %144
  %247 = load i32, i32* %34, align 4
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %246, %235, %176, %162
  %249 = load i32, i32* %7, align 4
  ret i32 %249
}

declare dso_local %struct.TYPE_6__* @nouveau_bios(%struct.nouveau_clock*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
