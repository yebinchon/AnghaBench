; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_get_pdn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_get_pdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32 }
%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"rtas_msi: No OF device node\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"rtas_msi: No PCI DN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dn* (%struct.pci_dev*)* @get_pdn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dn* @get_pdn(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dn*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pci_dn*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %6)
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.pci_dn* null, %struct.pci_dn** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %15)
  store %struct.pci_dn* %16, %struct.pci_dn** %5, align 8
  %17 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %18 = icmp ne %struct.pci_dn* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.pci_dn* null, %struct.pci_dn** %2, align 8
  br label %25

23:                                               ; preds = %14
  %24 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  store %struct.pci_dn* %24, %struct.pci_dn** %2, align 8
  br label %25

25:                                               ; preds = %23, %19, %10
  %26 = load %struct.pci_dn*, %struct.pci_dn** %2, align 8
  ret %struct.pci_dn* %26
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
