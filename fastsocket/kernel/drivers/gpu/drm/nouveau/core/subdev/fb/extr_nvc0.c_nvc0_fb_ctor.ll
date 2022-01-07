; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nvc0_fb_priv = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@nvc0_fb_memtype_valid = common dso_local global i32 0, align 4
@nvc0_fb_vram_init = common dso_local global i32 0, align 4
@nvc0_fb_vram_new = common dso_local global i32 0, align 4
@nv50_fb_vram_del = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i8*, i32, %struct.nouveau_object**)* @nvc0_fb_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0_fb_ctor(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i8* %3, i32 %4, %struct.nouveau_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_object*, align 8
  %10 = alloca %struct.nouveau_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_object**, align 8
  %14 = alloca %struct.nouveau_device*, align 8
  %15 = alloca %struct.nvc0_fb_priv*, align 8
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
  %22 = call i32 @nouveau_fb_create(%struct.nouveau_object* %19, %struct.nouveau_object* %20, %struct.nouveau_oclass* %21, %struct.nvc0_fb_priv** %15)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %24 = call %struct.nouveau_object* @nv_object(%struct.nvc0_fb_priv* %23)
  %25 = load %struct.nouveau_object**, %struct.nouveau_object*** %13, align 8
  store %struct.nouveau_object* %24, %struct.nouveau_object** %25, align 8
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %90

30:                                               ; preds = %6
  %31 = load i32, i32* @nvc0_fb_memtype_valid, align 4
  %32 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %33 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @nvc0_fb_vram_init, align 4
  %36 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %37 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @nvc0_fb_vram_new, align 4
  %41 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %42 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @nv50_fb_vram_del, align 4
  %46 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %47 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @__GFP_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @alloc_page(i32 %52)
  %54 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %55 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %57 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %30
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %90

63:                                               ; preds = %30
  %64 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %65 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %68 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %72 = call i32 @pci_map_page(i32 %66, i32 %69, i32 0, i32 %70, i32 %71)
  %73 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %74 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %14, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %79 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @pci_dma_mapping_error(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* @EFAULT, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %90

86:                                               ; preds = %63
  %87 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %15, align 8
  %88 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %87, i32 0, i32 0
  %89 = call i32 @nouveau_fb_preinit(%struct.TYPE_4__* %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %83, %60, %28
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @nouveau_fb_create(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, %struct.nvc0_fb_priv**) #1

declare dso_local %struct.nouveau_object* @nv_object(%struct.nvc0_fb_priv*) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @nouveau_fb_preinit(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
