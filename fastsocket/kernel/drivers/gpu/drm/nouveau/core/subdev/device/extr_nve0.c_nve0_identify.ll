; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nve0.c_nve0_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nve0.c_nve0_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i32, i8*, i32** }

@.str = private unnamed_addr constant [6 x i8] c"GK104\00", align 1
@nouveau_bios_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VBIOS = common dso_local global i64 0, align 8
@nve0_gpio_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_GPIO = common dso_local global i64 0, align 8
@nvd0_i2c_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_I2C = common dso_local global i64 0, align 8
@nvc0_clock_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_CLOCK = common dso_local global i64 0, align 8
@nvd0_therm_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_THERM = common dso_local global i64 0, align 8
@nv50_mxm_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_MXM = common dso_local global i64 0, align 8
@nv50_devinit_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_DEVINIT = common dso_local global i64 0, align 8
@nvc0_mc_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_MC = common dso_local global i64 0, align 8
@nvc0_bus_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_BUS = common dso_local global i64 0, align 8
@nv04_timer_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_TIMER = common dso_local global i64 0, align 8
@nvc0_fb_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_FB = common dso_local global i64 0, align 8
@nvc0_ltcg_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_LTCG = common dso_local global i64 0, align 8
@nve0_ibus_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_IBUS = common dso_local global i64 0, align 8
@nv50_instmem_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_INSTMEM = common dso_local global i64 0, align 8
@nvc0_vmmgr_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VM = common dso_local global i64 0, align 8
@nvc0_bar_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_BAR = common dso_local global i64 0, align 8
@nvd0_dmaeng_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@nve0_fifo_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_FIFO = common dso_local global i64 0, align 8
@nvc0_software_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@nve0_graph_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@nve0_disp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DISP = common dso_local global i64 0, align 8
@nve0_copy0_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_COPY0 = common dso_local global i64 0, align 8
@nve0_copy1_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_COPY1 = common dso_local global i64 0, align 8
@nve0_bsp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_BSP = common dso_local global i64 0, align 8
@nve0_vp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_VP = common dso_local global i64 0, align 8
@nvc0_ppp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_PPP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"GK107\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"GK106\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unknown Kepler chipset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nve0_identify(%struct.nouveau_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_device* %0, %struct.nouveau_device** %3, align 8
  %4 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %406 [
    i32 228, label %7
    i32 231, label %140
    i32 230, label %273
  ]

7:                                                ; preds = %1
  %8 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %11 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %10, i32 0, i32 2
  %12 = load i32**, i32*** %11, align 8
  %13 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  store i32* @nouveau_bios_oclass, i32** %14, align 8
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %15, i32 0, i32 2
  %17 = load i32**, i32*** %16, align 8
  %18 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  store i32* @nve0_gpio_oclass, i32** %19, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* @nvd0_i2c_oclass, i32** %24, align 8
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  store i32* @nvc0_clock_oclass, i32** %29, align 8
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @NVDEV_SUBDEV_THERM, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* @nvd0_therm_oclass, i32** %34, align 8
  %35 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @NVDEV_SUBDEV_MXM, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* @nv50_mxm_oclass, i32** %39, align 8
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %41 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* @nv50_devinit_oclass, i32** %44, align 8
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* @nvc0_mc_oclass, i32** %49, align 8
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %51 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* @nvc0_bus_oclass, i32** %54, align 8
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  store i32* @nv04_timer_oclass, i32** %59, align 8
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  store i32* @nvc0_fb_oclass, i32** %64, align 8
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @NVDEV_SUBDEV_LTCG, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* @nvc0_ltcg_oclass, i32** %69, align 8
  %70 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @NVDEV_SUBDEV_IBUS, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* @nve0_ibus_oclass, i32** %74, align 8
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* @nv50_instmem_oclass, i32** %79, align 8
  %80 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %81 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* @nvc0_vmmgr_oclass, i32** %84, align 8
  %85 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %86 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* @NVDEV_SUBDEV_BAR, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  store i32* @nvc0_bar_oclass, i32** %89, align 8
  %90 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %91 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %90, i32 0, i32 2
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  store i32* @nvd0_dmaeng_oclass, i32** %94, align 8
  %95 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %96 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  store i32* @nve0_fifo_oclass, i32** %99, align 8
  %100 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %101 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %100, i32 0, i32 2
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  store i32* @nvc0_software_oclass, i32** %104, align 8
  %105 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %106 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %105, i32 0, i32 2
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  store i32* @nve0_graph_oclass, i32** %109, align 8
  %110 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %111 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  store i32* @nve0_disp_oclass, i32** %114, align 8
  %115 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %116 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %115, i32 0, i32 2
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* @NVDEV_ENGINE_COPY0, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  store i32* @nve0_copy0_oclass, i32** %119, align 8
  %120 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %121 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %120, i32 0, i32 2
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* @NVDEV_ENGINE_COPY1, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  store i32* @nve0_copy1_oclass, i32** %124, align 8
  %125 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %126 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %125, i32 0, i32 2
  %127 = load i32**, i32*** %126, align 8
  %128 = load i64, i64* @NVDEV_ENGINE_BSP, align 8
  %129 = getelementptr inbounds i32*, i32** %127, i64 %128
  store i32* @nve0_bsp_oclass, i32** %129, align 8
  %130 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %131 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %130, i32 0, i32 2
  %132 = load i32**, i32*** %131, align 8
  %133 = load i64, i64* @NVDEV_ENGINE_VP, align 8
  %134 = getelementptr inbounds i32*, i32** %132, i64 %133
  store i32* @nve0_vp_oclass, i32** %134, align 8
  %135 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %136 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %135, i32 0, i32 2
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* @NVDEV_ENGINE_PPP, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  store i32* @nvc0_ppp_oclass, i32** %139, align 8
  br label %411

140:                                              ; preds = %1
  %141 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %142 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %141, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %142, align 8
  %143 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %144 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %143, i32 0, i32 2
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  store i32* @nouveau_bios_oclass, i32** %147, align 8
  %148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %149 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %148, i32 0, i32 2
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* @nve0_gpio_oclass, i32** %152, align 8
  %153 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %154 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* @nvd0_i2c_oclass, i32** %157, align 8
  %158 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %159 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* @nvc0_clock_oclass, i32** %162, align 8
  %163 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %164 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %163, i32 0, i32 2
  %165 = load i32**, i32*** %164, align 8
  %166 = load i64, i64* @NVDEV_SUBDEV_THERM, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  store i32* @nvd0_therm_oclass, i32** %167, align 8
  %168 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %169 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %168, i32 0, i32 2
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* @NVDEV_SUBDEV_MXM, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  store i32* @nv50_mxm_oclass, i32** %172, align 8
  %173 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %174 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %173, i32 0, i32 2
  %175 = load i32**, i32*** %174, align 8
  %176 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %177 = getelementptr inbounds i32*, i32** %175, i64 %176
  store i32* @nv50_devinit_oclass, i32** %177, align 8
  %178 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %179 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %178, i32 0, i32 2
  %180 = load i32**, i32*** %179, align 8
  %181 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %182 = getelementptr inbounds i32*, i32** %180, i64 %181
  store i32* @nvc0_mc_oclass, i32** %182, align 8
  %183 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %184 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %183, i32 0, i32 2
  %185 = load i32**, i32*** %184, align 8
  %186 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  store i32* @nvc0_bus_oclass, i32** %187, align 8
  %188 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %189 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %188, i32 0, i32 2
  %190 = load i32**, i32*** %189, align 8
  %191 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  store i32* @nv04_timer_oclass, i32** %192, align 8
  %193 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %194 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %193, i32 0, i32 2
  %195 = load i32**, i32*** %194, align 8
  %196 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %197 = getelementptr inbounds i32*, i32** %195, i64 %196
  store i32* @nvc0_fb_oclass, i32** %197, align 8
  %198 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %199 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %198, i32 0, i32 2
  %200 = load i32**, i32*** %199, align 8
  %201 = load i64, i64* @NVDEV_SUBDEV_LTCG, align 8
  %202 = getelementptr inbounds i32*, i32** %200, i64 %201
  store i32* @nvc0_ltcg_oclass, i32** %202, align 8
  %203 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %204 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %203, i32 0, i32 2
  %205 = load i32**, i32*** %204, align 8
  %206 = load i64, i64* @NVDEV_SUBDEV_IBUS, align 8
  %207 = getelementptr inbounds i32*, i32** %205, i64 %206
  store i32* @nve0_ibus_oclass, i32** %207, align 8
  %208 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %209 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %208, i32 0, i32 2
  %210 = load i32**, i32*** %209, align 8
  %211 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %212 = getelementptr inbounds i32*, i32** %210, i64 %211
  store i32* @nv50_instmem_oclass, i32** %212, align 8
  %213 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %214 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %217 = getelementptr inbounds i32*, i32** %215, i64 %216
  store i32* @nvc0_vmmgr_oclass, i32** %217, align 8
  %218 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %219 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %218, i32 0, i32 2
  %220 = load i32**, i32*** %219, align 8
  %221 = load i64, i64* @NVDEV_SUBDEV_BAR, align 8
  %222 = getelementptr inbounds i32*, i32** %220, i64 %221
  store i32* @nvc0_bar_oclass, i32** %222, align 8
  %223 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %224 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %223, i32 0, i32 2
  %225 = load i32**, i32*** %224, align 8
  %226 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %227 = getelementptr inbounds i32*, i32** %225, i64 %226
  store i32* @nvd0_dmaeng_oclass, i32** %227, align 8
  %228 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %229 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %228, i32 0, i32 2
  %230 = load i32**, i32*** %229, align 8
  %231 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %232 = getelementptr inbounds i32*, i32** %230, i64 %231
  store i32* @nve0_fifo_oclass, i32** %232, align 8
  %233 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %234 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %233, i32 0, i32 2
  %235 = load i32**, i32*** %234, align 8
  %236 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %237 = getelementptr inbounds i32*, i32** %235, i64 %236
  store i32* @nvc0_software_oclass, i32** %237, align 8
  %238 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %239 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %238, i32 0, i32 2
  %240 = load i32**, i32*** %239, align 8
  %241 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %242 = getelementptr inbounds i32*, i32** %240, i64 %241
  store i32* @nve0_graph_oclass, i32** %242, align 8
  %243 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %244 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %243, i32 0, i32 2
  %245 = load i32**, i32*** %244, align 8
  %246 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %247 = getelementptr inbounds i32*, i32** %245, i64 %246
  store i32* @nve0_disp_oclass, i32** %247, align 8
  %248 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %249 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %248, i32 0, i32 2
  %250 = load i32**, i32*** %249, align 8
  %251 = load i64, i64* @NVDEV_ENGINE_COPY0, align 8
  %252 = getelementptr inbounds i32*, i32** %250, i64 %251
  store i32* @nve0_copy0_oclass, i32** %252, align 8
  %253 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %254 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %253, i32 0, i32 2
  %255 = load i32**, i32*** %254, align 8
  %256 = load i64, i64* @NVDEV_ENGINE_COPY1, align 8
  %257 = getelementptr inbounds i32*, i32** %255, i64 %256
  store i32* @nve0_copy1_oclass, i32** %257, align 8
  %258 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %259 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %258, i32 0, i32 2
  %260 = load i32**, i32*** %259, align 8
  %261 = load i64, i64* @NVDEV_ENGINE_BSP, align 8
  %262 = getelementptr inbounds i32*, i32** %260, i64 %261
  store i32* @nve0_bsp_oclass, i32** %262, align 8
  %263 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %264 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %263, i32 0, i32 2
  %265 = load i32**, i32*** %264, align 8
  %266 = load i64, i64* @NVDEV_ENGINE_VP, align 8
  %267 = getelementptr inbounds i32*, i32** %265, i64 %266
  store i32* @nve0_vp_oclass, i32** %267, align 8
  %268 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %269 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %268, i32 0, i32 2
  %270 = load i32**, i32*** %269, align 8
  %271 = load i64, i64* @NVDEV_ENGINE_PPP, align 8
  %272 = getelementptr inbounds i32*, i32** %270, i64 %271
  store i32* @nvc0_ppp_oclass, i32** %272, align 8
  br label %411

273:                                              ; preds = %1
  %274 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %275 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %274, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %275, align 8
  %276 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %277 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %276, i32 0, i32 2
  %278 = load i32**, i32*** %277, align 8
  %279 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %280 = getelementptr inbounds i32*, i32** %278, i64 %279
  store i32* @nouveau_bios_oclass, i32** %280, align 8
  %281 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %282 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %281, i32 0, i32 2
  %283 = load i32**, i32*** %282, align 8
  %284 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %285 = getelementptr inbounds i32*, i32** %283, i64 %284
  store i32* @nve0_gpio_oclass, i32** %285, align 8
  %286 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %287 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %286, i32 0, i32 2
  %288 = load i32**, i32*** %287, align 8
  %289 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %290 = getelementptr inbounds i32*, i32** %288, i64 %289
  store i32* @nvd0_i2c_oclass, i32** %290, align 8
  %291 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %292 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %291, i32 0, i32 2
  %293 = load i32**, i32*** %292, align 8
  %294 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %295 = getelementptr inbounds i32*, i32** %293, i64 %294
  store i32* @nvc0_clock_oclass, i32** %295, align 8
  %296 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %297 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %296, i32 0, i32 2
  %298 = load i32**, i32*** %297, align 8
  %299 = load i64, i64* @NVDEV_SUBDEV_THERM, align 8
  %300 = getelementptr inbounds i32*, i32** %298, i64 %299
  store i32* @nvd0_therm_oclass, i32** %300, align 8
  %301 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %302 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %301, i32 0, i32 2
  %303 = load i32**, i32*** %302, align 8
  %304 = load i64, i64* @NVDEV_SUBDEV_MXM, align 8
  %305 = getelementptr inbounds i32*, i32** %303, i64 %304
  store i32* @nv50_mxm_oclass, i32** %305, align 8
  %306 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %307 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %306, i32 0, i32 2
  %308 = load i32**, i32*** %307, align 8
  %309 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %310 = getelementptr inbounds i32*, i32** %308, i64 %309
  store i32* @nv50_devinit_oclass, i32** %310, align 8
  %311 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %312 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %311, i32 0, i32 2
  %313 = load i32**, i32*** %312, align 8
  %314 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %315 = getelementptr inbounds i32*, i32** %313, i64 %314
  store i32* @nvc0_mc_oclass, i32** %315, align 8
  %316 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %317 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %316, i32 0, i32 2
  %318 = load i32**, i32*** %317, align 8
  %319 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %320 = getelementptr inbounds i32*, i32** %318, i64 %319
  store i32* @nvc0_bus_oclass, i32** %320, align 8
  %321 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %322 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %321, i32 0, i32 2
  %323 = load i32**, i32*** %322, align 8
  %324 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %325 = getelementptr inbounds i32*, i32** %323, i64 %324
  store i32* @nv04_timer_oclass, i32** %325, align 8
  %326 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %327 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %326, i32 0, i32 2
  %328 = load i32**, i32*** %327, align 8
  %329 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %330 = getelementptr inbounds i32*, i32** %328, i64 %329
  store i32* @nvc0_fb_oclass, i32** %330, align 8
  %331 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %332 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %331, i32 0, i32 2
  %333 = load i32**, i32*** %332, align 8
  %334 = load i64, i64* @NVDEV_SUBDEV_LTCG, align 8
  %335 = getelementptr inbounds i32*, i32** %333, i64 %334
  store i32* @nvc0_ltcg_oclass, i32** %335, align 8
  %336 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %337 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %336, i32 0, i32 2
  %338 = load i32**, i32*** %337, align 8
  %339 = load i64, i64* @NVDEV_SUBDEV_IBUS, align 8
  %340 = getelementptr inbounds i32*, i32** %338, i64 %339
  store i32* @nve0_ibus_oclass, i32** %340, align 8
  %341 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %342 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %341, i32 0, i32 2
  %343 = load i32**, i32*** %342, align 8
  %344 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %345 = getelementptr inbounds i32*, i32** %343, i64 %344
  store i32* @nv50_instmem_oclass, i32** %345, align 8
  %346 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %347 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %346, i32 0, i32 2
  %348 = load i32**, i32*** %347, align 8
  %349 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %350 = getelementptr inbounds i32*, i32** %348, i64 %349
  store i32* @nvc0_vmmgr_oclass, i32** %350, align 8
  %351 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %352 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %351, i32 0, i32 2
  %353 = load i32**, i32*** %352, align 8
  %354 = load i64, i64* @NVDEV_SUBDEV_BAR, align 8
  %355 = getelementptr inbounds i32*, i32** %353, i64 %354
  store i32* @nvc0_bar_oclass, i32** %355, align 8
  %356 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %357 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %356, i32 0, i32 2
  %358 = load i32**, i32*** %357, align 8
  %359 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %360 = getelementptr inbounds i32*, i32** %358, i64 %359
  store i32* @nvd0_dmaeng_oclass, i32** %360, align 8
  %361 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %362 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %361, i32 0, i32 2
  %363 = load i32**, i32*** %362, align 8
  %364 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %365 = getelementptr inbounds i32*, i32** %363, i64 %364
  store i32* @nve0_fifo_oclass, i32** %365, align 8
  %366 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %367 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %366, i32 0, i32 2
  %368 = load i32**, i32*** %367, align 8
  %369 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %370 = getelementptr inbounds i32*, i32** %368, i64 %369
  store i32* @nvc0_software_oclass, i32** %370, align 8
  %371 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %372 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %371, i32 0, i32 2
  %373 = load i32**, i32*** %372, align 8
  %374 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %375 = getelementptr inbounds i32*, i32** %373, i64 %374
  store i32* @nve0_graph_oclass, i32** %375, align 8
  %376 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %377 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %376, i32 0, i32 2
  %378 = load i32**, i32*** %377, align 8
  %379 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %380 = getelementptr inbounds i32*, i32** %378, i64 %379
  store i32* @nve0_disp_oclass, i32** %380, align 8
  %381 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %382 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %381, i32 0, i32 2
  %383 = load i32**, i32*** %382, align 8
  %384 = load i64, i64* @NVDEV_ENGINE_COPY0, align 8
  %385 = getelementptr inbounds i32*, i32** %383, i64 %384
  store i32* @nve0_copy0_oclass, i32** %385, align 8
  %386 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %387 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %386, i32 0, i32 2
  %388 = load i32**, i32*** %387, align 8
  %389 = load i64, i64* @NVDEV_ENGINE_COPY1, align 8
  %390 = getelementptr inbounds i32*, i32** %388, i64 %389
  store i32* @nve0_copy1_oclass, i32** %390, align 8
  %391 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %392 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %391, i32 0, i32 2
  %393 = load i32**, i32*** %392, align 8
  %394 = load i64, i64* @NVDEV_ENGINE_BSP, align 8
  %395 = getelementptr inbounds i32*, i32** %393, i64 %394
  store i32* @nve0_bsp_oclass, i32** %395, align 8
  %396 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %397 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %396, i32 0, i32 2
  %398 = load i32**, i32*** %397, align 8
  %399 = load i64, i64* @NVDEV_ENGINE_VP, align 8
  %400 = getelementptr inbounds i32*, i32** %398, i64 %399
  store i32* @nve0_vp_oclass, i32** %400, align 8
  %401 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %402 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %401, i32 0, i32 2
  %403 = load i32**, i32*** %402, align 8
  %404 = load i64, i64* @NVDEV_ENGINE_PPP, align 8
  %405 = getelementptr inbounds i32*, i32** %403, i64 %404
  store i32* @nvc0_ppp_oclass, i32** %405, align 8
  br label %411

406:                                              ; preds = %1
  %407 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %408 = call i32 @nv_fatal(%struct.nouveau_device* %407, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %409 = load i32, i32* @EINVAL, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %2, align 4
  br label %412

411:                                              ; preds = %273, %140, %7
  store i32 0, i32* %2, align 4
  br label %412

412:                                              ; preds = %411, %406
  %413 = load i32, i32* %2, align 4
  ret i32 %413
}

declare dso_local i32 @nv_fatal(%struct.nouveau_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
