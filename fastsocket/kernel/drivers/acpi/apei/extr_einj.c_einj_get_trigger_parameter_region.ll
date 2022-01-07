; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_einj_get_trigger_parameter_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_einj.c_einj_get_trigger_parameter_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i32 }
%struct.acpi_einj_trigger = type { i32 }
%struct.acpi_whea_header = type { i64, i64, %struct.acpi_generic_address }

@ACPI_EINJ_TRIGGER_ERROR = common dso_local global i64 0, align 8
@ACPI_EINJ_WRITE_REGISTER_VALUE = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_generic_address* (%struct.acpi_einj_trigger*, i32, i32)* @einj_get_trigger_parameter_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_generic_address* @einj_get_trigger_parameter_region(%struct.acpi_einj_trigger* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_generic_address*, align 8
  %5 = alloca %struct.acpi_einj_trigger*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_whea_header*, align 8
  store %struct.acpi_einj_trigger* %0, %struct.acpi_einj_trigger** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %5, align 8
  %11 = bitcast %struct.acpi_einj_trigger* %10 to i8*
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  %13 = bitcast i8* %12 to %struct.acpi_whea_header*
  store %struct.acpi_whea_header* %13, %struct.acpi_whea_header** %9, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %56, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.acpi_einj_trigger*, %struct.acpi_einj_trigger** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_einj_trigger, %struct.acpi_einj_trigger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %14
  %21 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %22 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ACPI_EINJ_TRIGGER_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %28 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_EINJ_WRITE_REGISTER_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %34 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %52 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %51, i32 0, i32 2
  store %struct.acpi_generic_address* %52, %struct.acpi_generic_address** %4, align 8
  br label %60

53:                                               ; preds = %39, %32, %26, %20
  %54 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %55 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %54, i32 1
  store %struct.acpi_whea_header* %55, %struct.acpi_whea_header** %9, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %14

59:                                               ; preds = %14
  store %struct.acpi_generic_address* null, %struct.acpi_generic_address** %4, align 8
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %4, align 8
  ret %struct.acpi_generic_address* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
