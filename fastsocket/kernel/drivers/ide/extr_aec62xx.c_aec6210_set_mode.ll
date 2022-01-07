; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_aec62xx.c_aec6210_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_aec62xx.c_aec6210_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.chipset_bus_clock_list_entry* }
%struct.chipset_bus_clock_list_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @aec6210_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aec6210_set_mode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.ide_host*, align 8
  %8 = alloca %struct.chipset_bus_clock_list_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %5, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %6, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %23)
  store %struct.ide_host* %24, %struct.ide_host** %7, align 8
  %25 = load %struct.ide_host*, %struct.ide_host** %7, align 8
  %26 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %25, i32 0, i32 0
  %27 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %26, align 8
  store %struct.chipset_bus_clock_list_entry* %27, %struct.chipset_bus_clock_list_entry** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load i64, i64* %15, align 8
  %29 = call i32 @local_irq_save(i64 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 2, %33
  %35 = or i32 64, %34
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %30, i32 %35, i32* %9)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %8, align 8
  %39 = call i32 @pci_bus_clock_list(i32 %37, %struct.chipset_bus_clock_list_entry* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = and i32 %40, 240
  %42 = shl i32 %41, 4
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 15
  %45 = or i32 %42, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 2, %49
  %51 = or i32 64, %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @pci_write_config_word(%struct.pci_dev* %46, i32 %51, i32 %52)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = call i32 @pci_read_config_byte(%struct.pci_dev* %54, i32 84, i32* %10)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 2, %58
  %60 = shl i32 0, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 2, %64
  %66 = shl i32 3, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %61, %67
  %69 = or i32 %60, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.chipset_bus_clock_list_entry*, %struct.chipset_bus_clock_list_entry** %8, align 8
  %72 = call i32 @pci_bus_clock_list_ultra(i32 %70, %struct.chipset_bus_clock_list_entry* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 2, %76
  %78 = shl i32 %73, %77
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 2, %82
  %84 = shl i32 3, %83
  %85 = xor i32 %84, -1
  %86 = and i32 %79, %85
  %87 = or i32 %78, %86
  store i32 %87, i32* %14, align 4
  %88 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @pci_write_config_byte(%struct.pci_dev* %88, i32 84, i32 %89)
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @local_irq_restore(i64 %91)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_bus_clock_list(i32, %struct.chipset_bus_clock_list_entry*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_bus_clock_list_ultra(i32, %struct.chipset_bus_clock_list_entry*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
