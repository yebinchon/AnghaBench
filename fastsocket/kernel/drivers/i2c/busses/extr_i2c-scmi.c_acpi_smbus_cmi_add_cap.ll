; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_add_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.acpi_smbus_cmi = type { i32, i32, i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_4__ = type { %union.acpi_object* }
%struct.TYPE_5__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@smbus_methods = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Evaluating %s: %i\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid argument type\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"SMBus CMI Version %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported CMI method: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_smbus_cmi*, i8*)* @acpi_smbus_cmi_add_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_add_cap(%struct.acpi_smbus_cmi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_smbus_cmi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_smbus_cmi* %0, %struct.acpi_smbus_cmi** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %10 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %union.acpi_object*
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smbus_methods, i32 0, i32 2), align 4
  %17 = call i32 @strcmp(i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %2
  %20 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smbus_methods, i32 0, i32 2), align 4
  %24 = call i32 @acpi_evaluate_object(i32 %22, i32 %23, i32* null, %struct.acpi_buffer* %6)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smbus_methods, i32 0, i32 2), align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ACPI_ERROR(i32 %31)
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %37 = load %union.acpi_object*, %union.acpi_object** %36, align 8
  store %union.acpi_object* %37, %union.acpi_object** %7, align 8
  %38 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %39 = icmp ne %union.acpi_object* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %42 = bitcast %union.acpi_object* %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %48 = bitcast %union.acpi_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %union.acpi_object*, %union.acpi_object** %49, align 8
  store %union.acpi_object* %50, %union.acpi_object** %7, align 8
  br label %59

51:                                               ; preds = %40, %35
  %52 = load i32, i32* @AE_INFO, align 4
  %53 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.1 to i32))
  %54 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %55 = load %union.acpi_object*, %union.acpi_object** %54, align 8
  %56 = call i32 @kfree(%union.acpi_object* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %111

59:                                               ; preds = %46
  %60 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %61 = bitcast %union.acpi_object* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @AE_INFO, align 4
  %67 = call i32 @ACPI_ERROR(i32 ptrtoint ([22 x i8]* @.str.1 to i32))
  %68 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %69 = load %union.acpi_object*, %union.acpi_object** %68, align 8
  %70 = call i32 @kfree(%union.acpi_object* %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %111

73:                                               ; preds = %59
  %74 = load i32, i32* @ACPI_DB_INFO, align 4
  %75 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %76 = bitcast %union.acpi_object* %75 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ACPI_DEBUG_PRINT(i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %83 = load %union.acpi_object*, %union.acpi_object** %82, align 8
  %84 = call i32 @kfree(%union.acpi_object* %83)
  %85 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %110

87:                                               ; preds = %2
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smbus_methods, i32 0, i32 1), align 4
  %90 = call i32 @strcmp(i8* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %94 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %109

95:                                               ; preds = %87
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @smbus_methods, i32 0, i32 0), align 4
  %98 = call i32 @strcmp(i8* %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %4, align 8
  %102 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %101, i32 0, i32 2
  store i32 1, i32* %102, align 4
  br label %108

103:                                              ; preds = %95
  %104 = load i32, i32* @ACPI_DB_INFO, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = call i32 @ACPI_DEBUG_PRINT(i32 %106)
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108, %92
  br label %110

110:                                              ; preds = %109, %81
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %65, %51, %28
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
