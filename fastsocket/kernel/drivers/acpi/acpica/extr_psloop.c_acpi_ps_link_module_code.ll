; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_link_module_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_psloop.c_acpi_ps_link_module_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.acpi_operand_object*, i32, i32, i32* }

@acpi_gbl_module_code_list = common dso_local global %union.acpi_operand_object* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@AOPOBJ_MODULE_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @acpi_ps_link_module_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ps_link_module_code(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** @acpi_gbl_module_code_list, align 8
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %10, %union.acpi_operand_object** %7, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %13 = icmp ne %union.acpi_operand_object* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %15, %union.acpi_operand_object** %7, align 8
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %18, align 8
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %8, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %22 = icmp ne %union.acpi_operand_object* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_2__*
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32*, i32** %4, align 8
  %35 = icmp ne i32* %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %23, %20
  %37 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %38 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %37)
  store %union.acpi_operand_object* %38, %union.acpi_operand_object** %9, align 8
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %40 = icmp ne %union.acpi_operand_object* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %78

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32* %43, i32** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @AOPOBJ_MODULE_LEVEL, align 4
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %62 = icmp ne %union.acpi_operand_object* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %42
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %64, %union.acpi_operand_object** @acpi_gbl_module_code_list, align 8
  br label %70

65:                                               ; preds = %42
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %68 = bitcast %union.acpi_operand_object* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store %union.acpi_operand_object* %66, %union.acpi_operand_object** %69, align 8
  br label %70

70:                                               ; preds = %65, %63
  br label %78

71:                                               ; preds = %23
  %72 = load i32, i32* %5, align 4
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %72
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %41, %71, %70
  ret void
}

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
