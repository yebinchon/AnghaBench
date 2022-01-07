; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_double_lowregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_double_lowregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_clock_priv = type { i32 }
%struct.nouveau_pll_vals = type { i32, i32, i32, i64, i64 }
%struct.nvbios_pll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*)* @setPLL_double_lowregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPLL_double_lowregs(%struct.nv04_clock_priv* %0, i32 %1, %struct.nouveau_pll_vals* %2) #0 {
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
  %16 = alloca %struct.nvbios_pll, align 4
  %17 = alloca i32, align 4
  store %struct.nv04_clock_priv* %0, %struct.nv04_clock_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_pll_vals* %2, %struct.nouveau_pll_vals** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 16416
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @nv_rd32(%struct.nv04_clock_priv* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %27 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 16
  %30 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %31 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -7798785, i32 -458753
  %39 = and i32 %34, %38
  %40 = or i32 %39, -1073741824
  %41 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %42 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 16
  %45 = or i32 %40, %44
  store i32 %45, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -49153, i32* %13, align 4
  %46 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %47 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %3
  %51 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %52 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br label %58

58:                                               ; preds = %50, %3
  %59 = phi i1 [ true, %3 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @nv_rd32(%struct.nv04_clock_priv* %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, -1073283072
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %202

72:                                               ; preds = %66, %58
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 16384
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 -820, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 16472
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -201326593, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %85 = call i32 @nouveau_bios(%struct.nv04_clock_priv* %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @nvbios_pll_parse(i32 %85, i32 %86, %struct.nvbios_pll* %16)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %202

90:                                               ; preds = %83
  %91 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %92 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %16, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %16, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %16, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %101, %90
  %105 = load i32, i32* %17, align 4
  %106 = shl i32 %105, 20
  %107 = or i32 268435456, %106
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  %110 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %111 = call i32 @nv_rd32(%struct.nv04_clock_priv* %110, i32 17920)
  store i32 %111, i32* %12, align 4
  %112 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, -2147483648
  %115 = call i32 @nv_wr32(%struct.nv04_clock_priv* %112, i32 17920, i32 %114)
  br label %116

116:                                              ; preds = %104, %80
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 4096, i32 256
  %124 = load i32, i32* %11, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %119, %116
  %127 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, 268435456
  %131 = call i32 @nv_wr32(%struct.nv04_clock_priv* %127, i32 %128, i32 %130)
  %132 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, -1073741825
  %136 = call i32 @nv_wr32(%struct.nv04_clock_priv* %132, i32 %133, i32 %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %126
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, 8388608
  store i32 %141, i32* %11, align 4
  %142 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 1073741823
  %145 = call i32 @nv_wr32(%struct.nv04_clock_priv* %142, i32 16416, i32 %144)
  %146 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = and i32 %147, 1073741823
  %149 = call i32 @nv_wr32(%struct.nv04_clock_priv* %146, i32 16440, i32 %148)
  br label %150

150:                                              ; preds = %139, %126
  %151 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %152 = call i32 @nv_rd32(%struct.nv04_clock_priv* %151, i32 49216)
  store i32 %152, i32* %14, align 4
  %153 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %154, %155
  %157 = call i32 @nv_wr32(%struct.nv04_clock_priv* %153, i32 49216, i32 %156)
  %158 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @nv_wr32(%struct.nv04_clock_priv* %158, i32 %159, i32 %160)
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, 16420
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @nv_wr32(%struct.nv04_clock_priv* %165, i32 16444, i32 %166)
  br label %168

168:                                              ; preds = %164, %150
  %169 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @nv_wr32(%struct.nv04_clock_priv* %169, i32 %170, i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %168
  %176 = load i32, i32* %11, align 4
  %177 = and i32 %176, -8388609
  store i32 %177, i32* %11, align 4
  %178 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %179 = load i32, i32* %11, align 4
  %180 = call i32 @nv_wr32(%struct.nv04_clock_priv* %178, i32 16416, i32 %179)
  %181 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @nv_wr32(%struct.nv04_clock_priv* %181, i32 16440, i32 %182)
  %184 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @nv_wr32(%struct.nv04_clock_priv* %184, i32 17920, i32 %185)
  br label %187

187:                                              ; preds = %175, %168
  %188 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @nv_wr32(%struct.nv04_clock_priv* %188, i32 49216, i32 %189)
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %187
  %194 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %195, -268435457
  %197 = call i32 @nv_wr32(%struct.nv04_clock_priv* %194, i32 16416, i32 %196)
  %198 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %199 = load i32, i32* %11, align 4
  %200 = and i32 %199, -268435457
  %201 = call i32 @nv_wr32(%struct.nv04_clock_priv* %198, i32 16440, i32 %200)
  br label %202

202:                                              ; preds = %71, %89, %193, %187
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nv04_clock_priv*, i32) #1

declare dso_local i64 @nvbios_pll_parse(i32, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nouveau_bios(%struct.nv04_clock_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nv04_clock_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
