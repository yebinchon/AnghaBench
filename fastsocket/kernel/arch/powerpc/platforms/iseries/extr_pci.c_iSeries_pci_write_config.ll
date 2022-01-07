; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_iSeries_pci_write_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_iSeries_pci_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@hv_cfg_write_func = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32)* @iSeries_pci_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iSeries_pci_write_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.device_node* @find_device_node(i32 %17, i32 %18)
  store %struct.device_node* %19, %struct.device_node** %12, align 8
  %20 = load %struct.device_node*, %struct.device_node** %12, align 8
  %21 = icmp eq %struct.device_node* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %23, i32* %6, align 4
  br label %48

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %24
  %30 = load i64*, i64** @hv_cfg_write_func, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.device_node*, %struct.device_node** %12, align 8
  %39 = call i32 @iseries_ds_addr(%struct.device_node* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @HvCall4(i64 %37, i32 %39, i32 %40, i32 %41, i32 0)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %46, i32* %6, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %45, %27, %22
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.device_node* @find_device_node(i32, i32) #1

declare dso_local i64 @HvCall4(i64, i32, i32, i32, i32) #1

declare dso_local i32 @iseries_ds_addr(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
