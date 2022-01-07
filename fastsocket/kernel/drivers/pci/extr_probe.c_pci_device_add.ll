; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_device_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32 }
%struct.pci_bus = type { i32 }

@pci_release_dev = common dso_local global i32 0, align 4
@pci_fixup_header = common dso_local global i32 0, align 4
@pci_bus_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_device_add(%struct.pci_dev* %0, %struct.pci_bus* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 2
  %7 = call i32 @device_initialize(%struct.TYPE_2__* %6)
  %8 = load i32, i32* @pci_release_dev, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32 %8, i32* %11, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = call i32 @pci_dev_get(%struct.pci_dev* %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32* %15, i32** %18, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* %20, i32** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = call i32 @pci_set_dma_max_seg_size(%struct.pci_dev* %27, i32 65536)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_set_dma_seg_boundary(%struct.pci_dev* %29, i32 -1)
  %31 = load i32, i32* @pci_fixup_header, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_fixup_device(i32 %31, %struct.pci_dev* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = call i32 @pci_reassigndev_resource_alignment(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_init_capabilities(%struct.pci_dev* %38)
  %40 = call i32 @down_write(i32* @pci_bus_sem)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 1
  %43 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %44 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %43, i32 0, i32 0
  %45 = call i32 @list_add_tail(i32* %42, i32* %44)
  %46 = call i32 @up_write(i32* @pci_bus_sem)
  ret void
}

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_max_seg_size(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_seg_boundary(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_fixup_device(i32, %struct.pci_dev*) #1

declare dso_local i32 @pci_reassigndev_resource_alignment(%struct.pci_dev*) #1

declare dso_local i32 @pci_init_capabilities(%struct.pci_dev*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
