; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv50.c_nv50_fb_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nv50_fb_priv = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed 0x100c08 page map\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed 0x100c08 page alloc\0A\00", align 1
@nv50_fb_memtype_valid = common dso_local global i32 0, align 4
@nv50_fb_vram_init = common dso_local global i32 0, align 4
@nv50_fb_vram_new = common dso_local global i32 0, align 4
@nv50_fb_vram_del = common dso_local global i32 0, align 4
@nv50_fb_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nv50_fb_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nv50_fb_priv*, align 8
  %16 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %9, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nouveau_object** %5, %struct.nouveau_object*** %13, align 8
  %17 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %18 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %17)
  store %struct.nouveau_device* %18, %struct.nouveau_device** %14, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %20 = load %struct.nouveau_object*, %struct.nouveau_object** %9, align 8
  %21 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %10, align 8
  %22 = call i32 @nouveau_fb_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, %struct.nv50_fb_priv** %15)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %24 = call %struct.nouveau_object* @nv_object(%struct.nv50_fb_priv* %23)
  %25 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %24, %struct.nouveau_object** %25, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %95

30:                                               ; preds = %6
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @alloc_page(i32 %33)
  %35 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %36 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %38 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %30
  %42 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %43 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %46 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %50 = call i32 @pci_map_page(i32 %44, i64 %47, i32 0, i32 %48, i32 %49)
  %51 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %52 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %54 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %57 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @pci_dma_mapping_error(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %41
  %62 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %63 = call i32 @nv_warn(%struct.nv50_fb_priv* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %41
  br label %68

65:                                               ; preds = %30
  %66 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %67 = call i32 @nv_warn(%struct.nv50_fb_priv* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* @nv50_fb_memtype_valid, align 4
  %70 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %71 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @nv50_fb_vram_init, align 4
  %74 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %75 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* @nv50_fb_vram_new, align 4
  %79 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %80 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @nv50_fb_vram_del, align 4
  %84 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %85 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load i32, i32* @nv50_fb_intr, align 4
  %89 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %90 = call %struct.TYPE_5__* @nv_subdev(%struct.nv50_fb_priv* %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.nv50_fb_priv*, %struct.nv50_fb_priv** %15, align 8
  %93 = getelementptr inbounds %struct.nv50_fb_priv, %struct.nv50_fb_priv* %92, i32 0, i32 0
  %94 = call i32 @nouveau_fb_preinit(%struct.TYPE_6__* %93)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %68, %28
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fb_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nv50_fb_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nv50_fb_priv*) #1

declare dso_local i64 @alloc_page(i32) #1

declare dso_local i32 @pci_map_page(i32, i64, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @nv_warn(%struct.nv50_fb_priv*, i8*) #1

declare dso_local %struct.TYPE_5__* @nv_subdev(%struct.nv50_fb_priv*) #1

declare dso_local i32 @nouveau_fb_preinit(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
