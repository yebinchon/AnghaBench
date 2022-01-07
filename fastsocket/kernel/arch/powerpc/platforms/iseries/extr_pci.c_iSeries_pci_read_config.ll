; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_iSeries_pci_read_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_iSeries_pci_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.device_node = type { i32 }
%struct.HvCallPci_LoadReturn = type { i64, i32 }

@PCIBIOS_DEVICE_NOT_FOUND = common dso_local global i32 0, align 4
@PCIBIOS_BAD_REGISTER_NUMBER = common dso_local global i32 0, align 4
@hv_cfg_read_func = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @iSeries_pci_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iSeries_pci_read_config(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.HvCallPci_LoadReturn, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
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
  br label %53

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %11, align 8
  store i32 -1, i32* %28, align 4
  %29 = load i32, i32* @PCIBIOS_BAD_REGISTER_NUMBER, align 4
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load i32*, i32** @hv_cfg_read_func, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = and i32 %33, 3
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.device_node*, %struct.device_node** %12, align 8
  %40 = call i32 @iseries_ds_addr(%struct.device_node* %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @HvCall3Ret16(i32 %38, %struct.HvCallPci_LoadReturn* %14, i32 %40, i32 %41, i32 0)
  %43 = getelementptr inbounds %struct.HvCallPci_LoadReturn, %struct.HvCallPci_LoadReturn* %14, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32*, i32** %11, align 8
  store i32 -1, i32* %47, align 4
  %48 = load i32, i32* @PCIBIOS_DEVICE_NOT_FOUND, align 4
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.HvCallPci_LoadReturn, %struct.HvCallPci_LoadReturn* %14, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %46, %27, %22
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.device_node* @find_device_node(i32, i32) #1

declare dso_local i32 @HvCall3Ret16(i32, %struct.HvCallPci_LoadReturn*, i32, i32, i32) #1

declare dso_local i32 @iseries_ds_addr(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
