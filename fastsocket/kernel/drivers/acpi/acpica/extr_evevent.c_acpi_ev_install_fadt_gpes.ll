; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_install_fadt_gpes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evevent.c_acpi_ev_install_fadt_gpes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ev_install_fadt_gpes = common dso_local global i32 0, align 4
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@acpi_gbl_fadt_gpe_device = common dso_local global i32 0, align 4
@acpi_gbl_gpe_fadt_blocks = common dso_local global i32* null, align 8
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_install_fadt_gpes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ev_install_fadt_gpes, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 %3)
  %5 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %6 = call i32 @acpi_ut_acquire_mutex(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ACPI_FAILURE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %27

12:                                               ; preds = %0
  %13 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %14 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @acpi_ev_initialize_gpe_block(i32 %13, i32 %16)
  %18 = load i32, i32* @acpi_gbl_fadt_gpe_device, align 4
  %19 = load i32*, i32** @acpi_gbl_gpe_fadt_blocks, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_ev_initialize_gpe_block(i32 %18, i32 %21)
  %23 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %24 = call i32 @acpi_ut_release_mutex(i32 %23)
  %25 = load i32, i32* @AE_OK, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %12, %10
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ev_initialize_gpe_block(i32, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
