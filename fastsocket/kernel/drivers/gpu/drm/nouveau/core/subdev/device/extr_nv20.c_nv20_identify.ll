; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv20.c_nv20_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv20.c_nv20_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i32, i8*, i32** }

@.str = private unnamed_addr constant [5 x i8] c"NV20\00", align 1
@nouveau_bios_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VBIOS = common dso_local global i64 0, align 8
@nv10_gpio_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_GPIO = common dso_local global i64 0, align 8
@nv04_i2c_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_I2C = common dso_local global i64 0, align 8
@nv04_clock_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_CLOCK = common dso_local global i64 0, align 8
@nv20_devinit_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_DEVINIT = common dso_local global i64 0, align 8
@nv04_mc_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_MC = common dso_local global i64 0, align 8
@nv04_bus_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_BUS = common dso_local global i64 0, align 8
@nv04_timer_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_TIMER = common dso_local global i64 0, align 8
@nv20_fb_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_FB = common dso_local global i64 0, align 8
@nv04_instmem_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_INSTMEM = common dso_local global i64 0, align 8
@nv04_vmmgr_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VM = common dso_local global i64 0, align 8
@nv04_dmaeng_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@nv17_fifo_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_FIFO = common dso_local global i64 0, align 8
@nv10_software_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@nv20_graph_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@nv04_disp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DISP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NV25\00", align 1
@nv25_fb_oclass = common dso_local global i32 0, align 4
@nv25_graph_oclass = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"NV28\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"NV2A\00", align 1
@nv2a_graph_oclass = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown Kelvin chipset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv20_identify(%struct.nouveau_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_device* %0, %struct.nouveau_device** %3, align 8
  %4 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %339 [
    i32 32, label %7
    i32 37, label %90
    i32 40, label %173
    i32 42, label %256
  ]

7:                                                ; preds = %1
  %8 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %9 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
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
  store i32* @nv10_gpio_oclass, i32** %19, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* @nv04_i2c_oclass, i32** %24, align 8
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  store i32* @nv04_clock_oclass, i32** %29, align 8
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* @nv20_devinit_oclass, i32** %34, align 8
  %35 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* @nv04_mc_oclass, i32** %39, align 8
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %41 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* @nv04_bus_oclass, i32** %44, align 8
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* @nv04_timer_oclass, i32** %49, align 8
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %51 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* @nv20_fb_oclass, i32** %54, align 8
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  store i32* @nv04_instmem_oclass, i32** %59, align 8
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  store i32* @nv04_vmmgr_oclass, i32** %64, align 8
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* @nv04_dmaeng_oclass, i32** %69, align 8
  %70 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* @nv17_fifo_oclass, i32** %74, align 8
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* @nv10_software_oclass, i32** %79, align 8
  %80 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %81 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* @nv20_graph_oclass, i32** %84, align 8
  %85 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %86 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  store i32* @nv04_disp_oclass, i32** %89, align 8
  br label %344

90:                                               ; preds = %1
  %91 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %92 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %91, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %92, align 8
  %93 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %94 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  store i32* @nouveau_bios_oclass, i32** %97, align 8
  %98 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %99 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  store i32* @nv10_gpio_oclass, i32** %102, align 8
  %103 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %104 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  store i32* @nv04_i2c_oclass, i32** %107, align 8
  %108 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %109 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  store i32* @nv04_clock_oclass, i32** %112, align 8
  %113 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %114 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %113, i32 0, i32 2
  %115 = load i32**, i32*** %114, align 8
  %116 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  store i32* @nv20_devinit_oclass, i32** %117, align 8
  %118 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %119 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %122 = getelementptr inbounds i32*, i32** %120, i64 %121
  store i32* @nv04_mc_oclass, i32** %122, align 8
  %123 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %124 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  store i32* @nv04_bus_oclass, i32** %127, align 8
  %128 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %129 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  store i32* @nv04_timer_oclass, i32** %132, align 8
  %133 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %134 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  store i32* @nv25_fb_oclass, i32** %137, align 8
  %138 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %139 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  store i32* @nv04_instmem_oclass, i32** %142, align 8
  %143 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %144 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %143, i32 0, i32 2
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  store i32* @nv04_vmmgr_oclass, i32** %147, align 8
  %148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %149 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %148, i32 0, i32 2
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* @nv04_dmaeng_oclass, i32** %152, align 8
  %153 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %154 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* @nv17_fifo_oclass, i32** %157, align 8
  %158 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %159 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* @nv10_software_oclass, i32** %162, align 8
  %163 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %164 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %163, i32 0, i32 2
  %165 = load i32**, i32*** %164, align 8
  %166 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %167 = getelementptr inbounds i32*, i32** %165, i64 %166
  store i32* @nv25_graph_oclass, i32** %167, align 8
  %168 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %169 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %168, i32 0, i32 2
  %170 = load i32**, i32*** %169, align 8
  %171 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %172 = getelementptr inbounds i32*, i32** %170, i64 %171
  store i32* @nv04_disp_oclass, i32** %172, align 8
  br label %344

173:                                              ; preds = %1
  %174 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %175 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %174, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %175, align 8
  %176 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %177 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %176, i32 0, i32 2
  %178 = load i32**, i32*** %177, align 8
  %179 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  store i32* @nouveau_bios_oclass, i32** %180, align 8
  %181 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %182 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %181, i32 0, i32 2
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  store i32* @nv10_gpio_oclass, i32** %185, align 8
  %186 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %187 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  store i32* @nv04_i2c_oclass, i32** %190, align 8
  %191 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %192 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %191, i32 0, i32 2
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %195 = getelementptr inbounds i32*, i32** %193, i64 %194
  store i32* @nv04_clock_oclass, i32** %195, align 8
  %196 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %197 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %196, i32 0, i32 2
  %198 = load i32**, i32*** %197, align 8
  %199 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  store i32* @nv20_devinit_oclass, i32** %200, align 8
  %201 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %202 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %201, i32 0, i32 2
  %203 = load i32**, i32*** %202, align 8
  %204 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %205 = getelementptr inbounds i32*, i32** %203, i64 %204
  store i32* @nv04_mc_oclass, i32** %205, align 8
  %206 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %207 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %206, i32 0, i32 2
  %208 = load i32**, i32*** %207, align 8
  %209 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %210 = getelementptr inbounds i32*, i32** %208, i64 %209
  store i32* @nv04_bus_oclass, i32** %210, align 8
  %211 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %212 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %215 = getelementptr inbounds i32*, i32** %213, i64 %214
  store i32* @nv04_timer_oclass, i32** %215, align 8
  %216 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %217 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %216, i32 0, i32 2
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  store i32* @nv25_fb_oclass, i32** %220, align 8
  %221 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %222 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %221, i32 0, i32 2
  %223 = load i32**, i32*** %222, align 8
  %224 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %225 = getelementptr inbounds i32*, i32** %223, i64 %224
  store i32* @nv04_instmem_oclass, i32** %225, align 8
  %226 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %227 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %230 = getelementptr inbounds i32*, i32** %228, i64 %229
  store i32* @nv04_vmmgr_oclass, i32** %230, align 8
  %231 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %232 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %231, i32 0, i32 2
  %233 = load i32**, i32*** %232, align 8
  %234 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  store i32* @nv04_dmaeng_oclass, i32** %235, align 8
  %236 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %237 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %236, i32 0, i32 2
  %238 = load i32**, i32*** %237, align 8
  %239 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %240 = getelementptr inbounds i32*, i32** %238, i64 %239
  store i32* @nv17_fifo_oclass, i32** %240, align 8
  %241 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %242 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %241, i32 0, i32 2
  %243 = load i32**, i32*** %242, align 8
  %244 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %245 = getelementptr inbounds i32*, i32** %243, i64 %244
  store i32* @nv10_software_oclass, i32** %245, align 8
  %246 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %247 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %246, i32 0, i32 2
  %248 = load i32**, i32*** %247, align 8
  %249 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %250 = getelementptr inbounds i32*, i32** %248, i64 %249
  store i32* @nv25_graph_oclass, i32** %250, align 8
  %251 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %252 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %251, i32 0, i32 2
  %253 = load i32**, i32*** %252, align 8
  %254 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %255 = getelementptr inbounds i32*, i32** %253, i64 %254
  store i32* @nv04_disp_oclass, i32** %255, align 8
  br label %344

256:                                              ; preds = %1
  %257 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %258 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %257, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %258, align 8
  %259 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %260 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %259, i32 0, i32 2
  %261 = load i32**, i32*** %260, align 8
  %262 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %263 = getelementptr inbounds i32*, i32** %261, i64 %262
  store i32* @nouveau_bios_oclass, i32** %263, align 8
  %264 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %265 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %264, i32 0, i32 2
  %266 = load i32**, i32*** %265, align 8
  %267 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %268 = getelementptr inbounds i32*, i32** %266, i64 %267
  store i32* @nv10_gpio_oclass, i32** %268, align 8
  %269 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %270 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %269, i32 0, i32 2
  %271 = load i32**, i32*** %270, align 8
  %272 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %273 = getelementptr inbounds i32*, i32** %271, i64 %272
  store i32* @nv04_i2c_oclass, i32** %273, align 8
  %274 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %275 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %274, i32 0, i32 2
  %276 = load i32**, i32*** %275, align 8
  %277 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %278 = getelementptr inbounds i32*, i32** %276, i64 %277
  store i32* @nv04_clock_oclass, i32** %278, align 8
  %279 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %280 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %279, i32 0, i32 2
  %281 = load i32**, i32*** %280, align 8
  %282 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %283 = getelementptr inbounds i32*, i32** %281, i64 %282
  store i32* @nv20_devinit_oclass, i32** %283, align 8
  %284 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %285 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %284, i32 0, i32 2
  %286 = load i32**, i32*** %285, align 8
  %287 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %288 = getelementptr inbounds i32*, i32** %286, i64 %287
  store i32* @nv04_mc_oclass, i32** %288, align 8
  %289 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %290 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %289, i32 0, i32 2
  %291 = load i32**, i32*** %290, align 8
  %292 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %293 = getelementptr inbounds i32*, i32** %291, i64 %292
  store i32* @nv04_bus_oclass, i32** %293, align 8
  %294 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %295 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %294, i32 0, i32 2
  %296 = load i32**, i32*** %295, align 8
  %297 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %298 = getelementptr inbounds i32*, i32** %296, i64 %297
  store i32* @nv04_timer_oclass, i32** %298, align 8
  %299 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %300 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %299, i32 0, i32 2
  %301 = load i32**, i32*** %300, align 8
  %302 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %303 = getelementptr inbounds i32*, i32** %301, i64 %302
  store i32* @nv25_fb_oclass, i32** %303, align 8
  %304 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %305 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %304, i32 0, i32 2
  %306 = load i32**, i32*** %305, align 8
  %307 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %308 = getelementptr inbounds i32*, i32** %306, i64 %307
  store i32* @nv04_instmem_oclass, i32** %308, align 8
  %309 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %310 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %309, i32 0, i32 2
  %311 = load i32**, i32*** %310, align 8
  %312 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %313 = getelementptr inbounds i32*, i32** %311, i64 %312
  store i32* @nv04_vmmgr_oclass, i32** %313, align 8
  %314 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %315 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %314, i32 0, i32 2
  %316 = load i32**, i32*** %315, align 8
  %317 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %318 = getelementptr inbounds i32*, i32** %316, i64 %317
  store i32* @nv04_dmaeng_oclass, i32** %318, align 8
  %319 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %320 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %319, i32 0, i32 2
  %321 = load i32**, i32*** %320, align 8
  %322 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %323 = getelementptr inbounds i32*, i32** %321, i64 %322
  store i32* @nv17_fifo_oclass, i32** %323, align 8
  %324 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %325 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %324, i32 0, i32 2
  %326 = load i32**, i32*** %325, align 8
  %327 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %328 = getelementptr inbounds i32*, i32** %326, i64 %327
  store i32* @nv10_software_oclass, i32** %328, align 8
  %329 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %330 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %329, i32 0, i32 2
  %331 = load i32**, i32*** %330, align 8
  %332 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %333 = getelementptr inbounds i32*, i32** %331, i64 %332
  store i32* @nv2a_graph_oclass, i32** %333, align 8
  %334 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %335 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %334, i32 0, i32 2
  %336 = load i32**, i32*** %335, align 8
  %337 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %338 = getelementptr inbounds i32*, i32** %336, i64 %337
  store i32* @nv04_disp_oclass, i32** %338, align 8
  br label %344

339:                                              ; preds = %1
  %340 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %341 = call i32 @nv_fatal(%struct.nouveau_device* %340, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %2, align 4
  br label %345

344:                                              ; preds = %256, %173, %90, %7
  store i32 0, i32* %2, align 4
  br label %345

345:                                              ; preds = %344, %339
  %346 = load i32, i32* %2, align 4
  ret i32 %346
}

declare dso_local i32 @nv_fatal(%struct.nouveau_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
