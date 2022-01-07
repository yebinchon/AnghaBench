; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxfregn.c_acpi_install_address_space_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evxfregn.c_acpi_install_address_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_install_address_space_handler(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.acpi_namespace_node*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 (i32, i32, i32, i32, i8*)* @acpi_install_address_space_handler)
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %5
  %21 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %22 = call i32 @acpi_ut_acquire_mutex(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32 %30)
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %12, align 8
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %33 = icmp ne %struct.acpi_namespace_node* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %35, i32* %13, align 4
  br label %51

36:                                               ; preds = %29
  %37 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node* %37, i32 %38, i32 %39, i32 %40, i8* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %51

47:                                               ; preds = %36
  %48 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %12, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %47, %46, %34
  %52 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %53 = call i32 @acpi_ut_release_mutex(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (i32, i32, i32, i32, i8*)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_map_handle_to_node(i32) #1

declare dso_local i32 @acpi_ev_install_space_handler(%struct.acpi_namespace_node*, i32, i32, i32, i8*) #1

declare dso_local i32 @acpi_ev_execute_reg_methods(%struct.acpi_namespace_node*, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
