; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_ec_parse_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_ec.c_ec_parse_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i64, i64, i32, i64, i64 }

@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@ec_parse_io_ports = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GPE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_GLK\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @ec_parse_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_parse_device(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_ec*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.acpi_ec*
  store %struct.acpi_ec* %14, %struct.acpi_ec** %12, align 8
  %15 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %18 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @METHOD_NAME__CRS, align 4
  %21 = load i32, i32* @ec_parse_io_ports, align 4
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %23 = call i32 @acpi_walk_resources(i32 %19, i32 %20, i32 %21, %struct.acpi_ec* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @acpi_evaluate_integer(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %11)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %40 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i64 0, i64* %11, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @acpi_evaluate_integer(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, i64* %11)
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %45 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.acpi_ec*, %struct.acpi_ec** %12, align 8
  %48 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %37, %35, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @acpi_walk_resources(i32, i32, i32, %struct.acpi_ec*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
