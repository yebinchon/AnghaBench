; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32*, i64, %struct.pci_dev*, %struct.net_device* }
%struct.pci_dev = type { i32, i32 }
%struct.net_device = type { i32 }

@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@igb_intr_msi = common dso_local global i32 0, align 4
@igb_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error %d getting interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_request_irq(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 4
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 3
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %18 = call i32 @igb_request_msix(%struct.igb_adapter* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %95

22:                                               ; preds = %16
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %24 = call i32 @igb_free_all_tx_resources(%struct.igb_adapter* %23)
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %26 = call i32 @igb_free_all_rx_resources(%struct.igb_adapter* %25)
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %28 = call i32 @igb_clear_interrupt_scheme(%struct.igb_adapter* %27)
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %30 = call i32 @igb_init_interrupt_scheme(%struct.igb_adapter* %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %95

34:                                               ; preds = %22
  %35 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %36 = call i32 @igb_setup_all_tx_resources(%struct.igb_adapter* %35)
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %38 = call i32 @igb_setup_all_rx_resources(%struct.igb_adapter* %37)
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = call i32 @igb_configure(%struct.igb_adapter* %39)
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @igb_assign_vector(i32 %46, i32 0)
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %41
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @igb_intr_msi, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %63 = call i32 @request_irq(i32 %57, i32 %58, i32 0, i32 %61, %struct.igb_adapter* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %54
  br label %95

67:                                               ; preds = %54
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %69 = call i32 @igb_reset_interrupt_capability(%struct.igb_adapter* %68)
  %70 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %67, %41
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @igb_intr, align 4
  %81 = load i32, i32* @IRQF_SHARED, align 4
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %86 = call i32 @request_irq(i32 %79, i32 %80, i32 %81, i32 %84, %struct.igb_adapter* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %76
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %76
  br label %95

95:                                               ; preds = %94, %66, %33, %21
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @igb_request_msix(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_clear_interrupt_scheme(%struct.igb_adapter*) #1

declare dso_local i32 @igb_init_interrupt_scheme(%struct.igb_adapter*, i32) #1

declare dso_local i32 @igb_setup_all_tx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_all_rx_resources(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure(%struct.igb_adapter*) #1

declare dso_local i32 @igb_assign_vector(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.igb_adapter*) #1

declare dso_local i32 @igb_reset_interrupt_capability(%struct.igb_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
