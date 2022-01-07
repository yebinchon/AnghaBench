; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv1a.c_nv1a_fb_vram_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/fb/extr_nv1a.c_nv1a_fb_vram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_fb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"no bridge device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NV_MEM_TYPE_STOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_fb*)* @nv1a_fb_vram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv1a_fb_vram_init(%struct.nouveau_fb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_fb*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nouveau_fb* %0, %struct.nouveau_fb** %3, align 8
  %7 = call i32 @PCI_DEVFN(i32 0, i32 1)
  %8 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = icmp ne %struct.pci_dev* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %13 = call i32 @nv_fatal(%struct.nouveau_fb* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %18 = call %struct.TYPE_4__* @nv_device(%struct.nouveau_fb* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 26
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 124, i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 6
  %27 = and i32 %26, 31
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %36

29:                                               ; preds = %16
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i32 132, i32* %5)
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 127
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %29, %22
  %37 = load i32, i32* @NV_MEM_TYPE_STOLEN, align 4
  %38 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %39 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 1024
  %43 = mul nsw i32 %42, 1024
  %44 = load %struct.nouveau_fb*, %struct.nouveau_fb** %3, align 8
  %45 = getelementptr inbounds %struct.nouveau_fb, %struct.nouveau_fb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %36, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @nv_fatal(%struct.nouveau_fb*, i8*) #1

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nouveau_fb*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
