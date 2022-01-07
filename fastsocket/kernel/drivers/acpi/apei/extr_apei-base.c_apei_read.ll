; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_read(i64* %0, %struct.acpi_generic_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %5, align 8
  %10 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %11 = call i32 @apei_check_gar(%struct.acpi_generic_address* %10, i64* %8, i32* %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i64*, i64** %4, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %47 [
    i32 128, label %21
    i32 129, label %34
  ]

21:                                               ; preds = %16
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64*, i64** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @acpi_os_read_memory(i32 %23, i64* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %21
  br label %50

34:                                               ; preds = %16
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = bitcast i64* %36 to i32*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @acpi_os_read_port(i64 %35, i32* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %34
  br label %50

47:                                               ; preds = %16
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %46, %33
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %43, %30, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @apei_check_gar(%struct.acpi_generic_address*, i64*, i32*) #1

declare dso_local i32 @acpi_os_read_memory(i32, i64*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_read_port(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
