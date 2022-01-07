; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_resource.c_arch_remove_reservations.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_resource.c_arch_remove_reservations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@BIOS_END = common dso_local global i64 0, align 8
@BIOS_ROM_BASE = common dso_local global i32 0, align 4
@BIOS_ROM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_remove_reservations(%struct.resource* %0) #0 {
  %2 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %2, align 8
  %3 = load %struct.resource*, %struct.resource** %2, align 8
  %4 = getelementptr inbounds %struct.resource, %struct.resource* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @IORESOURCE_MEM, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.resource*, %struct.resource** %2, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BIOS_END, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i64, i64* @BIOS_END, align 8
  %17 = load %struct.resource*, %struct.resource** %2, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.resource*, %struct.resource** %2, align 8
  %21 = load i32, i32* @BIOS_ROM_BASE, align 4
  %22 = load i32, i32* @BIOS_ROM_END, align 4
  %23 = call i32 @resource_clip(%struct.resource* %20, i32 %21, i32 %22)
  %24 = load %struct.resource*, %struct.resource** %2, align 8
  %25 = call i32 @remove_e820_regions(%struct.resource* %24)
  br label %26

26:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @resource_clip(%struct.resource*, i32, i32) #1

declare dso_local i32 @remove_e820_regions(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
