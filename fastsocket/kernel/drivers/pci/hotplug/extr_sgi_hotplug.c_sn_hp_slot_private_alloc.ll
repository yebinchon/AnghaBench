; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_hp_slot_private_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_sgi_hotplug.c_sn_hp_slot_private_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hotplug_slot = type { %struct.slot* }
%struct.slot = type { i32, i32, %struct.hotplug_slot*, i32, %struct.pci_bus* }
%struct.pci_bus = type { i32 }
%struct.pcibus_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%04x:%02x:%02x\00", align 1
@sn_hp_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hotplug_slot*, %struct.pci_bus*, i32, i8*)* @sn_hp_slot_private_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hp_slot_private_alloc(%struct.hotplug_slot* %0, %struct.pci_bus* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hotplug_slot*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.pcibus_info*, align 8
  %11 = alloca %struct.slot*, align 8
  store %struct.hotplug_slot* %0, %struct.hotplug_slot** %6, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %13 = call %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.pci_bus* %12)
  store %struct.pcibus_info* %13, %struct.pcibus_info** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.slot* @kzalloc(i32 32, i32 %14)
  store %struct.slot* %15, %struct.slot** %11, align 8
  %16 = load %struct.slot*, %struct.slot** %11, align 8
  %17 = icmp ne %struct.slot* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.slot*, %struct.slot** %11, align 8
  %23 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %24 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %23, i32 0, i32 0
  store %struct.slot* %22, %struct.slot** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.slot*, %struct.slot** %11, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = load %struct.slot*, %struct.slot** %11, align 8
  %30 = getelementptr inbounds %struct.slot, %struct.slot* %29, i32 0, i32 4
  store %struct.pci_bus* %28, %struct.pci_bus** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %33 = call i32 @pci_domain_nr(%struct.pci_bus* %32)
  %34 = load %struct.pcibus_info*, %struct.pcibus_info** %10, align 8
  %35 = getelementptr inbounds %struct.pcibus_info, %struct.pcibus_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38, i32 %40)
  %42 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %43 = load %struct.slot*, %struct.slot** %11, align 8
  %44 = getelementptr inbounds %struct.slot, %struct.slot* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sn_generate_path(%struct.pci_bus* %42, i32 %45)
  %47 = load %struct.hotplug_slot*, %struct.hotplug_slot** %6, align 8
  %48 = load %struct.slot*, %struct.slot** %11, align 8
  %49 = getelementptr inbounds %struct.slot, %struct.slot* %48, i32 0, i32 2
  store %struct.hotplug_slot* %47, %struct.hotplug_slot** %49, align 8
  %50 = load %struct.slot*, %struct.slot** %11, align 8
  %51 = getelementptr inbounds %struct.slot, %struct.slot* %50, i32 0, i32 1
  %52 = call i32 @list_add(i32* %51, i32* @sn_hp_list)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %21, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.pcibus_info* @SN_PCIBUS_BUSSOFT_INFO(%struct.pci_bus*) #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @sn_generate_path(%struct.pci_bus*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
