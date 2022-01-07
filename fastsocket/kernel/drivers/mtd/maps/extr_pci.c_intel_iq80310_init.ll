; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pci.c_intel_iq80310_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_pci.c_intel_iq80310_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.map_pci_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@mtd_pci_read8 = common dso_local global i32 0, align 4
@mtd_pci_write8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.map_pci_info*)* @intel_iq80310_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_iq80310_init(%struct.pci_dev* %0, %struct.map_pci_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.map_pci_info*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.map_pci_info* %1, %struct.map_pci_info** %5, align 8
  %7 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %8 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @mtd_pci_read8, align 4
  %11 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %12 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @mtd_pci_write8, align 4
  %15 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %16 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %19 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 8388608, i32* %20, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_resource_start(%struct.pci_dev* %21, i32 0)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_resource_len(%struct.pci_dev* %23, i32 0)
  %25 = call i32 @ioremap_nocache(i32 %22, i32 %24)
  %26 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %27 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %29 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_read_config_dword(%struct.pci_dev* %36, i32 68, i32* %6)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = call i32 @pci_write_config_dword(%struct.pci_dev* %38, i32 68, i32 0)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.map_pci_info*, %struct.map_pci_info** %5, align 8
  %42 = getelementptr inbounds %struct.map_pci_info, %struct.map_pci_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
