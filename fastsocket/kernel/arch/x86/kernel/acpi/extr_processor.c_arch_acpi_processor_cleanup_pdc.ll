; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_processor.c_arch_acpi_processor_cleanup_pdc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/acpi/extr_processor.c_arch_acpi_processor_cleanup_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_acpi_processor_cleanup_pdc(%struct.acpi_processor* %0) #0 {
  %2 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %2, align 8
  %3 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %9 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @kfree(%struct.TYPE_4__* %15)
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call i32 @kfree(%struct.TYPE_4__* %21)
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @kfree(%struct.TYPE_4__* %25)
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %27, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %28, align 8
  br label %29

29:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
