; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv10.c_nv10_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv10.c_nv10_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i32, i8*, i32** }

@.str = private unnamed_addr constant [5 x i8] c"NV10\00", align 1
@nouveau_bios_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VBIOS = common dso_local global i64 0, align 8
@nv10_gpio_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_GPIO = common dso_local global i64 0, align 8
@nv04_i2c_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_I2C = common dso_local global i64 0, align 8
@nv04_clock_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_CLOCK = common dso_local global i64 0, align 8
@nv10_devinit_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_DEVINIT = common dso_local global i64 0, align 8
@nv04_mc_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_MC = common dso_local global i64 0, align 8
@nv04_bus_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_BUS = common dso_local global i64 0, align 8
@nv04_timer_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_TIMER = common dso_local global i64 0, align 8
@nv10_fb_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_FB = common dso_local global i64 0, align 8
@nv04_instmem_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_INSTMEM = common dso_local global i64 0, align 8
@nv04_vmmgr_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VM = common dso_local global i64 0, align 8
@nv04_dmaeng_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@nv10_graph_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@nv04_disp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DISP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NV15\00", align 1
@nv10_fifo_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_FIFO = common dso_local global i64 0, align 8
@nv10_software_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NV16\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"nForce\00", align 1
@nv1a_devinit_oclass = common dso_local global i32 0, align 4
@nv1a_fb_oclass = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"NV11\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"NV17\00", align 1
@nv17_fifo_oclass = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"nForce2\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NV18\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"unknown Celsius chipset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv10_identify(%struct.nouveau_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_device* %0, %struct.nouveau_device** %3, align 8
  %4 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %661 [
    i32 16, label %7
    i32 21, label %80
    i32 22, label %163
    i32 26, label %246
    i32 17, label %329
    i32 23, label %412
    i32 31, label %495
    i32 24, label %578
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
  store i32* @nv10_devinit_oclass, i32** %34, align 8
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
  store i32* @nv10_fb_oclass, i32** %54, align 8
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
  %73 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* @nv10_graph_oclass, i32** %74, align 8
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* @nv04_disp_oclass, i32** %79, align 8
  br label %666

80:                                               ; preds = %1
  %81 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %82 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %81, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %82, align 8
  %83 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %84 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  store i32* @nouveau_bios_oclass, i32** %87, align 8
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %89 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %88, i32 0, i32 2
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  store i32* @nv10_gpio_oclass, i32** %92, align 8
  %93 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %94 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %93, i32 0, i32 2
  %95 = load i32**, i32*** %94, align 8
  %96 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %97 = getelementptr inbounds i32*, i32** %95, i64 %96
  store i32* @nv04_i2c_oclass, i32** %97, align 8
  %98 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %99 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  store i32* @nv04_clock_oclass, i32** %102, align 8
  %103 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %104 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  store i32* @nv10_devinit_oclass, i32** %107, align 8
  %108 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %109 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %108, i32 0, i32 2
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  store i32* @nv04_mc_oclass, i32** %112, align 8
  %113 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %114 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %113, i32 0, i32 2
  %115 = load i32**, i32*** %114, align 8
  %116 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %117 = getelementptr inbounds i32*, i32** %115, i64 %116
  store i32* @nv04_bus_oclass, i32** %117, align 8
  %118 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %119 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %118, i32 0, i32 2
  %120 = load i32**, i32*** %119, align 8
  %121 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %122 = getelementptr inbounds i32*, i32** %120, i64 %121
  store i32* @nv04_timer_oclass, i32** %122, align 8
  %123 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %124 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  store i32* @nv10_fb_oclass, i32** %127, align 8
  %128 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %129 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  store i32* @nv04_instmem_oclass, i32** %132, align 8
  %133 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %134 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %133, i32 0, i32 2
  %135 = load i32**, i32*** %134, align 8
  %136 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %137 = getelementptr inbounds i32*, i32** %135, i64 %136
  store i32* @nv04_vmmgr_oclass, i32** %137, align 8
  %138 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %139 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %138, i32 0, i32 2
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  store i32* @nv04_dmaeng_oclass, i32** %142, align 8
  %143 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %144 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %143, i32 0, i32 2
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  store i32* @nv10_fifo_oclass, i32** %147, align 8
  %148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %149 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %148, i32 0, i32 2
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* @nv10_software_oclass, i32** %152, align 8
  %153 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %154 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* @nv10_graph_oclass, i32** %157, align 8
  %158 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %159 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* @nv04_disp_oclass, i32** %162, align 8
  br label %666

163:                                              ; preds = %1
  %164 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %165 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %164, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %165, align 8
  %166 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %167 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %166, i32 0, i32 2
  %168 = load i32**, i32*** %167, align 8
  %169 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  store i32* @nouveau_bios_oclass, i32** %170, align 8
  %171 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %172 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %171, i32 0, i32 2
  %173 = load i32**, i32*** %172, align 8
  %174 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %175 = getelementptr inbounds i32*, i32** %173, i64 %174
  store i32* @nv10_gpio_oclass, i32** %175, align 8
  %176 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %177 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %176, i32 0, i32 2
  %178 = load i32**, i32*** %177, align 8
  %179 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  store i32* @nv04_i2c_oclass, i32** %180, align 8
  %181 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %182 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %181, i32 0, i32 2
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  store i32* @nv04_clock_oclass, i32** %185, align 8
  %186 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %187 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %186, i32 0, i32 2
  %188 = load i32**, i32*** %187, align 8
  %189 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  store i32* @nv10_devinit_oclass, i32** %190, align 8
  %191 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %192 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %191, i32 0, i32 2
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %195 = getelementptr inbounds i32*, i32** %193, i64 %194
  store i32* @nv04_mc_oclass, i32** %195, align 8
  %196 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %197 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %196, i32 0, i32 2
  %198 = load i32**, i32*** %197, align 8
  %199 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  store i32* @nv04_bus_oclass, i32** %200, align 8
  %201 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %202 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %201, i32 0, i32 2
  %203 = load i32**, i32*** %202, align 8
  %204 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %205 = getelementptr inbounds i32*, i32** %203, i64 %204
  store i32* @nv04_timer_oclass, i32** %205, align 8
  %206 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %207 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %206, i32 0, i32 2
  %208 = load i32**, i32*** %207, align 8
  %209 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %210 = getelementptr inbounds i32*, i32** %208, i64 %209
  store i32* @nv10_fb_oclass, i32** %210, align 8
  %211 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %212 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %215 = getelementptr inbounds i32*, i32** %213, i64 %214
  store i32* @nv04_instmem_oclass, i32** %215, align 8
  %216 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %217 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %216, i32 0, i32 2
  %218 = load i32**, i32*** %217, align 8
  %219 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %220 = getelementptr inbounds i32*, i32** %218, i64 %219
  store i32* @nv04_vmmgr_oclass, i32** %220, align 8
  %221 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %222 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %221, i32 0, i32 2
  %223 = load i32**, i32*** %222, align 8
  %224 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %225 = getelementptr inbounds i32*, i32** %223, i64 %224
  store i32* @nv04_dmaeng_oclass, i32** %225, align 8
  %226 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %227 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  %229 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %230 = getelementptr inbounds i32*, i32** %228, i64 %229
  store i32* @nv10_fifo_oclass, i32** %230, align 8
  %231 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %232 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %231, i32 0, i32 2
  %233 = load i32**, i32*** %232, align 8
  %234 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  store i32* @nv10_software_oclass, i32** %235, align 8
  %236 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %237 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %236, i32 0, i32 2
  %238 = load i32**, i32*** %237, align 8
  %239 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %240 = getelementptr inbounds i32*, i32** %238, i64 %239
  store i32* @nv10_graph_oclass, i32** %240, align 8
  %241 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %242 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %241, i32 0, i32 2
  %243 = load i32**, i32*** %242, align 8
  %244 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %245 = getelementptr inbounds i32*, i32** %243, i64 %244
  store i32* @nv04_disp_oclass, i32** %245, align 8
  br label %666

246:                                              ; preds = %1
  %247 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %248 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %247, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %248, align 8
  %249 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %250 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %249, i32 0, i32 2
  %251 = load i32**, i32*** %250, align 8
  %252 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %253 = getelementptr inbounds i32*, i32** %251, i64 %252
  store i32* @nouveau_bios_oclass, i32** %253, align 8
  %254 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %255 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %254, i32 0, i32 2
  %256 = load i32**, i32*** %255, align 8
  %257 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %258 = getelementptr inbounds i32*, i32** %256, i64 %257
  store i32* @nv10_gpio_oclass, i32** %258, align 8
  %259 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %260 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %259, i32 0, i32 2
  %261 = load i32**, i32*** %260, align 8
  %262 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %263 = getelementptr inbounds i32*, i32** %261, i64 %262
  store i32* @nv04_i2c_oclass, i32** %263, align 8
  %264 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %265 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %264, i32 0, i32 2
  %266 = load i32**, i32*** %265, align 8
  %267 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %268 = getelementptr inbounds i32*, i32** %266, i64 %267
  store i32* @nv04_clock_oclass, i32** %268, align 8
  %269 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %270 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %269, i32 0, i32 2
  %271 = load i32**, i32*** %270, align 8
  %272 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %273 = getelementptr inbounds i32*, i32** %271, i64 %272
  store i32* @nv1a_devinit_oclass, i32** %273, align 8
  %274 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %275 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %274, i32 0, i32 2
  %276 = load i32**, i32*** %275, align 8
  %277 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %278 = getelementptr inbounds i32*, i32** %276, i64 %277
  store i32* @nv04_mc_oclass, i32** %278, align 8
  %279 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %280 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %279, i32 0, i32 2
  %281 = load i32**, i32*** %280, align 8
  %282 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %283 = getelementptr inbounds i32*, i32** %281, i64 %282
  store i32* @nv04_bus_oclass, i32** %283, align 8
  %284 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %285 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %284, i32 0, i32 2
  %286 = load i32**, i32*** %285, align 8
  %287 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %288 = getelementptr inbounds i32*, i32** %286, i64 %287
  store i32* @nv04_timer_oclass, i32** %288, align 8
  %289 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %290 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %289, i32 0, i32 2
  %291 = load i32**, i32*** %290, align 8
  %292 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %293 = getelementptr inbounds i32*, i32** %291, i64 %292
  store i32* @nv1a_fb_oclass, i32** %293, align 8
  %294 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %295 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %294, i32 0, i32 2
  %296 = load i32**, i32*** %295, align 8
  %297 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %298 = getelementptr inbounds i32*, i32** %296, i64 %297
  store i32* @nv04_instmem_oclass, i32** %298, align 8
  %299 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %300 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %299, i32 0, i32 2
  %301 = load i32**, i32*** %300, align 8
  %302 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %303 = getelementptr inbounds i32*, i32** %301, i64 %302
  store i32* @nv04_vmmgr_oclass, i32** %303, align 8
  %304 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %305 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %304, i32 0, i32 2
  %306 = load i32**, i32*** %305, align 8
  %307 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %308 = getelementptr inbounds i32*, i32** %306, i64 %307
  store i32* @nv04_dmaeng_oclass, i32** %308, align 8
  %309 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %310 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %309, i32 0, i32 2
  %311 = load i32**, i32*** %310, align 8
  %312 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %313 = getelementptr inbounds i32*, i32** %311, i64 %312
  store i32* @nv10_fifo_oclass, i32** %313, align 8
  %314 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %315 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %314, i32 0, i32 2
  %316 = load i32**, i32*** %315, align 8
  %317 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %318 = getelementptr inbounds i32*, i32** %316, i64 %317
  store i32* @nv10_software_oclass, i32** %318, align 8
  %319 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %320 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %319, i32 0, i32 2
  %321 = load i32**, i32*** %320, align 8
  %322 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %323 = getelementptr inbounds i32*, i32** %321, i64 %322
  store i32* @nv10_graph_oclass, i32** %323, align 8
  %324 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %325 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %324, i32 0, i32 2
  %326 = load i32**, i32*** %325, align 8
  %327 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %328 = getelementptr inbounds i32*, i32** %326, i64 %327
  store i32* @nv04_disp_oclass, i32** %328, align 8
  br label %666

329:                                              ; preds = %1
  %330 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %331 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %330, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %331, align 8
  %332 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %333 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %332, i32 0, i32 2
  %334 = load i32**, i32*** %333, align 8
  %335 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %336 = getelementptr inbounds i32*, i32** %334, i64 %335
  store i32* @nouveau_bios_oclass, i32** %336, align 8
  %337 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %338 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %337, i32 0, i32 2
  %339 = load i32**, i32*** %338, align 8
  %340 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %341 = getelementptr inbounds i32*, i32** %339, i64 %340
  store i32* @nv10_gpio_oclass, i32** %341, align 8
  %342 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %343 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %342, i32 0, i32 2
  %344 = load i32**, i32*** %343, align 8
  %345 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %346 = getelementptr inbounds i32*, i32** %344, i64 %345
  store i32* @nv04_i2c_oclass, i32** %346, align 8
  %347 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %348 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %347, i32 0, i32 2
  %349 = load i32**, i32*** %348, align 8
  %350 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %351 = getelementptr inbounds i32*, i32** %349, i64 %350
  store i32* @nv04_clock_oclass, i32** %351, align 8
  %352 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %353 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %352, i32 0, i32 2
  %354 = load i32**, i32*** %353, align 8
  %355 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %356 = getelementptr inbounds i32*, i32** %354, i64 %355
  store i32* @nv10_devinit_oclass, i32** %356, align 8
  %357 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %358 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %357, i32 0, i32 2
  %359 = load i32**, i32*** %358, align 8
  %360 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %361 = getelementptr inbounds i32*, i32** %359, i64 %360
  store i32* @nv04_mc_oclass, i32** %361, align 8
  %362 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %363 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %362, i32 0, i32 2
  %364 = load i32**, i32*** %363, align 8
  %365 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %366 = getelementptr inbounds i32*, i32** %364, i64 %365
  store i32* @nv04_bus_oclass, i32** %366, align 8
  %367 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %368 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %367, i32 0, i32 2
  %369 = load i32**, i32*** %368, align 8
  %370 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %371 = getelementptr inbounds i32*, i32** %369, i64 %370
  store i32* @nv04_timer_oclass, i32** %371, align 8
  %372 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %373 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %372, i32 0, i32 2
  %374 = load i32**, i32*** %373, align 8
  %375 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %376 = getelementptr inbounds i32*, i32** %374, i64 %375
  store i32* @nv10_fb_oclass, i32** %376, align 8
  %377 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %378 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %377, i32 0, i32 2
  %379 = load i32**, i32*** %378, align 8
  %380 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %381 = getelementptr inbounds i32*, i32** %379, i64 %380
  store i32* @nv04_instmem_oclass, i32** %381, align 8
  %382 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %383 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %382, i32 0, i32 2
  %384 = load i32**, i32*** %383, align 8
  %385 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %386 = getelementptr inbounds i32*, i32** %384, i64 %385
  store i32* @nv04_vmmgr_oclass, i32** %386, align 8
  %387 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %388 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %387, i32 0, i32 2
  %389 = load i32**, i32*** %388, align 8
  %390 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %391 = getelementptr inbounds i32*, i32** %389, i64 %390
  store i32* @nv04_dmaeng_oclass, i32** %391, align 8
  %392 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %393 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %392, i32 0, i32 2
  %394 = load i32**, i32*** %393, align 8
  %395 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %396 = getelementptr inbounds i32*, i32** %394, i64 %395
  store i32* @nv10_fifo_oclass, i32** %396, align 8
  %397 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %398 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %397, i32 0, i32 2
  %399 = load i32**, i32*** %398, align 8
  %400 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %401 = getelementptr inbounds i32*, i32** %399, i64 %400
  store i32* @nv10_software_oclass, i32** %401, align 8
  %402 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %403 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %402, i32 0, i32 2
  %404 = load i32**, i32*** %403, align 8
  %405 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %406 = getelementptr inbounds i32*, i32** %404, i64 %405
  store i32* @nv10_graph_oclass, i32** %406, align 8
  %407 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %408 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %407, i32 0, i32 2
  %409 = load i32**, i32*** %408, align 8
  %410 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %411 = getelementptr inbounds i32*, i32** %409, i64 %410
  store i32* @nv04_disp_oclass, i32** %411, align 8
  br label %666

412:                                              ; preds = %1
  %413 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %414 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %413, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %414, align 8
  %415 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %416 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %415, i32 0, i32 2
  %417 = load i32**, i32*** %416, align 8
  %418 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %419 = getelementptr inbounds i32*, i32** %417, i64 %418
  store i32* @nouveau_bios_oclass, i32** %419, align 8
  %420 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %421 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %420, i32 0, i32 2
  %422 = load i32**, i32*** %421, align 8
  %423 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %424 = getelementptr inbounds i32*, i32** %422, i64 %423
  store i32* @nv10_gpio_oclass, i32** %424, align 8
  %425 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %426 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %425, i32 0, i32 2
  %427 = load i32**, i32*** %426, align 8
  %428 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %429 = getelementptr inbounds i32*, i32** %427, i64 %428
  store i32* @nv04_i2c_oclass, i32** %429, align 8
  %430 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %431 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %430, i32 0, i32 2
  %432 = load i32**, i32*** %431, align 8
  %433 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %434 = getelementptr inbounds i32*, i32** %432, i64 %433
  store i32* @nv04_clock_oclass, i32** %434, align 8
  %435 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %436 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %435, i32 0, i32 2
  %437 = load i32**, i32*** %436, align 8
  %438 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %439 = getelementptr inbounds i32*, i32** %437, i64 %438
  store i32* @nv10_devinit_oclass, i32** %439, align 8
  %440 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %441 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %440, i32 0, i32 2
  %442 = load i32**, i32*** %441, align 8
  %443 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %444 = getelementptr inbounds i32*, i32** %442, i64 %443
  store i32* @nv04_mc_oclass, i32** %444, align 8
  %445 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %446 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %445, i32 0, i32 2
  %447 = load i32**, i32*** %446, align 8
  %448 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %449 = getelementptr inbounds i32*, i32** %447, i64 %448
  store i32* @nv04_bus_oclass, i32** %449, align 8
  %450 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %451 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %450, i32 0, i32 2
  %452 = load i32**, i32*** %451, align 8
  %453 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %454 = getelementptr inbounds i32*, i32** %452, i64 %453
  store i32* @nv04_timer_oclass, i32** %454, align 8
  %455 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %456 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %455, i32 0, i32 2
  %457 = load i32**, i32*** %456, align 8
  %458 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %459 = getelementptr inbounds i32*, i32** %457, i64 %458
  store i32* @nv10_fb_oclass, i32** %459, align 8
  %460 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %461 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %460, i32 0, i32 2
  %462 = load i32**, i32*** %461, align 8
  %463 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %464 = getelementptr inbounds i32*, i32** %462, i64 %463
  store i32* @nv04_instmem_oclass, i32** %464, align 8
  %465 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %466 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %465, i32 0, i32 2
  %467 = load i32**, i32*** %466, align 8
  %468 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %469 = getelementptr inbounds i32*, i32** %467, i64 %468
  store i32* @nv04_vmmgr_oclass, i32** %469, align 8
  %470 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %471 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %470, i32 0, i32 2
  %472 = load i32**, i32*** %471, align 8
  %473 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %474 = getelementptr inbounds i32*, i32** %472, i64 %473
  store i32* @nv04_dmaeng_oclass, i32** %474, align 8
  %475 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %476 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %475, i32 0, i32 2
  %477 = load i32**, i32*** %476, align 8
  %478 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %479 = getelementptr inbounds i32*, i32** %477, i64 %478
  store i32* @nv17_fifo_oclass, i32** %479, align 8
  %480 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %481 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %480, i32 0, i32 2
  %482 = load i32**, i32*** %481, align 8
  %483 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %484 = getelementptr inbounds i32*, i32** %482, i64 %483
  store i32* @nv10_software_oclass, i32** %484, align 8
  %485 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %486 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %485, i32 0, i32 2
  %487 = load i32**, i32*** %486, align 8
  %488 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %489 = getelementptr inbounds i32*, i32** %487, i64 %488
  store i32* @nv10_graph_oclass, i32** %489, align 8
  %490 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %491 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %490, i32 0, i32 2
  %492 = load i32**, i32*** %491, align 8
  %493 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %494 = getelementptr inbounds i32*, i32** %492, i64 %493
  store i32* @nv04_disp_oclass, i32** %494, align 8
  br label %666

495:                                              ; preds = %1
  %496 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %497 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %496, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %497, align 8
  %498 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %499 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %498, i32 0, i32 2
  %500 = load i32**, i32*** %499, align 8
  %501 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %502 = getelementptr inbounds i32*, i32** %500, i64 %501
  store i32* @nouveau_bios_oclass, i32** %502, align 8
  %503 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %504 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %503, i32 0, i32 2
  %505 = load i32**, i32*** %504, align 8
  %506 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %507 = getelementptr inbounds i32*, i32** %505, i64 %506
  store i32* @nv10_gpio_oclass, i32** %507, align 8
  %508 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %509 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %508, i32 0, i32 2
  %510 = load i32**, i32*** %509, align 8
  %511 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %512 = getelementptr inbounds i32*, i32** %510, i64 %511
  store i32* @nv04_i2c_oclass, i32** %512, align 8
  %513 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %514 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %513, i32 0, i32 2
  %515 = load i32**, i32*** %514, align 8
  %516 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %517 = getelementptr inbounds i32*, i32** %515, i64 %516
  store i32* @nv04_clock_oclass, i32** %517, align 8
  %518 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %519 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %518, i32 0, i32 2
  %520 = load i32**, i32*** %519, align 8
  %521 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %522 = getelementptr inbounds i32*, i32** %520, i64 %521
  store i32* @nv1a_devinit_oclass, i32** %522, align 8
  %523 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %524 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %523, i32 0, i32 2
  %525 = load i32**, i32*** %524, align 8
  %526 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %527 = getelementptr inbounds i32*, i32** %525, i64 %526
  store i32* @nv04_mc_oclass, i32** %527, align 8
  %528 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %529 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %528, i32 0, i32 2
  %530 = load i32**, i32*** %529, align 8
  %531 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %532 = getelementptr inbounds i32*, i32** %530, i64 %531
  store i32* @nv04_bus_oclass, i32** %532, align 8
  %533 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %534 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %533, i32 0, i32 2
  %535 = load i32**, i32*** %534, align 8
  %536 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %537 = getelementptr inbounds i32*, i32** %535, i64 %536
  store i32* @nv04_timer_oclass, i32** %537, align 8
  %538 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %539 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %538, i32 0, i32 2
  %540 = load i32**, i32*** %539, align 8
  %541 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %542 = getelementptr inbounds i32*, i32** %540, i64 %541
  store i32* @nv1a_fb_oclass, i32** %542, align 8
  %543 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %544 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %543, i32 0, i32 2
  %545 = load i32**, i32*** %544, align 8
  %546 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %547 = getelementptr inbounds i32*, i32** %545, i64 %546
  store i32* @nv04_instmem_oclass, i32** %547, align 8
  %548 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %549 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %548, i32 0, i32 2
  %550 = load i32**, i32*** %549, align 8
  %551 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %552 = getelementptr inbounds i32*, i32** %550, i64 %551
  store i32* @nv04_vmmgr_oclass, i32** %552, align 8
  %553 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %554 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %553, i32 0, i32 2
  %555 = load i32**, i32*** %554, align 8
  %556 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %557 = getelementptr inbounds i32*, i32** %555, i64 %556
  store i32* @nv04_dmaeng_oclass, i32** %557, align 8
  %558 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %559 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %558, i32 0, i32 2
  %560 = load i32**, i32*** %559, align 8
  %561 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %562 = getelementptr inbounds i32*, i32** %560, i64 %561
  store i32* @nv17_fifo_oclass, i32** %562, align 8
  %563 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %564 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %563, i32 0, i32 2
  %565 = load i32**, i32*** %564, align 8
  %566 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %567 = getelementptr inbounds i32*, i32** %565, i64 %566
  store i32* @nv10_software_oclass, i32** %567, align 8
  %568 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %569 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %568, i32 0, i32 2
  %570 = load i32**, i32*** %569, align 8
  %571 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %572 = getelementptr inbounds i32*, i32** %570, i64 %571
  store i32* @nv10_graph_oclass, i32** %572, align 8
  %573 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %574 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %573, i32 0, i32 2
  %575 = load i32**, i32*** %574, align 8
  %576 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %577 = getelementptr inbounds i32*, i32** %575, i64 %576
  store i32* @nv04_disp_oclass, i32** %577, align 8
  br label %666

578:                                              ; preds = %1
  %579 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %580 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %579, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %580, align 8
  %581 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %582 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %581, i32 0, i32 2
  %583 = load i32**, i32*** %582, align 8
  %584 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %585 = getelementptr inbounds i32*, i32** %583, i64 %584
  store i32* @nouveau_bios_oclass, i32** %585, align 8
  %586 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %587 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %586, i32 0, i32 2
  %588 = load i32**, i32*** %587, align 8
  %589 = load i64, i64* @NVDEV_SUBDEV_GPIO, align 8
  %590 = getelementptr inbounds i32*, i32** %588, i64 %589
  store i32* @nv10_gpio_oclass, i32** %590, align 8
  %591 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %592 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %591, i32 0, i32 2
  %593 = load i32**, i32*** %592, align 8
  %594 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %595 = getelementptr inbounds i32*, i32** %593, i64 %594
  store i32* @nv04_i2c_oclass, i32** %595, align 8
  %596 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %597 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %596, i32 0, i32 2
  %598 = load i32**, i32*** %597, align 8
  %599 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %600 = getelementptr inbounds i32*, i32** %598, i64 %599
  store i32* @nv04_clock_oclass, i32** %600, align 8
  %601 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %602 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %601, i32 0, i32 2
  %603 = load i32**, i32*** %602, align 8
  %604 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %605 = getelementptr inbounds i32*, i32** %603, i64 %604
  store i32* @nv10_devinit_oclass, i32** %605, align 8
  %606 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %607 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %606, i32 0, i32 2
  %608 = load i32**, i32*** %607, align 8
  %609 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %610 = getelementptr inbounds i32*, i32** %608, i64 %609
  store i32* @nv04_mc_oclass, i32** %610, align 8
  %611 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %612 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %611, i32 0, i32 2
  %613 = load i32**, i32*** %612, align 8
  %614 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %615 = getelementptr inbounds i32*, i32** %613, i64 %614
  store i32* @nv04_bus_oclass, i32** %615, align 8
  %616 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %617 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %616, i32 0, i32 2
  %618 = load i32**, i32*** %617, align 8
  %619 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %620 = getelementptr inbounds i32*, i32** %618, i64 %619
  store i32* @nv04_timer_oclass, i32** %620, align 8
  %621 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %622 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %621, i32 0, i32 2
  %623 = load i32**, i32*** %622, align 8
  %624 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %625 = getelementptr inbounds i32*, i32** %623, i64 %624
  store i32* @nv10_fb_oclass, i32** %625, align 8
  %626 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %627 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %626, i32 0, i32 2
  %628 = load i32**, i32*** %627, align 8
  %629 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %630 = getelementptr inbounds i32*, i32** %628, i64 %629
  store i32* @nv04_instmem_oclass, i32** %630, align 8
  %631 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %632 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %631, i32 0, i32 2
  %633 = load i32**, i32*** %632, align 8
  %634 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %635 = getelementptr inbounds i32*, i32** %633, i64 %634
  store i32* @nv04_vmmgr_oclass, i32** %635, align 8
  %636 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %637 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %636, i32 0, i32 2
  %638 = load i32**, i32*** %637, align 8
  %639 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %640 = getelementptr inbounds i32*, i32** %638, i64 %639
  store i32* @nv04_dmaeng_oclass, i32** %640, align 8
  %641 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %642 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %641, i32 0, i32 2
  %643 = load i32**, i32*** %642, align 8
  %644 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %645 = getelementptr inbounds i32*, i32** %643, i64 %644
  store i32* @nv17_fifo_oclass, i32** %645, align 8
  %646 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %647 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %646, i32 0, i32 2
  %648 = load i32**, i32*** %647, align 8
  %649 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %650 = getelementptr inbounds i32*, i32** %648, i64 %649
  store i32* @nv10_software_oclass, i32** %650, align 8
  %651 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %652 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %651, i32 0, i32 2
  %653 = load i32**, i32*** %652, align 8
  %654 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %655 = getelementptr inbounds i32*, i32** %653, i64 %654
  store i32* @nv10_graph_oclass, i32** %655, align 8
  %656 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %657 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %656, i32 0, i32 2
  %658 = load i32**, i32*** %657, align 8
  %659 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %660 = getelementptr inbounds i32*, i32** %658, i64 %659
  store i32* @nv04_disp_oclass, i32** %660, align 8
  br label %666

661:                                              ; preds = %1
  %662 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %663 = call i32 @nv_fatal(%struct.nouveau_device* %662, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %664 = load i32, i32* @EINVAL, align 4
  %665 = sub nsw i32 0, %664
  store i32 %665, i32* %2, align 4
  br label %667

666:                                              ; preds = %578, %495, %412, %329, %246, %163, %80, %7
  store i32 0, i32* %2, align 4
  br label %667

667:                                              ; preds = %666, %661
  %668 = load i32, i32* %2, align 4
  ret i32 %668
}

declare dso_local i32 @nv_fatal(%struct.nouveau_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
