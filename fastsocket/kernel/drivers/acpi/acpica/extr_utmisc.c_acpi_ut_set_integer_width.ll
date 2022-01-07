; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_set_integer_width.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_set_integer_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_integer_bit_width = common dso_local global i32 0, align 4
@acpi_gbl_integer_nybble_width = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_set_integer_width(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 32, i32* @acpi_gbl_integer_bit_width, align 4
  store i32 8, i32* @acpi_gbl_integer_nybble_width, align 4
  store i32 4, i32* @acpi_gbl_integer_byte_width, align 4
  br label %7

6:                                                ; preds = %1
  store i32 64, i32* @acpi_gbl_integer_bit_width, align 4
  store i32 16, i32* @acpi_gbl_integer_nybble_width, align 4
  store i32 8, i32* @acpi_gbl_integer_byte_width, align 4
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
