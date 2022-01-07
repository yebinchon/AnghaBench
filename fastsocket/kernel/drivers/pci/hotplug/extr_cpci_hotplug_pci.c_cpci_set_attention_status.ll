; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_set_attention_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpci_hotplug_pci.c_cpci_set_attention_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32 }

@PCI_CAP_ID_CHSWP = common dso_local global i32 0, align 4
@HS_CSR_LOO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpci_set_attention_status(%struct.slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.slot*, %struct.slot** %4, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.slot*, %struct.slot** %4, align 8
  %12 = getelementptr inbounds %struct.slot, %struct.slot* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PCI_CAP_ID_CHSWP, align 4
  %15 = call i32 @pci_bus_find_capability(i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.slot*, %struct.slot** %4, align 8
  %21 = getelementptr inbounds %struct.slot, %struct.slot* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.slot*, %struct.slot** %4, align 8
  %24 = getelementptr inbounds %struct.slot, %struct.slot* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i64 @pci_bus_read_config_word(i32 %22, i32 %25, i32 %27, i32* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %57

31:                                               ; preds = %19
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @HS_CSR_LOO, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %31
  %39 = load i32, i32* @HS_CSR_LOO, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.slot*, %struct.slot** %4, align 8
  %45 = getelementptr inbounds %struct.slot, %struct.slot* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.slot*, %struct.slot** %4, align 8
  %48 = getelementptr inbounds %struct.slot, %struct.slot* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 2
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @pci_bus_write_config_word(i32 %46, i32 %49, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %57

56:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %30, %18
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @pci_bus_find_capability(i32, i32, i32) #1

declare dso_local i64 @pci_bus_read_config_word(i32, i32, i32, i32*) #1

declare dso_local i64 @pci_bus_write_config_word(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
