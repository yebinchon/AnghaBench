; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_install_region_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evregion.c_acpi_ev_install_region_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_install_region_handlers = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_NUM_DEFAULT_SPACES = common dso_local global i64 0, align 8
@acpi_gbl_root_node = common dso_local global i32 0, align 4
@acpi_gbl_default_address_spaces = common dso_local global i32* null, align 8
@ACPI_DEFAULT_HANDLER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_install_region_handlers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @ev_install_region_handlers, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %7 = call i32 @acpi_ut_acquire_mutex(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @return_ACPI_STATUS(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  store i64 0, i64* %3, align 8
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @ACPI_NUM_DEFAULT_SPACES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* @acpi_gbl_root_node, align 4
  %21 = load i32*, i32** @acpi_gbl_default_address_spaces, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_DEFAULT_HANDLER, align 4
  %26 = call i32 @acpi_ev_install_space_handler(i32 %20, i32 %24, i32 %25, i32* null, i32* null)
  store i32 %26, i32* %2, align 4
  %27 = load i32, i32* %2, align 4
  switch i32 %27, label %29 [
    i32 129, label %28
    i32 128, label %28
    i32 130, label %28
  ]

28:                                               ; preds = %19, %19, %19
  store i32 129, i32* %2, align 4
  br label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %37 = call i32 @acpi_ut_release_mutex(i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_install_space_handler(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
