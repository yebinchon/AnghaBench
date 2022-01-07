; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_derive_pci_id_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_osl.c_acpi_os_derive_pci_id_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_id = type { i32, i32, i32 }

@ACPI_TYPE_DEVICE = common dso_local global i64 0, align 8
@METHOD_NAME__ADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.acpi_pci_id**, i32*, i32*)* @acpi_os_derive_pci_id_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_os_derive_pci_id_2(i64 %0, i64 %1, %struct.acpi_pci_id** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.acpi_pci_id**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_pci_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.acpi_pci_id** %2, %struct.acpi_pci_id*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.acpi_pci_id**, %struct.acpi_pci_id*** %8, align 8
  %18 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %17, align 8
  store %struct.acpi_pci_id* %18, %struct.acpi_pci_id** %12, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @acpi_get_parent(i64 %19, i64* %11)
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %104

24:                                               ; preds = %5
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  call void @acpi_os_derive_pci_id_2(i64 %25, i64 %26, %struct.acpi_pci_id** %12, i32* %27, i32* %28)
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @acpi_get_type(i64 %29, i64* %15)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @ACPI_FAILURE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @ACPI_TYPE_DEVICE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %24
  br label %104

39:                                               ; preds = %34
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @METHOD_NAME__ADR, align 4
  %42 = call i32 @acpi_evaluate_integer(i64 %40, i32 %41, i32* null, i64* %14)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @ACPI_SUCCESS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %39
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @ACPI_LODWORD(i64 %47)
  %49 = call i32 @ACPI_HIWORD(i32 %48)
  %50 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %51 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @ACPI_LODWORD(i64 %52)
  %54 = call i32 @ACPI_LOWORD(i32 %53)
  %55 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %56 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %64 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %46
  %66 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %67 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %66, i32 14, i32* %16, i32 8)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i64 @ACPI_SUCCESS(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %65
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, 127
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %16, align 4
  %77 = and i32 %76, 127
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %100

79:                                               ; preds = %75, %71
  %80 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %81 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %80, i32 24, i32* %16, i32 8)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @ACPI_SUCCESS(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %104

86:                                               ; preds = %79
  %87 = load i32*, i32** %9, align 8
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %90 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %12, align 8
  %92 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %91, i32 25, i32* %16, i32 8)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i64 @ACPI_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %86
  br label %102

100:                                              ; preds = %75, %65
  %101 = load i32*, i32** %9, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %99
  br label %103

103:                                              ; preds = %102, %39
  br label %104

104:                                              ; preds = %38, %85, %103, %5
  ret void
}

declare dso_local i32 @acpi_get_parent(i64, i64*) #1

declare dso_local i32 @acpi_get_type(i64, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i64, i32, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_HIWORD(i32) #1

declare dso_local i32 @ACPI_LODWORD(i64) #1

declare dso_local i32 @ACPI_LOWORD(i32) #1

declare dso_local i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
