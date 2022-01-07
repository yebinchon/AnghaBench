; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_setup_ioapic_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c_setup_ioapic_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.IO_APIC_route_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.intel_iommu = type { i32 }
%struct.irte = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.IR_IO_APIC_route_entry = type { i32, i32, i32, i32, i64 }

@intr_remapping_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"No mapping iommu for ioapic %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to allocate IRTE for ioapic %d\0A\00", align 1
@apic = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_ioapic_entry(i32 %0, i32 %1, %struct.IO_APIC_route_entry* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.IO_APIC_route_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.intel_iommu*, align 8
  %18 = alloca %struct.irte, align 8
  %19 = alloca %struct.IR_IO_APIC_route_entry*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.IO_APIC_route_entry* %2, %struct.IO_APIC_route_entry** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %22 = bitcast %struct.IO_APIC_route_entry* %21 to %struct.irte*
  %23 = call i32 @memset(%struct.irte* %22, i32 0, i32 56)
  %24 = load i64, i64* @intr_remapping_enabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.intel_iommu* @map_ioapic_to_ir(i32 %27)
  store %struct.intel_iommu* %28, %struct.intel_iommu** %17, align 8
  %29 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %30 = bitcast %struct.IO_APIC_route_entry* %29 to %struct.IR_IO_APIC_route_entry*
  store %struct.IR_IO_APIC_route_entry* %30, %struct.IR_IO_APIC_route_entry** %19, align 8
  %31 = load %struct.intel_iommu*, %struct.intel_iommu** %17, align 8
  %32 = icmp ne %struct.intel_iommu* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.intel_iommu*, %struct.intel_iommu** %17, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @alloc_irte(%struct.intel_iommu* %37, i32 %38, i32 1)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = call i32 @memset(%struct.irte* %18, i32 0, i32 56)
  %47 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 11
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 10
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 9
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @IRTE_DEST(i32 %59)
  %61 = getelementptr inbounds %struct.irte, %struct.irte* %18, i32 0, i32 8
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @set_ioapic_sid(%struct.irte* %18, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @modify_irte(i32 %64, %struct.irte* %18)
  %66 = load i32, i32* %20, align 4
  %67 = ashr i32 %66, 15
  %68 = and i32 %67, 1
  %69 = load %struct.IR_IO_APIC_route_entry*, %struct.IR_IO_APIC_route_entry** %19, align 8
  %70 = getelementptr inbounds %struct.IR_IO_APIC_route_entry, %struct.IR_IO_APIC_route_entry* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.IR_IO_APIC_route_entry*, %struct.IR_IO_APIC_route_entry** %19, align 8
  %72 = getelementptr inbounds %struct.IR_IO_APIC_route_entry, %struct.IR_IO_APIC_route_entry* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.IR_IO_APIC_route_entry*, %struct.IR_IO_APIC_route_entry** %19, align 8
  %74 = getelementptr inbounds %struct.IR_IO_APIC_route_entry, %struct.IR_IO_APIC_route_entry* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %20, align 4
  %76 = and i32 %75, 32767
  %77 = load %struct.IR_IO_APIC_route_entry*, %struct.IR_IO_APIC_route_entry** %19, align 8
  %78 = getelementptr inbounds %struct.IR_IO_APIC_route_entry, %struct.IR_IO_APIC_route_entry* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.IR_IO_APIC_route_entry*, %struct.IR_IO_APIC_route_entry** %19, align 8
  %81 = getelementptr inbounds %struct.IR_IO_APIC_route_entry, %struct.IR_IO_APIC_route_entry* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %99

82:                                               ; preds = %8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %87 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %92 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %95 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %98 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %82, %45
  %100 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %101 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %100, i32 0, i32 3
  store i32 0, i32* %101, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %104 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %107 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %99
  %111 = load %struct.IO_APIC_route_entry*, %struct.IO_APIC_route_entry** %11, align 8
  %112 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %99
  ret i32 0
}

declare dso_local i32 @memset(%struct.irte*, i32, i32) #1

declare dso_local %struct.intel_iommu* @map_ioapic_to_ir(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @alloc_irte(%struct.intel_iommu*, i32, i32) #1

declare dso_local i32 @IRTE_DEST(i32) #1

declare dso_local i32 @set_ioapic_sid(%struct.irte*, i32) #1

declare dso_local i32 @modify_irte(i32, %struct.irte*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
