; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_dtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nvc0.c_nvc0_fb_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nvc0_fb_priv = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*)* @nvc0_fb_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_fb_dtor(%struct.nouveau_object* %0) #0 {
  %2 = alloca %struct.nouveau_object*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca %struct.nvc0_fb_priv*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %2, align 8
  %5 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %6 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %5)
  store %struct.nouveau_device* %6, %struct.nouveau_device** %3, align 8
  %7 = load %struct.nouveau_object*, %struct.nouveau_object** %2, align 8
  %8 = bitcast %struct.nouveau_object* %7 to i8*
  %9 = bitcast i8* %8 to %struct.nvc0_fb_priv*
  store %struct.nvc0_fb_priv* %9, %struct.nvc0_fb_priv** %4, align 8
  %10 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %4, align 8
  %11 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %16 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %4, align 8
  %19 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %23 = call i32 @pci_unmap_page(i32 %17, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %4, align 8
  %25 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @__free_page(i64 %26)
  br label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.nvc0_fb_priv*, %struct.nvc0_fb_priv** %4, align 8
  %30 = getelementptr inbounds %struct.nvc0_fb_priv, %struct.nvc0_fb_priv* %29, i32 0, i32 0
  %31 = call i32 @nouveau_fb_destroy(i32* %30)
  ret void
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @nouveau_fb_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
