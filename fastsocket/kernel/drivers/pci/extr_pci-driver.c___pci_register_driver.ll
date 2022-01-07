; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c___pci_register_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci-driver.c___pci_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_driver = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i8*, %struct.module*, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.module = type { i32 }

@pci_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_register_driver(%struct.pci_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca %struct.pci_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_driver* %0, %struct.pci_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %9 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %12 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 8
  %14 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %15 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i32* @pci_bus_type, i32** %16, align 8
  %17 = load %struct.module*, %struct.module** %5, align 8
  %18 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %19 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store %struct.module* %17, %struct.module** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %23 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %26 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %30 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %34 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %33, i32 0, i32 0
  %35 = call i32 @driver_register(%struct.TYPE_5__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %52

39:                                               ; preds = %3
  %40 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %41 = call i32 @pci_create_newid_file(%struct.pci_driver* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %39
  %46 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %47 = call i32 @pci_create_removeid_file(%struct.pci_driver* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %54

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %57, %51, %38
  %53 = load i32, i32* %7, align 4
  ret i32 %53

54:                                               ; preds = %50
  %55 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %56 = call i32 @pci_remove_newid_file(%struct.pci_driver* %55)
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %59 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %58, i32 0, i32 0
  %60 = call i32 @driver_unregister(%struct.TYPE_5__* %59)
  br label %52
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @driver_register(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_create_newid_file(%struct.pci_driver*) #1

declare dso_local i32 @pci_create_removeid_file(%struct.pci_driver*) #1

declare dso_local i32 @pci_remove_newid_file(%struct.pci_driver*) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
