; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_reset_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_eeh_driver.c_eeh_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32, i64, %struct.device_node* }
%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node* }
%struct.pci_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, %struct.pci_bus*)* @eeh_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_reset_device(%struct.pci_dn* %0, %struct.pci_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dn*, align 8
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store %struct.pci_bus* %1, %struct.pci_bus** %5, align 8
  %10 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %14 = icmp ne %struct.pci_bus* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %17 = call i32 @pcibios_remove_pci_devices(%struct.pci_bus* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %20 = call i32 @rtas_set_slot_reset(%struct.pci_dn* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %18
  %26 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %26, i32 0, i32 2
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  store %struct.device_node* %28, %struct.device_node** %6, align 8
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @pcibios_find_pci_bus(%struct.device_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load %struct.device_node*, %struct.device_node** %6, align 8
  %34 = getelementptr inbounds %struct.device_node, %struct.device_node* %33, i32 0, i32 2
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %35)
  %37 = icmp ne %struct.pci_dn* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = getelementptr inbounds %struct.device_node, %struct.device_node* %39, i32 0, i32 2
  %41 = load %struct.device_node*, %struct.device_node** %40, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 1
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  store %struct.device_node* %43, %struct.device_node** %6, align 8
  br label %44

44:                                               ; preds = %38, %32, %25
  br label %45

45:                                               ; preds = %63, %44
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = icmp ne %struct.device_node* %46, null
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %49)
  store %struct.pci_dn* %50, %struct.pci_dn** %9, align 8
  %51 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %55 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %60 = call i32 @rtas_configure_bridge(%struct.pci_dn* %59)
  %61 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %62 = call i32 @eeh_restore_bars(%struct.pci_dn* %61)
  br label %63

63:                                               ; preds = %58, %48
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load %struct.device_node*, %struct.device_node** %65, align 8
  store %struct.device_node* %66, %struct.device_node** %6, align 8
  br label %45

67:                                               ; preds = %45
  %68 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %69 = icmp ne %struct.pci_bus* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i32 @ssleep(i32 5)
  %72 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %73 = call i32 @pcibios_add_pci_devices(%struct.pci_bus* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @pcibios_remove_pci_devices(%struct.pci_bus*) #1

declare dso_local i32 @rtas_set_slot_reset(%struct.pci_dn*) #1

declare dso_local i32 @pcibios_find_pci_bus(%struct.device_node*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @rtas_configure_bridge(%struct.pci_dn*) #1

declare dso_local i32 @eeh_restore_bars(%struct.pci_dn*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @pcibios_add_pci_devices(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
