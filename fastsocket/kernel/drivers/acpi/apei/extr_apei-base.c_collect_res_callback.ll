; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_collect_res_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_collect_res_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_whea_header = type { i64, %struct.acpi_generic_address }
%struct.acpi_generic_address = type { i32 }
%struct.apei_resources = type { i32, i32 }

@APEI_EXEC_INS_ACCESS_REGISTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apei_exec_context*, %struct.acpi_whea_header*, i8*)* @collect_res_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_res_callback(%struct.apei_exec_context* %0, %struct.acpi_whea_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apei_exec_context*, align 8
  %6 = alloca %struct.acpi_whea_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.apei_resources*, align 8
  %9 = alloca %struct.acpi_generic_address*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.apei_exec_context* %0, %struct.apei_exec_context** %5, align 8
  store %struct.acpi_whea_header* %1, %struct.acpi_whea_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.apei_resources*
  store %struct.apei_resources* %15, %struct.apei_resources** %8, align 8
  %16 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %16, i32 0, i32 1
  store %struct.acpi_generic_address* %17, %struct.acpi_generic_address** %9, align 8
  %18 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.apei_exec_context*, %struct.apei_exec_context** %5, align 8
  %22 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @APEI_EXEC_INS_ACCESS_REGISTER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

32:                                               ; preds = %3
  %33 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %9, align 8
  %34 = call i32 @apei_check_gar(%struct.acpi_generic_address* %33, i32* %12, i32* %11)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %32
  %40 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %57 [
    i32 128, label %43
    i32 129, label %50
  ]

43:                                               ; preds = %39
  %44 = load %struct.apei_resources*, %struct.apei_resources** %8, align 8
  %45 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %44, i32 0, i32 1
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %47, 8
  %49 = call i32 @apei_res_add(i32* %45, i32 %46, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %39
  %51 = load %struct.apei_resources*, %struct.apei_resources** %8, align 8
  %52 = getelementptr inbounds %struct.apei_resources, %struct.apei_resources* %51, i32 0, i32 0
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sdiv i32 %54, 8
  %56 = call i32 @apei_res_add(i32* %52, i32 %53, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %39
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %50, %43, %37, %31
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @apei_check_gar(%struct.acpi_generic_address*, i32*, i32*) #1

declare dso_local i32 @apei_res_add(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
