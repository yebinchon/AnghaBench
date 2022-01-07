; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_led_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_led_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32, i32 }

@PCI_CAP_ID_CHSWP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HS_CSR_LOO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not set LOO for slot %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_led_on(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %3, align 8
  %6 = load %struct.slot*, %struct.slot** %3, align 8
  %7 = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.slot*, %struct.slot** %3, align 8
  %10 = getelementptr inbounds %struct.slot, %struct.slot* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCI_CAP_ID_CHSWP, align 4
  %13 = call i32 @pci_bus_find_capability(i32 %8, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %64

19:                                               ; preds = %1
  %20 = load %struct.slot*, %struct.slot** %3, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.slot*, %struct.slot** %3, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i64 @pci_bus_read_config_word(i32 %22, i32 %25, i32 %27, i32* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %64

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @HS_CSR_LOO, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @HS_CSR_LOO, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load i32, i32* @HS_CSR_LOO, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.slot*, %struct.slot** %3, align 8
  %44 = getelementptr inbounds %struct.slot, %struct.slot* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.slot*, %struct.slot** %3, align 8
  %47 = getelementptr inbounds %struct.slot, %struct.slot* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @pci_bus_write_config_word(i32 %45, i32 %48, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %39
  %55 = load %struct.slot*, %struct.slot** %3, align 8
  %56 = getelementptr inbounds %struct.slot, %struct.slot* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hotplug_slot_name(i32 %57)
  %59 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %64

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %33
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %54, %30, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @pci_bus_find_capability(i32, i32, i32) #1

declare dso_local i64 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

declare dso_local i64 @pci_bus_write_config_word(i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @hotplug_slot_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
