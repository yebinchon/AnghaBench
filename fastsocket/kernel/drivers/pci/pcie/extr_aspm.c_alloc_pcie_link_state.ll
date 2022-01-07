; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_alloc_pcie_link_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/extr_aspm.c_alloc_pcie_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_link_state = type { i32, %struct.pcie_link_state*, %struct.pcie_link_state*, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { %struct.pcie_link_state*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.pcie_link_state* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PCI_EXP_TYPE_DOWNSTREAM = common dso_local global i64 0, align 8
@link_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcie_link_state* (%struct.pci_dev*)* @alloc_pcie_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcie_link_state* @alloc_pcie_link_state(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pcie_link_state*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pcie_link_state*, align 8
  %5 = alloca %struct.pcie_link_state*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.pcie_link_state* @kzalloc(i32 40, i32 %6)
  store %struct.pcie_link_state* %7, %struct.pcie_link_state** %4, align 8
  %8 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %9 = icmp ne %struct.pcie_link_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.pcie_link_state* null, %struct.pcie_link_state** %2, align 8
  br label %77

11:                                               ; preds = %1
  %12 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %13 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %16 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %15, i32 0, i32 3
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %19 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %18, i32 0, i32 4
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %23 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %22, i32 0, i32 5
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i64 @pci_pcie_type(%struct.pci_dev* %24)
  %26 = load i64, i64* @PCI_EXP_TYPE_DOWNSTREAM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %11
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.pcie_link_state*, %struct.pcie_link_state** %36, align 8
  store %struct.pcie_link_state* %37, %struct.pcie_link_state** %5, align 8
  %38 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %39 = icmp ne %struct.pcie_link_state* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %42 = call i32 @kfree(%struct.pcie_link_state* %41)
  store %struct.pcie_link_state* null, %struct.pcie_link_state** %2, align 8
  br label %77

43:                                               ; preds = %28
  %44 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %45 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %46 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %45, i32 0, i32 2
  store %struct.pcie_link_state* %44, %struct.pcie_link_state** %46, align 8
  %47 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %48 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %47, i32 0, i32 4
  %49 = load %struct.pcie_link_state*, %struct.pcie_link_state** %5, align 8
  %50 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %49, i32 0, i32 3
  %51 = call i32 @list_add(i32* %48, i32* %50)
  br label %52

52:                                               ; preds = %43, %11
  %53 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %54 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %53, i32 0, i32 2
  %55 = load %struct.pcie_link_state*, %struct.pcie_link_state** %54, align 8
  %56 = icmp ne %struct.pcie_link_state* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %59 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %60 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %59, i32 0, i32 1
  store %struct.pcie_link_state* %58, %struct.pcie_link_state** %60, align 8
  br label %69

61:                                               ; preds = %52
  %62 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %63 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %62, i32 0, i32 2
  %64 = load %struct.pcie_link_state*, %struct.pcie_link_state** %63, align 8
  %65 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %64, i32 0, i32 1
  %66 = load %struct.pcie_link_state*, %struct.pcie_link_state** %65, align 8
  %67 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %68 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %67, i32 0, i32 1
  store %struct.pcie_link_state* %66, %struct.pcie_link_state** %68, align 8
  br label %69

69:                                               ; preds = %61, %57
  %70 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %71 = getelementptr inbounds %struct.pcie_link_state, %struct.pcie_link_state* %70, i32 0, i32 0
  %72 = call i32 @list_add(i32* %71, i32* @link_list)
  %73 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  store %struct.pcie_link_state* %73, %struct.pcie_link_state** %75, align 8
  %76 = load %struct.pcie_link_state*, %struct.pcie_link_state** %4, align 8
  store %struct.pcie_link_state* %76, %struct.pcie_link_state** %2, align 8
  br label %77

77:                                               ; preds = %69, %40, %10
  %78 = load %struct.pcie_link_state*, %struct.pcie_link_state** %2, align 8
  ret %struct.pcie_link_state* %78
}

declare dso_local %struct.pcie_link_state* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pcie_link_state*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
