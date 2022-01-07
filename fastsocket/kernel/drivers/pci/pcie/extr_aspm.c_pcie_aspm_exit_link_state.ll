; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_exit_link_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_pcie_aspm_exit_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.pcie_link_state = type { i32, i32, %struct.pcie_link_state*, %struct.pcie_link_state* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@aspm_disabled = common dso_local global i64 0, align 8
@aspm_clear_state = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@pci_bus_sem = common dso_local global i32 0, align 4
@aspm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcie_aspm_exit_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcie_link_state*, align 8
  %5 = alloca %struct.pcie_link_state*, align 8
  %6 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %3, align 8
  %12 = load i64, i64* @aspm_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @aspm_clear_state, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14, %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @pci_is_pcie(%struct.pci_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.pcie_link_state*, %struct.pcie_link_state** %26, align 8
  %28 = icmp ne %struct.pcie_link_state* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %21, %17, %14
  br label %84

30:                                               ; preds = %24
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call i64 @pci_pcie_type(%struct.pci_dev* %31)
  %33 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i64 @pci_pcie_type(%struct.pci_dev* %36)
  %38 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %84

41:                                               ; preds = %35, %30
  %42 = call i32 @down_read(i32* @pci_bus_sem)
  %43 = call i32 @mutex_lock(i32* @aspm_lock)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 2
  %46 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @list_is_last(i32* %45, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  br label %81

53:                                               ; preds = %41
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = load %struct.pcie_link_state*, %struct.pcie_link_state** %55, align 8
  store %struct.pcie_link_state* %56, %struct.pcie_link_state** %4, align 8
  %57 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %58 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %57, i32 0, i32 3
  %59 = load %struct.pcie_link_state*, %struct.pcie_link_state** %58, align 8
  store %struct.pcie_link_state* %59, %struct.pcie_link_state** %5, align 8
  %60 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %61 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %60, i32 0, i32 2
  %62 = load %struct.pcie_link_state*, %struct.pcie_link_state** %61, align 8
  store %struct.pcie_link_state* %62, %struct.pcie_link_state** %6, align 8
  %63 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %64 = call i32 @pcie_config_aspm_link(%struct.pcie_link_state* %63, i32 0)
  %65 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %66 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %65, i32 0, i32 1
  %67 = call i32 @list_del(i32* %66)
  %68 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %69 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %68, i32 0, i32 0
  %70 = call i32 @list_del(i32* %69)
  %71 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %72 = call i32 @free_link_state(%struct.pcie_link_state* %71)
  %73 = load %struct.pcie_link_state*, %struct.pcie_link_state** %6, align 8
  %74 = icmp ne %struct.pcie_link_state* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %53
  %76 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %77 = call i32 @pcie_update_aspm_capable(%struct.pcie_link_state* %76)
  %78 = load %struct.pcie_link_state*, %struct.pcie_link_state** %6, align 8
  %79 = call i32 @pcie_config_aspm_path(%struct.pcie_link_state* %78)
  br label %80

80:                                               ; preds = %75, %53
  br label %81

81:                                               ; preds = %80, %52
  %82 = call i32 @mutex_unlock(i32* @aspm_lock)
  %83 = call i32 @up_read(i32* @pci_bus_sem)
  br label %84

84:                                               ; preds = %81, %40, %29
  ret void
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local i32 @pcie_config_aspm_link(%struct.pcie_link_state*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @free_link_state(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_update_aspm_capable(%struct.pcie_link_state*) #1

declare dso_local i32 @pcie_config_aspm_path(%struct.pcie_link_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
