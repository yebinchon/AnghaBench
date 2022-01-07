; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_scan_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_probe.c_pci_scan_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }
%struct.pci_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_scan_slot(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %8, i32 %9)
  store %struct.pci_dev* %10, %struct.pci_dev** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %13, %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %34, i32 %37)
  store %struct.pci_dev* %38, %struct.pci_dev** %7, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %30

56:                                               ; preds = %30
  br label %57

57:                                               ; preds = %56, %24, %21
  %58 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %59 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %67 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pcie_aspm_init_link_state(i64 %68)
  br label %70

70:                                               ; preds = %65, %62, %57
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @pcie_aspm_init_link_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
