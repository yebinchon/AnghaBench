; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_esimple_to_isimple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_esimple_to_isimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@ut_copy_esimple_to_isimple = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unsupported object type, cannot convert to internal object: %s\00", align 1
@AE_SUPPORT = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_REFCLASS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_object*, %union.acpi_operand_object**)* @acpi_ut_copy_esimple_to_isimple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_copy_esimple_to_isimple(%union.acpi_object* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_object* %0, %union.acpi_object** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %7 = load i32, i32* @ut_copy_esimple_to_isimple, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %10 = bitcast %union.acpi_object* %9 to i32*
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %27 [
    i32 128, label %12
    i32 131, label %12
    i32 130, label %12
    i32 129, label %12
    i32 132, label %23
  ]

12:                                               ; preds = %2, %2, %2, %2
  %13 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %14 = bitcast %union.acpi_object* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %15)
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %6, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %18 = icmp ne %union.acpi_operand_object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @AE_NO_MEMORY, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %19, %12
  br label %36

23:                                               ; preds = %2
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %24, align 8
  %25 = load i32, i32* @AE_OK, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %2, %23
  %28 = load i32, i32* @AE_INFO, align 4
  %29 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %30 = bitcast %union.acpi_object* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @acpi_ut_get_type_name(i32 %31)
  %33 = call i32 @ACPI_ERROR(i32 %32)
  %34 = load i32, i32* @AE_SUPPORT, align 4
  %35 = call i32 @return_ACPI_STATUS(i32 %34)
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %38 = bitcast %union.acpi_object* %37 to i32*
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %139 [
    i32 128, label %40
    i32 131, label %77
    i32 130, label %119
    i32 129, label %127
  ]

40:                                               ; preds = %36
  %41 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_10__*
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i8* @ACPI_ALLOCATE_ZEROED(i32 %45)
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i8* %46, i8** %49, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  br label %145

56:                                               ; preds = %40
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %66 = bitcast %union.acpi_object* %65 to %struct.TYPE_10__*
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ACPI_MEMCPY(i8* %60, i32 %64, i32 %68)
  %70 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %140

77:                                               ; preds = %36
  %78 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %79 = bitcast %union.acpi_object* %78 to %struct.TYPE_11__*
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ACPI_ALLOCATE_ZEROED(i32 %81)
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_12__*
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_12__*
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %77
  br label %145

92:                                               ; preds = %77
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_12__*
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %98 = bitcast %union.acpi_object* %97 to %struct.TYPE_11__*
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %102 = bitcast %union.acpi_object* %101 to %struct.TYPE_11__*
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ACPI_MEMCPY(i8* %96, i32 %100, i32 %104)
  %106 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %107 = bitcast %union.acpi_object* %106 to %struct.TYPE_11__*
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_12__*
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_12__*
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 8
  br label %140

119:                                              ; preds = %36
  %120 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %121 = bitcast %union.acpi_object* %120 to %struct.TYPE_14__*
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_13__*
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  br label %140

127:                                              ; preds = %36
  %128 = load i32, i32* @ACPI_REFCLASS_NAME, align 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_15__*
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %133 = bitcast %union.acpi_object* %132 to %struct.TYPE_16__*
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.TYPE_15__*
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  br label %140

139:                                              ; preds = %36
  br label %140

140:                                              ; preds = %139, %127, %119, %92, %56
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %142 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  store %union.acpi_operand_object* %141, %union.acpi_operand_object** %142, align 8
  %143 = load i32, i32* @AE_OK, align 4
  %144 = call i32 @return_ACPI_STATUS(i32 %143)
  br label %145

145:                                              ; preds = %140, %91, %55
  %146 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %147 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %146)
  %148 = load i32, i32* @AE_NO_MEMORY, align 4
  %149 = call i32 @return_ACPI_STATUS(i32 %148)
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i8* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_MEMCPY(i8*, i32, i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
