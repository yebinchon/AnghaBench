; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@acpi_root = common dso_local global %struct.acpi_device* null, align 8
@AE_NULL_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device* (i32*)* @acpi_bus_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device* @acpi_bus_get_parent(i32* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** @acpi_root, align 8
  store %struct.acpi_device* %10, %struct.acpi_device** %2, align 8
  br label %34

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @acpi_get_parent(i32* %13, i32** %3)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @AE_NULL_ENTRY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.acpi_device* null, %struct.acpi_device** %2, align 8
  br label %34

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ACPI_FAILURE(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load %struct.acpi_device*, %struct.acpi_device** @acpi_root, align 8
  store %struct.acpi_device* %24, %struct.acpi_device** %2, align 8
  br label %34

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @acpi_bus_get_device(i32* %26, %struct.acpi_device** %6)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  store %struct.acpi_device* %31, %struct.acpi_device** %2, align 8
  br label %34

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  br i1 true, label %12, label %34

34:                                               ; preds = %9, %18, %23, %30, %33
  %35 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  ret %struct.acpi_device* %35
}

declare dso_local i64 @acpi_get_parent(i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
