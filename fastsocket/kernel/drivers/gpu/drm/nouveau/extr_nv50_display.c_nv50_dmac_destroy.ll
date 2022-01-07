; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_dmac_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_nv50_dmac_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nv50_dmac = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, %struct.nv50_dmac*)* @nv50_dmac_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_dmac_destroy(%struct.nouveau_object* %0, %struct.nv50_dmac* %1) #0 {
  %3 = alloca %struct.nouveau_object*, align 8
  %4 = alloca %struct.nv50_dmac*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.nouveau_object* %0, %struct.nouveau_object** %3, align 8
  store %struct.nv50_dmac* %1, %struct.nv50_dmac** %4, align 8
  %6 = load %struct.nv50_dmac*, %struct.nv50_dmac** %4, align 8
  %7 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %12 = call %struct.TYPE_2__* @nv_device(%struct.nouveau_object* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load %struct.nv50_dmac*, %struct.nv50_dmac** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.nv50_dmac*, %struct.nv50_dmac** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_free_consistent(%struct.pci_dev* %15, i32 %16, i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %10, %2
  %25 = load %struct.nouveau_object*, %struct.nouveau_object** %3, align 8
  %26 = load %struct.nv50_dmac*, %struct.nv50_dmac** %4, align 8
  %27 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %26, i32 0, i32 0
  %28 = call i32 @nv50_chan_destroy(%struct.nouveau_object* %25, i32* %27)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nouveau_object*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @nv50_chan_destroy(%struct.nouveau_object*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
