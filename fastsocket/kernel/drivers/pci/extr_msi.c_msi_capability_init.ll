; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_msi_capability_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_msi.c_msi_capability_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.msi_desc = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i64, i64 }

@PCI_CAP_ID_MSI = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @msi_capability_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_capability_init(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msi_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %13 = call i32 @pci_find_capability(%struct.pci_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @msi_set_enable(%struct.pci_dev* %14, i32 %15, i32 0)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @msi_control_reg(i32 %18)
  %20 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i32 %19, i32* %9)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call %struct.msi_desc* @alloc_msi_entry(%struct.pci_dev* %21)
  store %struct.msi_desc* %22, %struct.msi_desc** %6, align 8
  %23 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %24 = icmp ne %struct.msi_desc* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %130

28:                                               ; preds = %2
  %29 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %30 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @is_64bit_address(i32 %32)
  %34 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %35 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %38 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @is_mask_bit_support(i32 %40)
  %42 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %43 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %49 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %53 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %57 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @msi_mask_reg(i32 %55, i32 %59)
  %61 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %62 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %64 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %28
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %71 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %74 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %73, i32 0, i32 2
  %75 = call i32 @pci_read_config_dword(%struct.pci_dev* %69, i32 %72, i32* %74)
  br label %76

76:                                               ; preds = %68, %28
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @msi_capable_mask(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @msi_mask_irq(%struct.msi_desc* %79, i32 %80, i32 %81)
  %83 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %84 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %83, i32 0, i32 1
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 2
  %87 = call i32 @list_add_tail(i32* %84, i32* %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @PCI_CAP_ID_MSI, align 4
  %91 = call i32 @arch_setup_msi_irqs(%struct.pci_dev* %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %76
  %95 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = xor i32 %97, -1
  %99 = call i32 @msi_mask_irq(%struct.msi_desc* %95, i32 %96, i32 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = call i32 @free_msi_irqs(%struct.pci_dev* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %130

103:                                              ; preds = %76
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i32 @populate_msi_sysfs(%struct.pci_dev* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, -1
  %113 = call i32 @msi_mask_irq(%struct.msi_desc* %109, i32 %110, i32 %112)
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @free_msi_irqs(%struct.pci_dev* %114)
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %3, align 4
  br label %130

117:                                              ; preds = %103
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = call i32 @pci_intx_for_msi(%struct.pci_dev* %118, i32 0)
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @msi_set_enable(%struct.pci_dev* %120, i32 %121, i32 1)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  store i32 1, i32* %124, align 4
  %125 = load %struct.msi_desc*, %struct.msi_desc** %6, align 8
  %126 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %117, %108, %94, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @msi_set_enable(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @msi_control_reg(i32) #1

declare dso_local %struct.msi_desc* @alloc_msi_entry(%struct.pci_dev*) #1

declare dso_local i32 @is_64bit_address(i32) #1

declare dso_local i64 @is_mask_bit_support(i32) #1

declare dso_local i32 @msi_mask_reg(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @msi_capable_mask(i32) #1

declare dso_local i32 @msi_mask_irq(%struct.msi_desc*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @arch_setup_msi_irqs(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @free_msi_irqs(%struct.pci_dev*) #1

declare dso_local i32 @populate_msi_sysfs(%struct.pci_dev*) #1

declare dso_local i32 @pci_intx_for_msi(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
