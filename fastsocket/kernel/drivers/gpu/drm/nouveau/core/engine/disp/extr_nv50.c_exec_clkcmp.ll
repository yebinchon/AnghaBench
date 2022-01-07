; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_clkcmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/disp/extr_nv50.c_exec_clkcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dcb_output = type { i64, i32 }
%struct.nouveau_bios = type { i32 }
%struct.nvbios_outp = type { i32 }
%struct.nvbios_ocfg = type { i32* }
%struct.nvbios_init = type { i32, i32, i32, %struct.dcb_output*, %struct.nouveau_bios*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*)* @exec_clkcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_clkcmp(%struct.nv50_disp_priv* %0, i32 %1, i32 %2, i32 %3, %struct.dcb_output* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_disp_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcb_output*, align 8
  %12 = alloca %struct.nouveau_bios*, align 8
  %13 = alloca %struct.nvbios_outp, align 4
  %14 = alloca %struct.nvbios_ocfg, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.nvbios_init, align 8
  store %struct.nv50_disp_priv* %0, %struct.nv50_disp_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dcb_output* %4, %struct.dcb_output** %11, align 8
  %24 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %25 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv* %24)
  store %struct.nouveau_bios* %25, %struct.nouveau_bios** %12, align 8
  store i32 0, i32* %19, align 4
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %26

26:                                               ; preds = %43, %5
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %22, align 4
  %34 = icmp slt i32 %33, 3
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i1 [ false, %26 ], [ %34, %32 ]
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %39 = load i32, i32* %22, align 4
  %40 = mul nsw i32 %39, 8
  %41 = add nsw i32 6359896, %40
  %42 = call i32 @nv_rd32(%struct.nv50_disp_priv* %38, i32 %41)
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %22, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %22, align 4
  br label %26

46:                                               ; preds = %35
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %119, label %52

52:                                               ; preds = %46
  %53 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %54 = call %struct.TYPE_4__* @nv_device(%struct.nv50_disp_priv* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 144
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %60 = call %struct.TYPE_4__* @nv_device(%struct.nv50_disp_priv* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 146
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %66 = call %struct.TYPE_4__* @nv_device(%struct.nv50_disp_priv* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 160
  br i1 %69, label %70, label %94

70:                                               ; preds = %64, %58, %52
  store i32 0, i32* %22, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %22, align 4
  %79 = icmp slt i32 %78, 2
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi i1 [ false, %71 ], [ %79, %77 ]
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %84 = load i32, i32* %22, align 4
  %85 = mul nsw i32 %84, 8
  %86 = add nsw i32 6359920, %85
  %87 = call i32 @nv_rd32(%struct.nv50_disp_priv* %83, i32 %86)
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %22, align 4
  br label %71

91:                                               ; preds = %80
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %22, align 4
  br label %118

94:                                               ; preds = %64
  store i32 0, i32* %22, align 4
  br label %95

95:                                               ; preds = %112, %94
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %8, align 4
  %98 = shl i32 1, %97
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %22, align 4
  %103 = icmp slt i32 %102, 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi i1 [ false, %95 ], [ %103, %101 ]
  br i1 %105, label %106, label %115

106:                                              ; preds = %104
  %107 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %108 = load i32, i32* %22, align 4
  %109 = mul nsw i32 %108, 8
  %110 = add nsw i32 6358932, %109
  %111 = call i32 @nv_rd32(%struct.nv50_disp_priv* %107, i32 %110)
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %22, align 4
  br label %95

115:                                              ; preds = %104
  %116 = load i32, i32* %22, align 4
  %117 = add nsw i32 %116, 4
  store i32 %117, i32* %22, align 4
  br label %118

118:                                              ; preds = %115, %91
  br label %119

119:                                              ; preds = %118, %46
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %8, align 4
  %122 = shl i32 1, %121
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %149, label %125

125:                                              ; preds = %119
  store i32 0, i32* %22, align 4
  br label %126

126:                                              ; preds = %143, %125
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %8, align 4
  %129 = shl i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %22, align 4
  %134 = icmp slt i32 %133, 3
  br label %135

135:                                              ; preds = %132, %126
  %136 = phi i1 [ false, %126 ], [ %134, %132 ]
  br i1 %136, label %137, label %146

137:                                              ; preds = %135
  %138 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %139 = load i32, i32* %22, align 4
  %140 = mul nsw i32 %139, 8
  %141 = add nsw i32 6359936, %140
  %142 = call i32 @nv_rd32(%struct.nv50_disp_priv* %138, i32 %141)
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %22, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %22, align 4
  br label %126

146:                                              ; preds = %135
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 8
  store i32 %148, i32* %22, align 4
  br label %149

149:                                              ; preds = %146, %119
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %8, align 4
  %152 = shl i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %21, align 4
  store i32 %156, i32* %6, align 4
  br label %246

157:                                              ; preds = %149
  %158 = load i32, i32* %22, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %22, align 4
  %160 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %19, align 4
  %164 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  %165 = call i32 @exec_lookup(%struct.nv50_disp_priv* %160, i32 %161, i32 %162, i32 %163, %struct.dcb_output* %164, i32* %15, i32* %16, i32* %17, i32* %18, %struct.nvbios_outp* %13)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %157
  %169 = load i32, i32* %21, align 4
  store i32 %169, i32* %6, align 4
  br label %246

170:                                              ; preds = %157
  %171 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  %172 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %170
  %176 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  %177 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %199 [
    i32 128, label %179
    i32 129, label %189
    i32 130, label %194
    i32 131, label %198
  ]

179:                                              ; preds = %175
  %180 = load i32, i32* %19, align 4
  %181 = and i32 %180, 3840
  %182 = ashr i32 %181, 8
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp sge i32 %183, 165000
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* %21, align 4
  %187 = or i32 %186, 256
  store i32 %187, i32* %21, align 4
  br label %188

188:                                              ; preds = %185, %179
  br label %200

189:                                              ; preds = %175
  %190 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %191 = getelementptr inbounds %struct.nv50_disp_priv, %struct.nv50_disp_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %21, align 4
  br label %200

194:                                              ; preds = %175
  %195 = load i32, i32* %19, align 4
  %196 = and i32 %195, 3840
  %197 = ashr i32 %196, 8
  store i32 %197, i32* %21, align 4
  br label %200

198:                                              ; preds = %175
  br label %199

199:                                              ; preds = %175, %198
  store i32 255, i32* %21, align 4
  br label %200

200:                                              ; preds = %199, %194, %189, %188
  br label %207

201:                                              ; preds = %170
  %202 = load i32, i32* %19, align 4
  %203 = and i32 %202, 3840
  %204 = ashr i32 %203, 8
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sdiv i32 %205, 2
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %201, %200
  %208 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %21, align 4
  %211 = call i32 @nvbios_ocfg_match(%struct.nouveau_bios* %208, i32 %209, i32 %210, i32* %15, i32* %16, i32* %17, i32* %18, %struct.nvbios_ocfg* %14)
  store i32 %211, i32* %20, align 4
  %212 = load i32, i32* %20, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %244

214:                                              ; preds = %207
  %215 = load i32, i32* %9, align 4
  %216 = icmp slt i32 %215, 255
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  %219 = getelementptr inbounds %struct.nvbios_ocfg, %struct.nvbios_ocfg* %14, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @nvbios_oclk_match(%struct.nouveau_bios* %218, i32 %224, i32 %225)
  store i32 %226, i32* %20, align 4
  %227 = load i32, i32* %20, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %217
  %230 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %231 = load i32, i32* %20, align 4
  store i32 %231, i32* %230, align 8
  %232 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 1
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %232, align 4
  %234 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 2
  store i32 1, i32* %234, align 8
  %235 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 3
  %236 = load %struct.dcb_output*, %struct.dcb_output** %11, align 8
  store %struct.dcb_output* %236, %struct.dcb_output** %235, align 8
  %237 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 4
  %238 = load %struct.nouveau_bios*, %struct.nouveau_bios** %12, align 8
  store %struct.nouveau_bios* %238, %struct.nouveau_bios** %237, align 8
  %239 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 5
  %240 = load %struct.nv50_disp_priv*, %struct.nv50_disp_priv** %7, align 8
  %241 = call i32 @nv_subdev(%struct.nv50_disp_priv* %240)
  store i32 %241, i32* %239, align 8
  %242 = call i32 @nvbios_exec(%struct.nvbios_init* %23)
  br label %243

243:                                              ; preds = %229, %217
  br label %244

244:                                              ; preds = %243, %214, %207
  %245 = load i32, i32* %21, align 4
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %244, %168, %155
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv50_disp_priv*, i32) #1

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nv50_disp_priv*) #1

declare dso_local i32 @exec_lookup(%struct.nv50_disp_priv*, i32, i32, i32, %struct.dcb_output*, i32*, i32*, i32*, i32*, %struct.nvbios_outp*) #1

declare dso_local i32 @nvbios_ocfg_match(%struct.nouveau_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_ocfg*) #1

declare dso_local i32 @nvbios_oclk_match(%struct.nouveau_bios*, i32, i32) #1

declare dso_local i32 @nv_subdev(%struct.nv50_disp_priv*) #1

declare dso_local i32 @nvbios_exec(%struct.nvbios_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
