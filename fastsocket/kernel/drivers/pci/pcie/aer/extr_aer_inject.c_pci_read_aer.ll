; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aer_inject.c_pci_read_aer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aer_inject.c_pci_read_aer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.aer_error = type { i32 }
%struct.pci_ops = type { i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)* }
%struct.pci_bus.0 = type opaque

@inject_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32, i32*)* @pci_read_aer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_read_aer(%struct.pci_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.aer_error*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.pci_ops*, align 8
  %16 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i64, i64* %14, align 8
  %18 = call i32 @spin_lock_irqsave(i32* @inject_lock, i64 %17)
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %52

23:                                               ; preds = %5
  %24 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %25 = call i32 @pci_domain_nr(%struct.pci_bus* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %52

29:                                               ; preds = %23
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %32 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.aer_error* @__find_aer_error(i32 %30, i32 %33, i32 %34)
  store %struct.aer_error* %35, %struct.aer_error** %13, align 8
  %36 = load %struct.aer_error*, %struct.aer_error** %13, align 8
  %37 = icmp ne %struct.aer_error* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %52

39:                                               ; preds = %29
  %40 = load %struct.aer_error*, %struct.aer_error** %13, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32* @find_pci_config_dword(%struct.aer_error* %40, i32 %41, i32* null)
  store i32* %42, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %49)
  store i32 0, i32* %6, align 4
  br label %67

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %38, %28, %22
  %53 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %54 = call %struct.pci_ops* @__find_pci_bus_ops(%struct.pci_bus* %53)
  store %struct.pci_ops* %54, %struct.pci_ops** %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* @inject_lock, i64 %55)
  %57 = load %struct.pci_ops*, %struct.pci_ops** %15, align 8
  %58 = getelementptr inbounds %struct.pci_ops, %struct.pci_ops* %57, i32 0, i32 0
  %59 = load i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus.0*, i32, i32, i32, i32*)** %58, align 8
  %60 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %61 = bitcast %struct.pci_bus* %60 to %struct.pci_bus.0*
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 %59(%struct.pci_bus.0* %61, i32 %62, i32 %63, i32 %64, i32* %65)
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %52, %45
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.aer_error* @__find_aer_error(i32, i32, i32) #1

declare dso_local i32* @find_pci_config_dword(%struct.aer_error*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.pci_ops* @__find_pci_bus_ops(%struct.pci_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
