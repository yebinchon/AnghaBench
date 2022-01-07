; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_trim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_device*, i32* }

@ACPI_TYPE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_trim(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  store %struct.acpi_device* %13, %struct.acpi_device** %6, align 8
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %7, align 8
  br label %17

17:                                               ; preds = %73, %63, %56, %2
  %18 = load i64, i64* %11, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %22 = icmp ne %struct.acpi_device* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = phi i1 [ false, %20 ], [ false, %17 ], [ %26, %23 ]
  br i1 %28, label %29, label %74

29:                                               ; preds = %27
  %30 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @acpi_get_next_object(i32 %30, i32* %31, i32* %32, i32** %9)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %11, align 8
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @acpi_get_parent(i32* %41, i32** %8)
  %43 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  store %struct.acpi_device* %43, %struct.acpi_device** %7, align 8
  %44 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %45 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %44, i32 0, i32 0
  %46 = load %struct.acpi_device*, %struct.acpi_device** %45, align 8
  store %struct.acpi_device* %46, %struct.acpi_device** %6, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @acpi_bus_remove(%struct.acpi_device* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  br label %56

53:                                               ; preds = %37
  %54 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %55 = call i32 @acpi_bus_remove(%struct.acpi_device* %54, i32 1)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %53, %49
  br label %17

57:                                               ; preds = %29
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @acpi_get_type(i32* %58, i32* %10)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @ACPI_FAILURE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %17

64:                                               ; preds = %57
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @acpi_bus_get_device(i32* %65, %struct.acpi_device** %7)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* %11, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %11, align 8
  %71 = load i32*, i32** %9, align 8
  store i32* %71, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %72 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  store %struct.acpi_device* %72, %struct.acpi_device** %6, align 8
  br label %73

73:                                               ; preds = %68, %64
  br label %17

74:                                               ; preds = %27
  %75 = load i32, i32* %12, align 4
  ret i32 %75
}

declare dso_local i32 @acpi_get_next_object(i32, i32*, i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_parent(i32*, i32**) #1

declare dso_local i32 @acpi_bus_remove(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_get_type(i32*, i32*) #1

declare dso_local i64 @acpi_bus_get_device(i32*, %struct.acpi_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
