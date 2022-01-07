; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_init_link_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_init_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pcie_link_state = type { i32 }

@aspm_support_enabled = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@aspm_disabled = common dso_local global i64 0, align 8
@aspm_clear_state = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4
@aspm_policy = common dso_local global i64 0, align 8
@POLICY_POWERSAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_init_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pcie_link_state*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pcie_aspm_sanity_check(%struct.pci_dev* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @aspm_support_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @pci_is_pcie(%struct.pci_dev* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %14
  br label %96

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = call i64 @pci_pcie_type(%struct.pci_dev* %25)
  %27 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i64 @pci_pcie_type(%struct.pci_dev* %30)
  %32 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %96

35:                                               ; preds = %29, %24
  %36 = load i64, i64* @aspm_disabled, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i64, i64* @aspm_clear_state, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %96

42:                                               ; preds = %38, %35
  %43 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %44 = call i64 @pci_pcie_type(%struct.pci_dev* %43)
  %45 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %96

55:                                               ; preds = %47, %42
  %56 = call i32 @down_read(i32* @pci_bus_sem)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i64 @list_empty(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %94

64:                                               ; preds = %55
  %65 = call i32 @mutex_lock(i32* @aspm_lock)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = call %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev* %66)
  store %struct.pcie_link_state* %67, %struct.pcie_link_state** %3, align 8
  %68 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %69 = icmp ne %struct.pcie_link_state* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %92

71:                                               ; preds = %64
  %72 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @pcie_aspm_cap_init(%struct.pcie_link_state* %72, i32 %73)
  %75 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pcie_clkpm_cap_init(%struct.pcie_link_state* %75, i32 %76)
  %78 = load i64, i64* @aspm_policy, align 8
  %79 = load i64, i64* @POLICY_POWERSAVE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i64, i64* @aspm_clear_state, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81, %71
  %85 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %86 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %85)
  %87 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %88 = load %struct.pcie_link_state*, %struct.pcie_link_state** %3, align 8
  %89 = call i32 @policy_to_clkpm_state(%struct.pcie_link_state* %88)
  %90 = call i32 @pcie_set_clkpm(%struct.pcie_link_state* %87, i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  br label %92

92:                                               ; preds = %91, %70
  %93 = call i32 @mutex_unlock(i32* @aspm_lock)
  br label %94

94:                                               ; preds = %92, %63
  %95 = call i32 @up_read(i32* @pci_bus_sem)
  br label %96

96:                                               ; preds = %94, %54, %41, %34, %23, %13
  ret void
}

declare dso_local i32 @pcie_aspm_sanity_check(%struct.pci_dev*) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev*) #1

declare dso_local i32 @pcie_aspm_cap_init(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @pcie_clkpm_cap_init(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @pcie_config_aspm_path(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_set_clkpm(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @policy_to_clkpm_state(%struct.pcie_link_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
