; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_check_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_device_status, %struct.TYPE_2__* }
%struct.acpi_device_status = type { i64 }
%struct.TYPE_2__ = type { %struct.acpi_device_status }

@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Device insertion detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Device removal detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @acpi_bus_check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_check_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device_status, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @acpi_bus_get_device(i32 %6, %struct.acpi_device** %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %12 = icmp ne %struct.acpi_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %85

14:                                               ; preds = %10
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = bitcast %struct.acpi_device_status* %5 to i8*
  %18 = bitcast %struct.acpi_device_status* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %14
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %23
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %35 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = bitcast %struct.acpi_device_status* %33 to i8*
  %39 = bitcast %struct.acpi_device_status* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  br label %85

40:                                               ; preds = %23, %14
  %41 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %42 = call i32 @acpi_bus_get_status(%struct.acpi_device* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %85

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @STRUCT_TO_INT(i64 %49)
  %51 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %52 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @STRUCT_TO_INT(i64 %54)
  %56 = icmp eq i64 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %85

58:                                               ; preds = %47
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %5, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ACPI_DB_INFO, align 4
  %70 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([27 x i8]* @.str to i32))
  br label %85

71:                                               ; preds = %64, %58
  %72 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.acpi_device_status, %struct.acpi_device_status* %5, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @ACPI_DB_INFO, align 4
  %83 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([25 x i8]* @.str.1 to i32))
  br label %84

84:                                               ; preds = %81, %77, %71
  br label %85

85:                                               ; preds = %9, %13, %31, %46, %57, %84, %68
  ret void
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @acpi_bus_get_status(%struct.acpi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @STRUCT_TO_INT(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
