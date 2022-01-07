; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psargs.c_acpi_ps_get_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.acpi_parse_state = type { i32, i32 }

@ps_get_next_field = common dso_local global i32 0, align 4
@ACPI_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.acpi_parse_object* (%struct.acpi_parse_state*)* @acpi_ps_get_next_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.acpi_parse_object* @acpi_ps_get_next_field(%struct.acpi_parse_state* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  %3 = alloca %struct.acpi_parse_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %3, align 8
  %8 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ACPI_PTR_DIFF(i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @ps_get_next_field, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ACPI_GET8(i32 %19)
  switch i32 %20, label %21 [
    i32 0, label %22
    i32 1, label %27
  ]

21:                                               ; preds = %1
  store i32 129, i32* %6, align 4
  br label %32

22:                                               ; preds = %1
  store i32 128, i32* %6, align 4
  %23 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %32

27:                                               ; preds = %1
  store i32 130, i32* %6, align 4
  %28 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %22, %21
  %33 = load i32, i32* %6, align 4
  %34 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %33)
  store %union.acpi_parse_object* %34, %union.acpi_parse_object** %5, align 8
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %36 = icmp ne %union.acpi_parse_object* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call i32 @return_PTR(%union.acpi_parse_object* null)
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %4, align 4
  %41 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %42 = bitcast %union.acpi_parse_object* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %99 [
    i32 129, label %45
    i32 128, label %64
    i32 130, label %71
  ]

45:                                               ; preds = %39
  %46 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ACPI_MOVE_32_TO_32(i32* %7, i32 %48)
  %50 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @acpi_ps_set_name(%union.acpi_parse_object* %50, i32 %51)
  %53 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %54 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %59 = call i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %58)
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %61 = bitcast %union.acpi_parse_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  br label %100

64:                                               ; preds = %39
  %65 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %66 = call i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state* %65)
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %68 = bitcast %union.acpi_parse_object* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %66, i8** %70, align 8
  br label %100

71:                                               ; preds = %39
  %72 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ACPI_GET8(i32 %74)
  %76 = shl i32 %75, 8
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %78 = bitcast %union.acpi_parse_object* %77 to %struct.TYPE_4__*
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %82 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %86 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ACPI_GET8(i32 %87)
  %89 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %90 = bitcast %union.acpi_parse_object* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %3, align 8
  %96 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %100

99:                                               ; preds = %39
  br label %100

100:                                              ; preds = %99, %71, %64, %45
  %101 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %102 = call i32 @return_PTR(%union.acpi_parse_object* %101)
  %103 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  ret %union.acpi_parse_object* %103
}

declare dso_local i32 @ACPI_PTR_DIFF(i32, i32) #1

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_GET8(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32) #1

declare dso_local i32 @return_PTR(%union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32) #1

declare dso_local i32 @acpi_ps_set_name(%union.acpi_parse_object*, i32) #1

declare dso_local i8* @acpi_ps_get_next_package_length(%struct.acpi_parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
