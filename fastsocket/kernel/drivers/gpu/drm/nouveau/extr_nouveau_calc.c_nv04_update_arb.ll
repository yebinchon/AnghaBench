; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_calc.c_nv04_update_arb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_calc.c_nv04_update_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv_fifo_info = type { i32, i32 }
%struct.nv_sim_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PLL_MEMORY = common dso_local global i32 0, align 4
@PLL_CORE = common dso_local global i32 0, align 4
@NV04_PFB_CFG1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@NV_PEXTDEV_BOOT_0 = common dso_local global i32 0, align 4
@NV_04 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32*, i32*)* @nv04_update_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_update_arb(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nouveau_device*, align 8
  %13 = alloca %struct.nv_fifo_info, align 4
  %14 = alloca %struct.nv_sim_state, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %11, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %21)
  store %struct.nouveau_device* %22, %struct.nouveau_device** %12, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %24 = load i32, i32* @PLL_MEMORY, align 4
  %25 = call i32 @nouveau_hw_get_clock(%struct.drm_device* %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = load i32, i32* @PLL_CORE, align 4
  %28 = call i32 @nouveau_hw_get_clock(%struct.drm_device* %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %30 = load i32, i32* @NV04_PFB_CFG1, align 4
  %31 = call i32 @nv_rd32(%struct.nouveau_device* %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %41 = call i32 @nv_two_heads(%struct.drm_device* %40)
  %42 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 416
  br i1 %47, label %54, label %48

48:                                               ; preds = %5
  %49 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 496
  br i1 %53, label %54, label %64

54:                                               ; preds = %48, %5
  %55 = call i32 @pci_get_bus_and_slot(i32 0, i32 1)
  %56 = call i32 @pci_read_config_dword(i32 %55, i32 124, i32* %18)
  %57 = load i32, i32* %18, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 1
  %60 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 4
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 5
  store i32 64, i32* %61, align 4
  %62 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 6
  store i32 3, i32* %62, align 4
  %63 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 7
  store i32 10, i32* %63, align 4
  br label %89

64:                                               ; preds = %48
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %66 = load i32, i32* @NV04_PFB_CFG0, align 4
  %67 = call i32 @nv_rd32(%struct.nouveau_device* %65, i32 %66)
  %68 = and i32 %67, 1
  %69 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %71 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %72 = call i32 @nv_rd32(%struct.nouveau_device* %70, i32 %71)
  %73 = and i32 %72, 16
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 128, i32 64
  %77 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %17, align 4
  %79 = and i32 %78, 15
  %80 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 6
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %17, align 4
  %82 = ashr i32 %81, 4
  %83 = and i32 %82, 15
  %84 = load i32, i32* %17, align 4
  %85 = ashr i32 %84, 31
  %86 = and i32 %85, 1
  %87 = add nsw i32 %83, %86
  %88 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 7
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %64, %54
  %90 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %91 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_2__* @nv_device(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NV_04, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = call i32 @nv04_calc_arb(%struct.nv_fifo_info* %13, %struct.nv_sim_state* %14)
  br label %102

100:                                              ; preds = %89
  %101 = call i32 @nv10_calc_arb(%struct.nv_fifo_info* %13, %struct.nv_sim_state* %14)
  br label %102

102:                                              ; preds = %100, %98
  %103 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %13, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 4
  %106 = call i32 @ilog2(i32 %105)
  %107 = load i32*, i32** %9, align 8
  store i32 %106, i32* %107, align 4
  %108 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %13, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 3
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local i32 @nouveau_hw_get_clock(%struct.drm_device*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_get_bus_and_slot(i32, i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(i32) #1

declare dso_local i32 @nv04_calc_arb(%struct.nv_fifo_info*, %struct.nv_sim_state*) #1

declare dso_local i32 @nv10_calc_arb(%struct.nv_fifo_info*, %struct.nv_sim_state*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
