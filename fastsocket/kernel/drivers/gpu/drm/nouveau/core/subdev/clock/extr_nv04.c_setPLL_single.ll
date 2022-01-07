; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/clock/extr_nv04.c_setPLL_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv04_clock_priv = type { i32 }
%struct.nouveau_pll_vals = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv04_clock_priv*, i32, %struct.nouveau_pll_vals*)* @setPLL_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPLL_single(%struct.nv04_clock_priv* %0, i32 %1, %struct.nouveau_pll_vals* %2) #0 {
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
  store %struct.nv04_clock_priv* %0, %struct.nv04_clock_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nouveau_pll_vals* %2, %struct.nouveau_pll_vals** %6, align 8
  %14 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %15 = call %struct.TYPE_4__* @nouveau_bios(%struct.nv04_clock_priv* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @nv_rd32(%struct.nv04_clock_priv* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, -524288
  %29 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %30 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %28, %32
  %34 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %35 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @powerctrl_1_shift(i32 %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %124

45:                                               ; preds = %3
  %46 = load i32, i32* %13, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %50 = call i32 @nv_rd32(%struct.nv04_clock_priv* %49, i32 5508)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = shl i32 15, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = load i32, i32* %13, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = call i32 @nv_wr32(%struct.nv04_clock_priv* %51, i32 5508, i32 %59)
  br label %61

61:                                               ; preds = %48, %45
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  %65 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %66 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sdiv i32 %70, %71
  %73 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %74 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %77 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  %80 = icmp slt i32 %72, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %69
  %82 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %85 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, 65535
  %90 = or i32 %87, %89
  %91 = call i32 @nv_wr32(%struct.nv04_clock_priv* %82, i32 %83, i32 %90)
  br label %102

92:                                               ; preds = %69, %64, %61
  %93 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, -65536
  %97 = load %struct.nouveau_pll_vals*, %struct.nouveau_pll_vals** %6, align 8
  %98 = getelementptr inbounds %struct.nouveau_pll_vals, %struct.nouveau_pll_vals* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %96, %99
  %101 = call i32 @nv_wr32(%struct.nv04_clock_priv* %93, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %92, %81
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %103, 23
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 17
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @msleep(i32 64)
  br label %110

110:                                              ; preds = %108, %105, %102
  %111 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @nv_rd32(%struct.nv04_clock_priv* %111, i32 %112)
  %114 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @nv_wr32(%struct.nv04_clock_priv* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load %struct.nv04_clock_priv*, %struct.nv04_clock_priv** %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @nv_wr32(%struct.nv04_clock_priv* %121, i32 5508, i32 %122)
  br label %124

124:                                              ; preds = %44, %120, %110
  ret void
}

declare dso_local %struct.TYPE_4__* @nouveau_bios(%struct.nv04_clock_priv*) #1

declare dso_local i32 @nv_rd32(%struct.nv04_clock_priv*, i32) #1

declare dso_local i32 @powerctrl_1_shift(i32, i32) #1

declare dso_local i32 @nv_wr32(%struct.nv04_clock_priv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
