; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c___pci_disable_link_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c___pci_disable_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_2__* }
%struct.pcie_link_state = type { i64, i32 }
%struct.TYPE_2__ = type { %struct.pci_dev* }

@aspm_disabled = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L0S = common dso_local global i32 0, align 4
@ASPM_STATE_L0S = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_L1 = common dso_local global i32 0, align 4
@ASPM_STATE_L1 = common dso_local global i32 0, align 4
@PCIE_LINK_STATE_CLKPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32)* @__pci_disable_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pci_disable_link_state(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %7, align 8
  %14 = load i64, i64* @aspm_disabled, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_is_pcie(%struct.pci_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %3
  br label %93

21:                                               ; preds = %16
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call i64 @pci_pcie_type(%struct.pci_dev* %22)
  %24 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = call i64 @pci_pcie_type(%struct.pci_dev* %27)
  %29 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %7, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %35 = icmp ne %struct.pci_dev* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = load %struct.pcie_link_state*, %struct.pcie_link_state** %38, align 8
  %40 = icmp ne %struct.pcie_link_state* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %33
  br label %93

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @down_read(i32* @pci_bus_sem)
  br label %47

47:                                               ; preds = %45, %42
  %48 = call i32 @mutex_lock(i32* @aspm_lock)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load %struct.pcie_link_state*, %struct.pcie_link_state** %50, align 8
  store %struct.pcie_link_state* %51, %struct.pcie_link_state** %8, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PCIE_LINK_STATE_L0S, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load i32, i32* @ASPM_STATE_L0S, align 4
  %58 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %59 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %47
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PCIE_LINK_STATE_L1, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* @ASPM_STATE_L1, align 4
  %69 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %70 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %75 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %76 = call i32 @policy_to_aspm_state(%struct.pcie_link_state* %75)
  %77 = call i32 @pcie_config_aspm_link(%struct.pcie_link_state* %74, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @PCIE_LINK_STATE_CLKPM, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %84 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.pcie_link_state*, %struct.pcie_link_state** %8, align 8
  %86 = call i32 @pcie_set_clkpm(%struct.pcie_link_state* %85, i32 0)
  br label %87

87:                                               ; preds = %82, %73
  %88 = call i32 @mutex_unlock(i32* @aspm_lock)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = call i32 @up_read(i32* @pci_bus_sem)
  br label %93

93:                                               ; preds = %20, %41, %91, %87
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcie_config_aspm_link(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @policy_to_aspm_state(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_set_clkpm(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
