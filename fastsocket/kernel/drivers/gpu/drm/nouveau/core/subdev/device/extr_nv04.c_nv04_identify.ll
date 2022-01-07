; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv04.c_nv04_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/device/extr_nv04.c_nv04_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_device = type { i32, i8*, i32** }

@.str = private unnamed_addr constant [5 x i8] c"NV04\00", align 1
@nouveau_bios_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VBIOS = common dso_local global i64 0, align 8
@nv04_i2c_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_I2C = common dso_local global i64 0, align 8
@nv04_clock_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_CLOCK = common dso_local global i64 0, align 8
@nv04_devinit_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_DEVINIT = common dso_local global i64 0, align 8
@nv04_mc_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_MC = common dso_local global i64 0, align 8
@nv04_bus_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_BUS = common dso_local global i64 0, align 8
@nv04_timer_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_TIMER = common dso_local global i64 0, align 8
@nv04_fb_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_FB = common dso_local global i64 0, align 8
@nv04_instmem_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_INSTMEM = common dso_local global i64 0, align 8
@nv04_vmmgr_oclass = common dso_local global i32 0, align 4
@NVDEV_SUBDEV_VM = common dso_local global i64 0, align 8
@nv04_dmaeng_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DMAOBJ = common dso_local global i64 0, align 8
@nv04_fifo_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_FIFO = common dso_local global i64 0, align 8
@nv04_software_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_SW = common dso_local global i64 0, align 8
@nv04_graph_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_GR = common dso_local global i64 0, align 8
@nv04_disp_oclass = common dso_local global i32 0, align 4
@NVDEV_ENGINE_DISP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NV05\00", align 1
@nv05_devinit_oclass = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"unknown RIVA chipset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_identify(%struct.nouveau_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_device*, align 8
  store %struct.nouveau_device* %0, %struct.nouveau_device** %3, align 8
  %4 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %5 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %163 [
    i32 4, label %7
    i32 5, label %85
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
  %18 = load i64, i64* @NVDEV_SUBDEV_I2C, align 8
  %19 = getelementptr inbounds i32*, i32** %17, i64 %18
  store i32* @nv04_i2c_oclass, i32** %19, align 8
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @NVDEV_SUBDEV_CLOCK, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  store i32* @nv04_clock_oclass, i32** %24, align 8
  %25 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %26 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* @NVDEV_SUBDEV_DEVINIT, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  store i32* @nv04_devinit_oclass, i32** %29, align 8
  %30 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %31 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %30, i32 0, i32 2
  %32 = load i32**, i32*** %31, align 8
  %33 = load i64, i64* @NVDEV_SUBDEV_MC, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  store i32* @nv04_mc_oclass, i32** %34, align 8
  %35 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %36 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %35, i32 0, i32 2
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @NVDEV_SUBDEV_BUS, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  store i32* @nv04_bus_oclass, i32** %39, align 8
  %40 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %41 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = load i64, i64* @NVDEV_SUBDEV_TIMER, align 8
  %44 = getelementptr inbounds i32*, i32** %42, i64 %43
  store i32* @nv04_timer_oclass, i32** %44, align 8
  %45 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %46 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @NVDEV_SUBDEV_FB, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* @nv04_fb_oclass, i32** %49, align 8
  %50 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %51 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @NVDEV_SUBDEV_INSTMEM, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* @nv04_instmem_oclass, i32** %54, align 8
  %55 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %56 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @NVDEV_SUBDEV_VM, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  store i32* @nv04_vmmgr_oclass, i32** %59, align 8
  %60 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %61 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @NVDEV_ENGINE_DMAOBJ, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  store i32* @nv04_dmaeng_oclass, i32** %64, align 8
  %65 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %66 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i64, i64* @NVDEV_ENGINE_FIFO, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  store i32* @nv04_fifo_oclass, i32** %69, align 8
  %70 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %71 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %70, i32 0, i32 2
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* @nv04_software_oclass, i32** %74, align 8
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 2
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* @nv04_graph_oclass, i32** %79, align 8
  %80 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %81 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32* @nv04_disp_oclass, i32** %84, align 8
  br label %168

85:                                               ; preds = %1
  %86 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %87 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %86, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %87, align 8
  %88 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %89 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %88, i32 0, i32 2
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* @NVDEV_SUBDEV_VBIOS, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  store i32* @nouveau_bios_oclass, i32** %92, align 8
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
  store i32* @nv05_devinit_oclass, i32** %107, align 8
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
  store i32* @nv04_fb_oclass, i32** %127, align 8
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
  store i32* @nv04_fifo_oclass, i32** %147, align 8
  %148 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %149 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %148, i32 0, i32 2
  %150 = load i32**, i32*** %149, align 8
  %151 = load i64, i64* @NVDEV_ENGINE_SW, align 8
  %152 = getelementptr inbounds i32*, i32** %150, i64 %151
  store i32* @nv04_software_oclass, i32** %152, align 8
  %153 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %154 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = load i64, i64* @NVDEV_ENGINE_GR, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* @nv04_graph_oclass, i32** %157, align 8
  %158 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %159 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %158, i32 0, i32 2
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @NVDEV_ENGINE_DISP, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  store i32* @nv04_disp_oclass, i32** %162, align 8
  br label %168

163:                                              ; preds = %1
  %164 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %165 = call i32 @nv_fatal(%struct.nouveau_device* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %169

168:                                              ; preds = %85, %7
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @nv_fatal(%struct.nouveau_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
