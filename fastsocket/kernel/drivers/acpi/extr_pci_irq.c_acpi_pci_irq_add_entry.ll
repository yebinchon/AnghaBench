; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.acpi_pci_routing_table = type { i32, i64*, i32, i64 }
%struct.acpi_prt_entry = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"      %04x:%02x:%02x[%c] -> %s[%d]\0A\00", align 1
@acpi_prt_lock = common dso_local global i32 0, align 4
@acpi_prt_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_bus*, %struct.acpi_pci_routing_table*)* @acpi_pci_irq_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_irq_add_entry(i32 %0, %struct.pci_bus* %1, %struct.acpi_pci_routing_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.acpi_pci_routing_table*, align 8
  %8 = alloca %struct.acpi_prt_entry*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.pci_bus* %1, %struct.pci_bus** %6, align 8
  store %struct.acpi_pci_routing_table* %2, %struct.acpi_pci_routing_table** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acpi_prt_entry* @kzalloc(i32 32, i32 %9)
  store %struct.acpi_prt_entry* %10, %struct.acpi_prt_entry** %8, align 8
  %11 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %12 = icmp ne %struct.acpi_prt_entry* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %94

16:                                               ; preds = %3
  %17 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %18 = call i32 @pci_domain_nr(%struct.pci_bus* %17)
  %19 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %20 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %26 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %29 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 65535
  %33 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %37 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %41 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %43 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %44 = call i32 @do_prt_fixups(%struct.acpi_prt_entry* %42, %struct.acpi_pci_routing_table* %43)
  %45 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %46 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %49 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %16
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %59 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %62 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %61, i32 0, i32 4
  %63 = call i32 @acpi_get_handle(i32 %57, i64* %60, i32* %62)
  br label %64

64:                                               ; preds = %56, %16
  %65 = load i32, i32* @ACPI_DB_INFO, align 4
  %66 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %67 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %71 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %75 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %79 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @pin_name(i64 %80)
  %82 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %7, align 8
  %83 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %86 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %87)
  %89 = call i32 @spin_lock(i32* @acpi_prt_lock)
  %90 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %8, align 8
  %91 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %90, i32 0, i32 0
  %92 = call i32 @list_add_tail(i32* %91, i32* @acpi_prt_list)
  %93 = call i32 @spin_unlock(i32* @acpi_prt_lock)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %64, %13
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.acpi_prt_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local i32 @do_prt_fixups(%struct.acpi_prt_entry*, %struct.acpi_pci_routing_table*) #1

declare dso_local i32 @acpi_get_handle(i32, i64*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @pin_name(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
