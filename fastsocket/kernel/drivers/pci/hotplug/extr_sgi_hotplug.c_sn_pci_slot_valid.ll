; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_pci_slot_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_pci_slot_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.pcibus_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@L1_BRICKTYPE_IX = common dso_local global i64 0, align 8
@L1_BRICKTYPE_IA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @sn_pci_slot_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_pci_slot_valid(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcibus_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %11 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.pci_bus* %10)
  store %struct.pcibus_info* %11, %struct.pcibus_info** %6, align 8
  %12 = load %struct.pcibus_info*, %struct.pcibus_info** %6, align 8
  %13 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %24 = call i64 @sn_ioboard_to_pci_bus(%struct.pci_bus* %23)
  store i64 %24, i64* %9, align 8
  %25 = load %struct.pcibus_info*, %struct.pcibus_info** %6, align 8
  %26 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %30 = call i32 @pci_domain_nr(%struct.pci_bus* %29)
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @L1_BRICKTYPE_IX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %22
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @L1_BRICKTYPE_IA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %22
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 1
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %46, %43, %40, %36
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.pci_bus*) #1

declare dso_local i64 @sn_ioboard_to_pci_bus(%struct.pci_bus*) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
