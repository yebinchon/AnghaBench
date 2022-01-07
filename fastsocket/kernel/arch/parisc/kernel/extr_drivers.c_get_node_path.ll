; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_get_node_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_drivers.c_get_node_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device*, i32* }
%struct.hardware_path = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@root = common dso_local global %struct.device zeroinitializer, align 8
@parisc_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.hardware_path*)* @get_node_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_node_path(%struct.device* %0, %struct.hardware_path* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hardware_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.hardware_path* %1, %struct.hardware_path** %4, align 8
  store i32 5, i32* %5, align 4
  %8 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %9 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %8, i32 0, i32 0
  %10 = call i32 @memset(i32** %9, i32 -1, i32 6)
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i64 @is_pci_dev(%struct.device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.TYPE_3__* @to_pci_dev(%struct.device* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @PCI_FUNC(i32 %19)
  %21 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %22 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @PCI_SLOT(i32 %23)
  %25 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %26 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.device*, %struct.device** %33, align 8
  store %struct.device* %34, %struct.device** %3, align 8
  br label %35

35:                                               ; preds = %14, %2
  br label %36

36:                                               ; preds = %79, %35
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = icmp ne %struct.device* %37, @root
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i64 @is_pci_dev(%struct.device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = call %struct.TYPE_3__* @to_pci_dev(%struct.device* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @PCI_SLOT(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @PCI_FUNC(i32 %50)
  %52 = shl i32 %51, 5
  %53 = or i32 %49, %52
  %54 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %55 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %53, i32* %60, align 4
  br label %79

61:                                               ; preds = %39
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, @parisc_bus_type
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = call %struct.TYPE_4__* @to_parisc_device(%struct.device* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hardware_path*, %struct.hardware_path** %4, align 8
  %72 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  br label %78

78:                                               ; preds = %66, %61
  br label %79

79:                                               ; preds = %78, %43
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 0
  %82 = load %struct.device*, %struct.device** %81, align 8
  store %struct.device* %82, %struct.device** %3, align 8
  br label %36

83:                                               ; preds = %36
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i64 @is_pci_dev(%struct.device*) #1

declare dso_local %struct.TYPE_3__* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.TYPE_4__* @to_parisc_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
