; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_initialize_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_walk_info = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@ns_initialize_devices = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Initializing Device/Processor/Thermal objects by executing _INI methods:\00", align 1
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@acpi_ns_find_ini_methods = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@METHOD_NAME__INI = common dso_local global i32 0, align 4
@ACPI_IGNORE_RETURN_VALUE = common dso_local global i32 0, align 4
@acpi_ns_init_one_device = common dso_local global i32 0, align 4
@acpi_gbl_osi_data = common dso_local global i64 0, align 8
@ACPI_OSI_WIN_2000 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_truncate_io_addresses = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"\0AExecuted %hd _INI methods requiring %hd _STA executions (examined %hd objects)\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"During device initialization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_initialize_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device_walk_info, align 8
  %4 = load i32, i32* @ns_initialize_devices, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @ACPI_DB_INIT, align 4
  %10 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([73 x i8]* @.str to i32))
  %11 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %12 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %13 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32, i32* @acpi_ns_find_ini_methods, align 4
  %16 = call i32 @acpi_ns_walk_namespace(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, %struct.acpi_device_walk_info* %3, i32* null)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  br label %87

21:                                               ; preds = %0
  %22 = call %struct.TYPE_4__* @ACPI_ALLOCATE_ZEROED(i32 4)
  %23 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %23, align 8
  %24 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %28, i32* %2, align 4
  br label %87

29:                                               ; preds = %21
  %30 = load i32, i32* @acpi_gbl_root_node, align 4
  %31 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @METHOD_NAME__INI, align 4
  %35 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @ACPI_IGNORE_RETURN_VALUE, align 4
  %42 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @acpi_ns_evaluate(%struct.TYPE_4__* %46)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @ACPI_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %51, %29
  %56 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %57 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %58 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @acpi_ns_init_one_device, align 4
  %61 = call i32 @acpi_ns_walk_namespace(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, %struct.acpi_device_walk_info* %3, i32* null)
  store i32 %61, i32* %2, align 4
  %62 = load i64, i64* @acpi_gbl_osi_data, align 8
  %63 = load i64, i64* @ACPI_OSI_WIN_2000, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* @acpi_gbl_truncate_io_addresses, align 4
  br label %67

67:                                               ; preds = %65, %55
  %68 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @ACPI_FREE(%struct.TYPE_4__* %69)
  %71 = load i32, i32* %2, align 4
  %72 = call i64 @ACPI_FAILURE(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %87

75:                                               ; preds = %67
  %76 = load i32, i32* @ACPI_DB_INIT, align 4
  %77 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.acpi_device_walk_info, %struct.acpi_device_walk_info* %3, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @return_ACPI_STATUS(i32 %85)
  br label %87

87:                                               ; preds = %75, %74, %27, %20
  %88 = load i32, i32* @AE_INFO, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([29 x i8]* @.str.2 to i32))
  %91 = load i32, i32* %2, align 4
  %92 = call i32 @return_ACPI_STATUS(i32 %91)
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, i32, i32, i32, i32, %struct.acpi_device_walk_info*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_4__* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @acpi_ns_evaluate(%struct.TYPE_4__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_4__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
