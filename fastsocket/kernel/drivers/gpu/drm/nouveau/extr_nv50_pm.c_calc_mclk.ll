; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_calc_mclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_pm.c_calc_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_pm_level = type { i32 }
%struct.nv50_pm_state = type { i32, i32, %struct.hwsq_ucode }
%struct.hwsq_ucode = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_mem_exec_func = type { %struct.nv50_pm_state*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_device* }
%struct.nvbios_pll = type { i32 }
%struct.TYPE_2__ = type { i32 }

@mclk_timing_set = common dso_local global i32 0, align 4
@mclk_clock_set = common dso_local global i32 0, align 4
@mclk_mrs = common dso_local global i32 0, align 4
@mclk_mrg = common dso_local global i32 0, align 4
@mclk_wait = common dso_local global i32 0, align 4
@mclk_refresh_self = common dso_local global i32 0, align 4
@mclk_refresh_auto = common dso_local global i32 0, align 4
@mclk_refresh = common dso_local global i32 0, align 4
@mclk_precharge = common dso_local global i32 0, align 4
@clk_src_href = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nouveau_pm_level*, %struct.nv50_pm_state*)* @calc_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_mclk(%struct.drm_device* %0, %struct.nouveau_pm_level* %1, %struct.nv50_pm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nouveau_pm_level*, align 8
  %7 = alloca %struct.nv50_pm_state*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca %struct.nouveau_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_mem_exec_func, align 8
  %12 = alloca %struct.hwsq_ucode*, align 8
  %13 = alloca %struct.nvbios_pll, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nouveau_pm_level* %1, %struct.nouveau_pm_level** %6, align 8
  store %struct.nv50_pm_state* %2, %struct.nv50_pm_state** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %18)
  store %struct.nouveau_drm* %19, %struct.nouveau_drm** %8, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %20)
  store %struct.nouveau_device* %21, %struct.nouveau_device** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 0
  %23 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  store %struct.nv50_pm_state* %23, %struct.nv50_pm_state** %22, align 8
  %24 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 1
  %25 = load i32, i32* @mclk_timing_set, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 2
  %27 = load i32, i32* @mclk_clock_set, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 3
  %29 = load i32, i32* @mclk_mrs, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 4
  %31 = load i32, i32* @mclk_mrg, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 5
  %33 = load i32, i32* @mclk_wait, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 6
  %35 = load i32, i32* @mclk_refresh_self, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 7
  %37 = load i32, i32* @mclk_refresh_auto, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 8
  %39 = load i32, i32* @mclk_refresh, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 9
  %41 = load i32, i32* @mclk_precharge, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.nouveau_mem_exec_func, %struct.nouveau_mem_exec_func* %11, i32 0, i32 10
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %43, %struct.drm_device** %42, align 8
  %44 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %45 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %44, i32 0, i32 2
  store %struct.hwsq_ucode* %45, %struct.hwsq_ucode** %12, align 8
  %46 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  %47 = call i32 @nv_rd32(%struct.nouveau_device* %46, i32 16392)
  %48 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %49 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %51 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 2113994239
  store i32 %53, i32* %51, align 4
  %54 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %6, align 8
  %55 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = load i32, i32* @clk_src_href, align 4
  %59 = call i32 @read_clk(%struct.drm_device* %57, i32 %58)
  %60 = call i64 @clk_same(i32 %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %13, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 19
  %66 = or i32 512, %65
  %67 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %68 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %106

71:                                               ; preds = %3
  %72 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %73 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %6, align 8
  %74 = getelementptr inbounds %struct.nouveau_pm_level, %struct.nouveau_pm_level* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @calc_pll(%struct.drm_device* %72, i32 16392, %struct.nvbios_pll* %13, i32 %75, i32* %14, i32* %15, i32* %16)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %158

82:                                               ; preds = %71
  %83 = load i32, i32* %16, align 4
  %84 = shl i32 %83, 22
  %85 = or i32 -2147483648, %84
  %86 = load i32, i32* %16, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  %89 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %90 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %13, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 19
  %96 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %97 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %14, align 4
  %101 = shl i32 %100, 8
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.nv50_pm_state*, %struct.nv50_pm_state** %7, align 8
  %105 = getelementptr inbounds %struct.nv50_pm_state, %struct.nv50_pm_state* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %82, %62
  %107 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %108 = call i32 @hwsq_init(%struct.hwsq_ucode* %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @hwsq_op5f(%struct.hwsq_ucode* %112, i32 %113, i32 0)
  %115 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @hwsq_op5f(%struct.hwsq_ucode* %115, i32 %116, i32 1)
  br label %118

118:                                              ; preds = %111, %106
  %119 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %120 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.TYPE_2__* @nv_device(i32 %121)
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %124, 146
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %128 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %127, i32 6361600, i32 13056)
  br label %129

129:                                              ; preds = %126, %118
  %130 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %131 = call i32 @hwsq_setf(%struct.hwsq_ucode* %130, i32 16, i32 0)
  %132 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %133 = call i32 @hwsq_op5f(%struct.hwsq_ucode* %132, i32 0, i32 1)
  %134 = load %struct.nouveau_pm_level*, %struct.nouveau_pm_level** %6, align 8
  %135 = call i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func* %11, %struct.nouveau_pm_level* %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %4, align 4
  br label %158

140:                                              ; preds = %129
  %141 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %142 = call i32 @hwsq_setf(%struct.hwsq_ucode* %141, i32 16, i32 1)
  %143 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %144 = call i32 @hwsq_op5f(%struct.hwsq_ucode* %143, i32 0, i32 0)
  %145 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %146 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_2__* @nv_device(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sge i32 %150, 146
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %154 = call i32 @hwsq_wr32(%struct.hwsq_ucode* %153, i32 6361600, i32 13104)
  br label %155

155:                                              ; preds = %152, %140
  %156 = load %struct.hwsq_ucode*, %struct.hwsq_ucode** %12, align 8
  %157 = call i32 @hwsq_fini(%struct.hwsq_ucode* %156)
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %138, %79
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i64 @clk_same(i32, i32) #1

declare dso_local i32 @read_clk(%struct.drm_device*, i32) #1

declare dso_local i32 @calc_pll(%struct.drm_device*, i32, %struct.nvbios_pll*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hwsq_init(%struct.hwsq_ucode*) #1

declare dso_local i32 @hwsq_op5f(%struct.hwsq_ucode*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @hwsq_wr32(%struct.hwsq_ucode*, i32, i32) #1

declare dso_local i32 @hwsq_setf(%struct.hwsq_ucode*, i32, i32) #1

declare dso_local i32 @nouveau_mem_exec(%struct.nouveau_mem_exec_func*, %struct.nouveau_pm_level*) #1

declare dso_local i32 @hwsq_fini(%struct.hwsq_ucode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
